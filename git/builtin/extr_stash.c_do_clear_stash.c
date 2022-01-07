
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int delete_ref (int *,int ,struct object_id*,int ) ;
 scalar_t__ get_oid (int ,struct object_id*) ;
 int ref_stash ;

__attribute__((used)) static int do_clear_stash(void)
{
 struct object_id obj;
 if (get_oid(ref_stash, &obj))
  return 0;

 return delete_ref(((void*)0), ref_stash, &obj, 0);
}
