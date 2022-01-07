
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int u_short ;
typedef int u_char ;
struct seq_softc {int unit; int seq_lock; int music; } ;
typedef TYPE_4__* kobj_t ;
struct TYPE_12__ {size_t max_voice; int* map; } ;
struct TYPE_13__ {int (* bender ) (TYPE_4__*,int,int) ;int vc_mtx; TYPE_2__ alloc; TYPE_1__* chn_info; } ;
struct TYPE_14__ {TYPE_3__ synth; int midiunit; } ;
struct TYPE_11__ {int bender_value; } ;


 int EAGAIN ;



 int QUEUEFULL ;
 int SEQ_DEBUG (int,int ) ;
 int SYNTH_BENDER (TYPE_4__*,int,int) ;
 int SYNTH_CONTROLLER (TYPE_4__*,int,int,int) ;
 int SYNTH_SETINSTR (TYPE_4__*,int,int) ;
 int cmdtab_seqccmn ;
 size_t i ;
 int key ;
 char* midi_cmdname (int,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int,...) ;
 int stub1 (TYPE_4__*,size_t,int) ;
 int stub2 (TYPE_4__*,int,int) ;

__attribute__((used)) static int
seq_chncommon(struct seq_softc *scp, kobj_t md, u_char *event)
{
 int ret;
 u_short w14;
 u_char cmd, chn, p1;

 ret = 0;
 cmd = event[2];
 chn = event[3];
 p1 = event[4];
 w14 = *(u_short *)&event[6];

 SEQ_DEBUG(5, printf("seq_chncommon: unit %d, dev %d, cmd %s, chn %d,"
     " p1 %d, w14 %d.\n", scp->unit, event[1],
     midi_cmdname(cmd, cmdtab_seqccmn), chn, p1, w14));
 mtx_unlock(&scp->seq_lock);
 switch (cmd) {
 case 129:
  SEQ_DEBUG(4, printf("seq_chncommon pgmchn chn %d pg %d\n",
      chn, p1));
  SYNTH_SETINSTR(md, chn, p1);
  break;
 case 130:
  SEQ_DEBUG(4, printf("seq_chncommon ctlch chn %d pg %d %d\n",
      chn, p1, w14));
  SYNTH_CONTROLLER(md, chn, p1, w14);
  break;
 case 128:
  if (scp->music) {
  } else
   SYNTH_BENDER(md, chn, w14);
  break;
 default:
  ret = 1;
  SEQ_DEBUG(2,
      printf("seq_chncommon event type %d not handled.\n",
      event[1]));
  break;

 }
 mtx_lock(&scp->seq_lock);
 return ret;
}
