
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csa_info {int dummy; } ;
struct csa_chinfo {scalar_t__ dir; struct csa_info* parent; } ;
typedef int kobj_t ;


 scalar_t__ PCMDIR_PLAY ;
 int PCMTRIG_COMMON (int) ;
 int PCMTRIG_START ;
 int csa_active (struct csa_info*,int) ;
 int csa_setupchan (struct csa_chinfo*) ;
 int csa_startcapturedma (struct csa_info*) ;
 int csa_startplaydma (struct csa_info*) ;
 int csa_stopcapturedma (struct csa_info*) ;
 int csa_stopplaydma (struct csa_info*) ;

__attribute__((used)) static int
csachan_trigger(kobj_t obj, void *data, int go)
{
 struct csa_chinfo *ch = data;
 struct csa_info *csa = ch->parent;

 if (!PCMTRIG_COMMON(go))
  return 0;

 if (go == PCMTRIG_START) {
  csa_active(csa, 1);
  csa_setupchan(ch);
  if (ch->dir == PCMDIR_PLAY)
   csa_startplaydma(csa);
  else
   csa_startcapturedma(csa);
 } else {
  if (ch->dir == PCMDIR_PLAY)
   csa_stopplaydma(csa);
  else
   csa_stopcapturedma(csa);
  csa_active(csa, -1);
 }
 return 0;
}
