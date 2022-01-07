
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct packed_git {int dummy; } ;
struct object_id {int dummy; } ;
typedef int off_t ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int fprintf (int ,char*,char*) ;
 char* oid_to_hex (struct object_id const*) ;
 int stdout ;

__attribute__((used)) static int show_object_fast(
 const struct object_id *oid,
 enum object_type type,
 int exclude,
 uint32_t name_hash,
 struct packed_git *found_pack,
 off_t found_offset)
{
 fprintf(stdout, "%s\n", oid_to_hex(oid));
 return 1;
}
