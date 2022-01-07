
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef int line ;


 scalar_t__ EINTR ;
 int GIT_MAX_HEXSZ ;
 int OBJ_NONE ;
 scalar_t__ PATH_MAX ;
 int _ (char*) ;
 int add_object_entry (struct object_id*,int ,char const*,int ) ;
 int add_preferred_base (struct object_id*) ;
 int add_preferred_base_object (char const*) ;
 int clearerr (int ) ;
 int die (char*,...) ;
 int die_errno (char*) ;
 scalar_t__ errno ;
 scalar_t__ feof (int ) ;
 int ferror (int ) ;
 int fgets (char*,int,int ) ;
 scalar_t__ get_oid_hex (char*,struct object_id*) ;
 scalar_t__ parse_oid_hex (char*,struct object_id*,char const**) ;
 int stdin ;

__attribute__((used)) static void read_object_list_from_stdin(void)
{
 char line[GIT_MAX_HEXSZ + 1 + PATH_MAX + 2];
 struct object_id oid;
 const char *p;

 for (;;) {
  if (!fgets(line, sizeof(line), stdin)) {
   if (feof(stdin))
    break;
   if (!ferror(stdin))
    die("BUG: fgets returned NULL, not EOF, not error!");
   if (errno != EINTR)
    die_errno("fgets");
   clearerr(stdin);
   continue;
  }
  if (line[0] == '-') {
   if (get_oid_hex(line+1, &oid))
    die(_("expected edge object ID, got garbage:\n %s"),
        line);
   add_preferred_base(&oid);
   continue;
  }
  if (parse_oid_hex(line, &oid, &p))
   die(_("expected object ID, got garbage:\n %s"), line);

  add_preferred_base_object(p + 1);
  add_object_entry(&oid, OBJ_NONE, p + 1, 0);
 }
}
