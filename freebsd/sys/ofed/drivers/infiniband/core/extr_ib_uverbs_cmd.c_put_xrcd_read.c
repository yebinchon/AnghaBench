
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {int dummy; } ;


 int put_uobj_read (struct ib_uobject*) ;

__attribute__((used)) static void put_xrcd_read(struct ib_uobject *uobj)
{
 put_uobj_read(uobj);
}
