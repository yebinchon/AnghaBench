
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_uobject {int ref; } ;


 int kref_put (int *,int ) ;
 int release_uobj ;

__attribute__((used)) static void put_uobj(struct ib_uobject *uobj)
{
 kref_put(&uobj->ref, release_uobj);
}
