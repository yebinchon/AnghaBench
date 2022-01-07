
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct refspec_item {int pattern; char* src; char* dst; scalar_t__ force; } ;
struct TYPE_2__ {int strdup_strings; } ;
struct ref_states {TYPE_1__ heads; } ;
struct ref {int name; struct ref* next; } ;


 int abbrev_branch (int ) ;
 int find_ref_by_name (struct ref const*,char*) ;
 int free_refs (struct ref*) ;
 int get_fetch_map (struct ref const*,struct refspec_item*,struct ref***,int ) ;
 struct ref* guess_remote_head (int ,struct ref*,int) ;
 int string_list_append (TYPE_1__*,int ) ;

__attribute__((used)) static int get_head_names(const struct ref *remote_refs, struct ref_states *states)
{
 struct ref *ref, *matches;
 struct ref *fetch_map = ((void*)0), **fetch_map_tail = &fetch_map;
 struct refspec_item refspec;

 refspec.force = 0;
 refspec.pattern = 1;
 refspec.src = refspec.dst = "refs/heads/*";
 states->heads.strdup_strings = 1;
 get_fetch_map(remote_refs, &refspec, &fetch_map_tail, 0);
 matches = guess_remote_head(find_ref_by_name(remote_refs, "HEAD"),
        fetch_map, 1);
 for (ref = matches; ref; ref = ref->next)
  string_list_append(&states->heads, abbrev_branch(ref->name));

 free_refs(fetch_map);
 free_refs(matches);

 return 0;
}
