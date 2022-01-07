
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec_item {char* dst; int src; } ;
struct ref_states {int tracked; int remote; } ;
struct object_id {int dummy; } ;
typedef int refspec ;


 int REF_ISSYMREF ;
 int abbrev_branch (int ) ;
 int memset (struct refspec_item*,int ,int) ;
 int remote_find_tracking (int ,struct refspec_item*) ;
 int string_list_append (int *,int ) ;

__attribute__((used)) static int append_ref_to_tracked_list(const char *refname,
 const struct object_id *oid, int flags, void *cb_data)
{
 struct ref_states *states = cb_data;
 struct refspec_item refspec;

 if (flags & REF_ISSYMREF)
  return 0;

 memset(&refspec, 0, sizeof(refspec));
 refspec.dst = (char *)refname;
 if (!remote_find_tracking(states->remote, &refspec))
  string_list_append(&states->tracked, abbrev_branch(refspec.src));

 return 0;
}
