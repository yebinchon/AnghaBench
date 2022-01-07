
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lock_object {int dummy; } ;


 int LI_NORELEASE ;
 int witness_setflag (struct lock_object*,int ,int ) ;

void
witness_releaseok(struct lock_object *lock)
{

 witness_setflag(lock, LI_NORELEASE, 0);
}
