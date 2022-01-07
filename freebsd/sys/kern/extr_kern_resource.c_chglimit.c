
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uidinfo {int ui_uid; } ;
typedef long rlim_t ;


 int atomic_fetchadd_long (long*,long) ;
 int atomic_subtract_long (long*,long) ;
 int printf (char*,char const*,int) ;

__attribute__((used)) static inline int
chglimit(struct uidinfo *uip, long *limit, int diff, rlim_t max, const char *name)
{
 long new;


 new = atomic_fetchadd_long(limit, (long)diff) + diff;
 if (diff > 0 && max != 0) {
  if (new < 0 || new > max) {
   atomic_subtract_long(limit, (long)diff);
   return (0);
  }
 } else if (new < 0)
  printf("negative %s for uid = %d\n", name, uip->ui_uid);
 return (1);
}
