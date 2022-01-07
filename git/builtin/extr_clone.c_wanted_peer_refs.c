
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct refspec {int nr; int * items; } ;
typedef struct ref {struct ref const* next; } const ref ;


 int _ (char*) ;
 struct ref const* copy_ref (int ) ;
 int find_ref_by_name (struct ref const*,char*) ;
 int find_remote_branch (struct ref const*,scalar_t__) ;
 int get_fetch_map (struct ref const*,int *,struct ref const***,int ) ;
 struct ref const* guess_remote_head (struct ref const*,struct ref const*,int ) ;
 scalar_t__ option_branch ;
 int option_mirror ;
 int option_no_tags ;
 scalar_t__ option_single_branch ;
 int * tag_refspec ;
 int warning (int ,scalar_t__) ;

__attribute__((used)) static struct ref *wanted_peer_refs(const struct ref *refs,
  struct refspec *refspec)
{
 struct ref *head = copy_ref(find_ref_by_name(refs, "HEAD"));
 struct ref *local_refs = head;
 struct ref **tail = head ? &head->next : &local_refs;

 if (option_single_branch) {
  struct ref *remote_head = ((void*)0);

  if (!option_branch)
   remote_head = guess_remote_head(head, refs, 0);
  else {
   local_refs = ((void*)0);
   tail = &local_refs;
   remote_head = copy_ref(find_remote_branch(refs, option_branch));
  }

  if (!remote_head && option_branch)
   warning(_("Could not find remote branch %s to clone."),
    option_branch);
  else {
   int i;
   for (i = 0; i < refspec->nr; i++)
    get_fetch_map(remote_head, &refspec->items[i],
           &tail, 0);


   get_fetch_map(remote_head, tag_refspec, &tail, 0);
  }
 } else {
  int i;
  for (i = 0; i < refspec->nr; i++)
   get_fetch_map(refs, &refspec->items[i], &tail, 0);
 }

 if (!option_mirror && !option_single_branch && !option_no_tags)
  get_fetch_map(refs, tag_refspec, &tail, 0);

 return local_refs;
}
