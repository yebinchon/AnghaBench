
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 char* oid_to_hex (struct object_id const*) ;
 int printf (char*,char*,char*) ;

__attribute__((used)) static int list_each_note(const struct object_id *object_oid,
  const struct object_id *note_oid, char *note_path,
  void *cb_data)
{
 printf("%s %s\n", oid_to_hex(note_oid), oid_to_hex(object_oid));
 return 0;
}
