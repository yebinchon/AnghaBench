
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hhook_head {int hhh_refcount; } ;


 int EBUSY ;
 int ENOENT ;
 int HHHLIST_LOCK () ;
 int HHHLIST_UNLOCK () ;
 int hhook_head_destroy (struct hhook_head*) ;

int
hhook_head_deregister(struct hhook_head *hhh)
{
 int error;

 error = 0;

 HHHLIST_LOCK();
 if (hhh == ((void*)0))
  error = ENOENT;
 else if (hhh->hhh_refcount > 1)
  error = EBUSY;
 else
  hhook_head_destroy(hhh);
 HHHLIST_UNLOCK();

 return (error);
}
