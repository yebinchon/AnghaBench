
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pqisrc_softstate {int dummy; } ;
struct mtx {int dummy; } ;


 int MTX_SPIN ;
 int mtx_init (struct mtx*,char*,int *,int ) ;

int os_init_spinlock(struct pqisrc_softstate *softs, struct mtx *lock,
   char *lockname)
{
    mtx_init(lock, lockname, ((void*)0), MTX_SPIN);
    return 0;

}
