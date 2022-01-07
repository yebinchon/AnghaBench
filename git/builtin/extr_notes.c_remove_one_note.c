
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;
struct notes_tree {int dummy; } ;


 unsigned int IGNORE_MISSING ;
 char* _ (char*) ;
 int error (char*,char const*) ;
 int fprintf (int ,char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int remove_note (struct notes_tree*,int ) ;
 int stderr ;

__attribute__((used)) static int remove_one_note(struct notes_tree *t, const char *name, unsigned flag)
{
 int status;
 struct object_id oid;
 if (get_oid(name, &oid))
  return error(_("Failed to resolve '%s' as a valid ref."), name);
 status = remove_note(t, oid.hash);
 if (status)
  fprintf(stderr, _("Object %s has no note\n"), name);
 else
  fprintf(stderr, _("Removing note for object %s\n"), name);
 return (flag & IGNORE_MISSING) ? 0 : status;
}
