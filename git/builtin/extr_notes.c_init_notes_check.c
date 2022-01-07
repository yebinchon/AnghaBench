
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notes_tree {char* update_ref; char* ref; } ;


 int NOTES_INIT_WRITABLE ;
 int _ (char*) ;
 struct notes_tree default_notes_tree ;
 int die (int ,char const*,char const*) ;
 int init_notes (int *,int *,int *,int) ;
 int starts_with (char const*,char*) ;

__attribute__((used)) static struct notes_tree *init_notes_check(const char *subcommand,
        int flags)
{
 struct notes_tree *t;
 const char *ref;
 init_notes(((void*)0), ((void*)0), ((void*)0), flags);
 t = &default_notes_tree;

 ref = (flags & NOTES_INIT_WRITABLE) ? t->update_ref : t->ref;
 if (!starts_with(ref, "refs/notes/"))




  die(_("refusing to %s notes in %s (outside of refs/notes/)"),
      subcommand, ref);
 return t;
}
