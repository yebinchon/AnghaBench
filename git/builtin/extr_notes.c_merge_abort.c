
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notes_merge_options {int dummy; } ;


 int REF_NO_DEREF ;
 int _ (char*) ;
 scalar_t__ delete_ref (int *,char*,int *,int ) ;
 scalar_t__ error (int ) ;
 scalar_t__ notes_merge_abort (struct notes_merge_options*) ;

__attribute__((used)) static int merge_abort(struct notes_merge_options *o)
{
 int ret = 0;






 if (delete_ref(((void*)0), "NOTES_MERGE_PARTIAL", ((void*)0), 0))
  ret += error(_("failed to delete ref NOTES_MERGE_PARTIAL"));
 if (delete_ref(((void*)0), "NOTES_MERGE_REF", ((void*)0), REF_NO_DEREF))
  ret += error(_("failed to delete ref NOTES_MERGE_REF"));
 if (notes_merge_abort(o))
  ret += error(_("failed to remove 'git notes merge' worktree"));
 return ret;
}
