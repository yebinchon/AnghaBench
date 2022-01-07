
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int flags; scalar_t__ type; int oid; } ;
typedef int FILE ;


 int HAS_OBJ ;
 scalar_t__ OBJ_BLOB ;
 scalar_t__ OBJ_COMMIT ;
 int USED ;
 int _ (char*) ;
 char* describe_object (struct object*) ;
 int die_errno (int ,char*) ;
 int error (int ) ;
 scalar_t__ fclose (int *) ;
 int fileno (int *) ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 char* git_pathdup (char*,char*,char*) ;
 int printable_type (struct object*) ;
 int printf_ln (int ,int ,char*) ;
 scalar_t__ safe_create_leading_directories_const (char*) ;
 scalar_t__ show_dangling ;
 scalar_t__ show_unreachable ;
 scalar_t__ stream_blob_to_fd (int ,int *,int *,int) ;
 scalar_t__ write_lost_and_found ;
 int * xfopen (char*,char*) ;

__attribute__((used)) static void check_unreachable_object(struct object *obj)
{






 if (!(obj->flags & HAS_OBJ))
  return;





 if (show_unreachable) {
  printf_ln(_("unreachable %s %s"), printable_type(obj),
     describe_object(obj));
  return;
 }
 if (!(obj->flags & USED)) {
  if (show_dangling)
   printf_ln(_("dangling %s %s"), printable_type(obj),
      describe_object(obj));
  if (write_lost_and_found) {
   char *filename = git_pathdup("lost-found/%s/%s",
    obj->type == OBJ_COMMIT ? "commit" : "other",
    describe_object(obj));
   FILE *f;

   if (safe_create_leading_directories_const(filename)) {
    error(_("could not create lost-found"));
    free(filename);
    return;
   }
   f = xfopen(filename, "w");
   if (obj->type == OBJ_BLOB) {
    if (stream_blob_to_fd(fileno(f), &obj->oid, ((void*)0), 1))
     die_errno(_("could not write '%s'"), filename);
   } else
    fprintf(f, "%s\n", describe_object(obj));
   if (fclose(f))
    die_errno(_("could not finish '%s'"),
       filename);
   free(filename);
  }
  return;
 }






}
