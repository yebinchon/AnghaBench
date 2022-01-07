
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argv_array {int argv; } ;


 int absolute_path (char const*) ;
 int argv_array_pushf (struct argv_array*,char*,int ) ;
 int hash_to_hex (unsigned char*) ;
 int push_to_checkout_hook ;
 scalar_t__ run_hook_le (int ,int ,int ,int *) ;

__attribute__((used)) static const char *push_to_checkout(unsigned char *hash,
        struct argv_array *env,
        const char *work_tree)
{
 argv_array_pushf(env, "GIT_WORK_TREE=%s", absolute_path(work_tree));
 if (run_hook_le(env->argv, push_to_checkout_hook,
   hash_to_hex(hash), ((void*)0)))
  return "push-to-checkout hook declined";
 else
  return ((void*)0);
}
