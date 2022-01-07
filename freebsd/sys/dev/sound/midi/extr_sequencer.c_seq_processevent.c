
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct seq_softc {int seq_lock; } ;
typedef int kobj_t ;




 int EV_SEQ_LOCAL ;

 int EV_TIMING ;
 int SEQ_DEBUG (int,int ) ;

 int SYNTH_WRITERAW (int ,int*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,int) ;
 int seq_chncommon (struct seq_softc*,int ,int*) ;
 int seq_chnvoice (struct seq_softc*,int ,int*) ;
 scalar_t__ seq_fetch_mid (struct seq_softc*,int,int *) ;
 int seq_local (struct seq_softc*,int*) ;
 int seq_sysex (struct seq_softc*,int ,int*) ;
 int seq_timing (struct seq_softc*,int*) ;

__attribute__((used)) static int
seq_processevent(struct seq_softc *scp, u_char *event)
{
 int ret;
 kobj_t m;

 ret = 0;

 if (event[0] == EV_SEQ_LOCAL)
  ret = seq_local(scp, event);
 else if (event[0] == EV_TIMING)
  ret = seq_timing(scp, event);
 else if (event[0] != 130 &&
      event[0] != 131 &&
      event[0] != 129 &&
     event[0] != 128) {
  ret = 1;
  SEQ_DEBUG(2, printf("seq_processevent not known %d\n",
      event[0]));
 } else if (seq_fetch_mid(scp, event[1], &m) != 0) {
  ret = 1;
  SEQ_DEBUG(2, printf("seq_processevent midi unit not found %d\n",
      event[1]));
 } else
  switch (event[0]) {
  case 130:
   ret = seq_chnvoice(scp, m, event);
   break;
  case 131:
   ret = seq_chncommon(scp, m, event);
   break;
  case 129:
   ret = seq_sysex(scp, m, event);
   break;
  case 128:
   mtx_unlock(&scp->seq_lock);
   ret = SYNTH_WRITERAW(m, &event[2], 1);
   mtx_lock(&scp->seq_lock);
   break;
  }
 return ret;
}
