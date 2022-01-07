
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;


 int argv_array_push (int *,char*) ;
 int argv_array_pushf (int *,char*,scalar_t__) ;
 int for_each_string_list (struct string_list*,int ,int *) ;
 int keep_one_pack ;
 scalar_t__ prune_expire ;
 int repack ;
 int strcmp (scalar_t__,char*) ;

__attribute__((used)) static void add_repack_all_option(struct string_list *keep_pack)
{
 if (prune_expire && !strcmp(prune_expire, "now"))
  argv_array_push(&repack, "-a");
 else {
  argv_array_push(&repack, "-A");
  if (prune_expire)
   argv_array_pushf(&repack, "--unpack-unreachable=%s", prune_expire);
 }

 if (keep_pack)
  for_each_string_list(keep_pack, keep_one_pack, ((void*)0));
}
