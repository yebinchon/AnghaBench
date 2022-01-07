
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_type {int refs; } ;


 int EBUSY ;
 int LIST_REMOVE (struct ng_type*,int ) ;
 int TRAP_ERROR () ;
 int TYPELIST_WLOCK () ;
 int TYPELIST_WUNLOCK () ;
 int types ;

int
ng_rmtype(struct ng_type *tp)
{

 if (tp->refs != 1) {
  TRAP_ERROR();
  return (EBUSY);
 }


 TYPELIST_WLOCK();
 LIST_REMOVE(tp, types);
 TYPELIST_WUNLOCK();
 return (0);
}
