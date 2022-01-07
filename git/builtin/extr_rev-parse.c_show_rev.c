
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int DO_REVS ;
 scalar_t__ SHOW_SYMBOLIC_FULL ;
 scalar_t__ abbrev ;
 scalar_t__ abbrev_ref ;
 int abbrev_ref_strict ;
 int * def ;
 int dwim_ref (char const*,int ,struct object_id*,char**) ;
 int error (char*,char const*) ;
 int filter ;
 char const* find_unique_abbrev (struct object_id const*,scalar_t__) ;
 int free (char*) ;
 char const* oid_to_hex (struct object_id const*) ;
 char* shorten_unambiguous_ref (char*,int ) ;
 int show_with_type (int,char const*) ;
 int strlen (char const*) ;
 scalar_t__ symbolic ;

__attribute__((used)) static void show_rev(int type, const struct object_id *oid, const char *name)
{
 if (!(filter & DO_REVS))
  return;
 def = ((void*)0);

 if ((symbolic || abbrev_ref) && name) {
  if (symbolic == SHOW_SYMBOLIC_FULL || abbrev_ref) {
   struct object_id discard;
   char *full;

   switch (dwim_ref(name, strlen(name), &discard, &full)) {
   case 0:







    break;
   case 1:
    if (abbrev_ref)
     full = shorten_unambiguous_ref(full,
      abbrev_ref_strict);
    show_with_type(type, full);
    break;
   default:
    error("refname '%s' is ambiguous", name);
    break;
   }
   free(full);
  } else {
   show_with_type(type, name);
  }
 }
 else if (abbrev)
  show_with_type(type, find_unique_abbrev(oid, abbrev));
 else
  show_with_type(type, oid_to_hex(oid));
}
