
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdevsw {int d_flags; struct cdevsw* d_gianttrick; } ;


 int D_INIT ;
 int cdevsw_free_devlocked (struct cdevsw*) ;
 int memcpy (struct cdevsw*,struct cdevsw*,int) ;

__attribute__((used)) static void
fini_cdevsw(struct cdevsw *devsw)
{
 struct cdevsw *gt;

 if (devsw->d_gianttrick != ((void*)0)) {
  gt = devsw->d_gianttrick;
  memcpy(devsw, gt, sizeof *devsw);
  cdevsw_free_devlocked(gt);
  devsw->d_gianttrick = ((void*)0);
 }
 devsw->d_flags &= ~D_INIT;
}
