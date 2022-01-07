
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {int mutex; } ;


 int put_uobj (struct ib_uobject*) ;
 int up_write (int *) ;

__attribute__((used)) static void put_uobj_write(struct ib_uobject *uobj)
{
 up_write(&uobj->mutex);
 put_uobj(uobj);
}
