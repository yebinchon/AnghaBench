
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_2__ {scalar_t__ hexsz; } ;


 int GIT_MAX_HEXSZ ;
 int RUN_GIT_CMD ;
 int UPDATE_REFS_DIE_ON_ERR ;
 char** argv_checkout ;
 char** argv_show_branch ;
 int exit (int) ;
 int memcpy (char*,int ,scalar_t__) ;
 int oid_to_hex (struct object_id const*) ;
 int run_command_v_opt (char**,int ) ;
 TYPE_1__* the_hash_algo ;
 int update_ref (int *,char*,struct object_id const*,int *,int ,int ) ;

__attribute__((used)) static int bisect_checkout(const struct object_id *bisect_rev, int no_checkout)
{
 char bisect_rev_hex[GIT_MAX_HEXSZ + 1];

 memcpy(bisect_rev_hex, oid_to_hex(bisect_rev), the_hash_algo->hexsz + 1);
 update_ref(((void*)0), "BISECT_EXPECTED_REV", bisect_rev, ((void*)0), 0, UPDATE_REFS_DIE_ON_ERR);

 argv_checkout[2] = bisect_rev_hex;
 if (no_checkout) {
  update_ref(((void*)0), "BISECT_HEAD", bisect_rev, ((void*)0), 0,
      UPDATE_REFS_DIE_ON_ERR);
 } else {
  int res;
  res = run_command_v_opt(argv_checkout, RUN_GIT_CMD);
  if (res)
   exit(res);
 }

 argv_show_branch[1] = bisect_rev_hex;
 return run_command_v_opt(argv_show_branch, RUN_GIT_CMD);
}
