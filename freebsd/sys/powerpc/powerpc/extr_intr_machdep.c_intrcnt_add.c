
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;


 int KASSERT (int,char*) ;
 int atomic_fetchadd_int (int *,int) ;
 int * intrcnt ;
 int intrcnt_index ;
 int intrcnt_setname (char const*,int) ;
 int nintrcnt ;

void
intrcnt_add(const char *name, u_long **countp)
{
 int idx;

 idx = atomic_fetchadd_int(&intrcnt_index, 1);
 KASSERT(idx < nintrcnt, ("intrcnt_add: Interrupt counter index %d/%d"
  "reached nintrcnt : %d", intrcnt_index, idx, nintrcnt));
 *countp = &intrcnt[idx];
 intrcnt_setname(name, idx);
}
