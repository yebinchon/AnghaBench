
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct seq_softc {int unit; int seq_lock; int music; } ;
typedef int kobj_t ;


 int MA_OWNED ;



 int SEQ_DEBUG (int,int ) ;
 int SYNTH_AFTERTOUCH (int ,int,int) ;
 int SYNTH_ALLOC (int ,int,int) ;
 int SYNTH_KILLNOTE (int ,int,int,int) ;
 int SYNTH_STARTNOTE (int ,int,int,int) ;
 int cmdtab_seqcv ;
 char* midi_cmdname (int,int ) ;
 int mtx_assert (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,...) ;

__attribute__((used)) static int
seq_chnvoice(struct seq_softc *scp, kobj_t md, u_char *event)
{
 int ret, voice;
 u_char cmd, chn, note, parm;

 ret = 0;
 cmd = event[2];
 chn = event[3];
 note = event[4];
 parm = event[5];

 mtx_assert(&scp->seq_lock, MA_OWNED);

 SEQ_DEBUG(5, printf("seq_chnvoice: unit %d, dev %d, cmd %s,"
     " chn %d, note %d, parm %d.\n", scp->unit, event[1],
     midi_cmdname(cmd, cmdtab_seqcv), chn, note, parm));

 voice = SYNTH_ALLOC(md, chn, note);

 mtx_unlock(&scp->seq_lock);

 switch (cmd) {
 case 128:
  if (note < 128 || note == 255) {
   if (scp->music) {
   }
   SYNTH_STARTNOTE(md, voice, note, parm);
  }
  break;
 case 129:
  SYNTH_KILLNOTE(md, voice, note, parm);
  break;
 case 130:
  SYNTH_AFTERTOUCH(md, voice, parm);
  break;
 default:
  ret = 1;
  SEQ_DEBUG(2, printf("seq_chnvoice event type %d not handled\n",
      event[1]));
  break;
 }

 mtx_lock(&scp->seq_lock);
 return ret;
}
