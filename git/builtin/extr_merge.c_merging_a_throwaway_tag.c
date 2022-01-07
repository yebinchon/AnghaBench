
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tag {int tag; } ;
struct object_id {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_4__ {TYPE_1__* obj; } ;
struct TYPE_3__ {scalar_t__ type; int oid; } ;


 scalar_t__ OBJ_TAG ;
 int free (char*) ;
 TYPE_2__* merge_remote_util (struct commit*) ;
 scalar_t__ oideq (struct object_id*,int *) ;
 int read_ref (char*,struct object_id*) ;
 char* xstrfmt (char*,int ) ;

__attribute__((used)) static int merging_a_throwaway_tag(struct commit *commit)
{
 char *tag_ref;
 struct object_id oid;
 int is_throwaway_tag = 0;


 if (!merge_remote_util(commit) ||
     !merge_remote_util(commit)->obj ||
     merge_remote_util(commit)->obj->type != OBJ_TAG)
  return is_throwaway_tag;
 tag_ref = xstrfmt("refs/tags/%s",
     ((struct tag *)merge_remote_util(commit)->obj)->tag);
 if (!read_ref(tag_ref, &oid) &&
     oideq(&oid, &merge_remote_util(commit)->obj->oid))
  is_throwaway_tag = 0;
 else
  is_throwaway_tag = 1;
 free(tag_ref);
 return is_throwaway_tag;
}
