
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int null_oid ;
 int oid_to_hex (int *) ;
 int run_hook_le (int *,char*,int ,int ,char*,int *) ;

__attribute__((used)) static int post_checkout_hook(struct commit *old_commit, struct commit *new_commit,
         int changed)
{
 return run_hook_le(((void*)0), "post-checkout",
      oid_to_hex(old_commit ? &old_commit->object.oid : &null_oid),
      oid_to_hex(new_commit ? &new_commit->object.oid : &null_oid),
      changed ? "1" : "0", ((void*)0));



}
