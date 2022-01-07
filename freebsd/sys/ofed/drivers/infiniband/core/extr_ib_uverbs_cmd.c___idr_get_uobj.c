
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct idr {int dummy; } ;
struct ib_uobject {int ref; struct ib_ucontext* context; } ;
struct ib_ucontext {int dummy; } ;


 struct ib_uobject* idr_find (struct idr*,int) ;
 int kref_get (int *) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;

__attribute__((used)) static struct ib_uobject *__idr_get_uobj(struct idr *idr, int id,
      struct ib_ucontext *context)
{
 struct ib_uobject *uobj;

 rcu_read_lock();
 uobj = idr_find(idr, id);
 if (uobj) {
  if (uobj->context == context)
   kref_get(&uobj->ref);
  else
   uobj = ((void*)0);
 }
 rcu_read_unlock();

 return uobj;
}
