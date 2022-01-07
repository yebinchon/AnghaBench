
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct refspec_item {char* dst; } ;
struct object_id {int dummy; } ;
struct known_remote {int remote; struct known_remote* next; } ;
struct branches_for_remote {int branches; int skipped; TYPE_1__* keep; int remote; } ;
typedef int refspec ;
struct TYPE_2__ {struct known_remote* list; } ;


 char const* abbrev_branch (char const*) ;
 int memset (struct refspec_item*,int ,int) ;
 scalar_t__ remote_find_tracking (int ,struct refspec_item*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int string_list_append (int ,char const*) ;

__attribute__((used)) static int add_branch_for_removal(const char *refname,
 const struct object_id *oid, int flags, void *cb_data)
{
 struct branches_for_remote *branches = cb_data;
 struct refspec_item refspec;
 struct known_remote *kr;

 memset(&refspec, 0, sizeof(refspec));
 refspec.dst = (char *)refname;
 if (remote_find_tracking(branches->remote, &refspec))
  return 0;


 for (kr = branches->keep->list; kr; kr = kr->next) {
  memset(&refspec, 0, sizeof(refspec));
  refspec.dst = (char *)refname;
  if (!remote_find_tracking(kr->remote, &refspec))
   return 0;
 }


 if (!starts_with(refname, "refs/remotes/")) {

  if (starts_with(refname, "refs/heads/"))
   string_list_append(branches->skipped,
        abbrev_branch(refname));

  return 0;
 }

 string_list_append(branches->branches, refname);

 return 0;
}
