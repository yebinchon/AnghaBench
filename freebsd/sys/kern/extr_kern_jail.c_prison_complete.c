
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct prison {scalar_t__ pr_uref; int pr_mtx; } ;


 int PD_DEREF ;
 int PD_DEUREF ;
 int PD_LIST_XLOCKED ;
 int PD_LOCKED ;
 int allprison_lock ;
 int mtx_lock (int *) ;
 int prison_deref (struct prison*,int) ;
 int sx_xlock (int *) ;

__attribute__((used)) static void
prison_complete(void *context, int pending)
{
 struct prison *pr = context;

 sx_xlock(&allprison_lock);
 mtx_lock(&pr->pr_mtx);
 prison_deref(pr, pr->pr_uref
     ? PD_DEREF | PD_DEUREF | PD_LOCKED | PD_LIST_XLOCKED
     : PD_LOCKED | PD_LIST_XLOCKED);
}
