
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; } ;
struct rev_info {TYPE_1__ diffopt; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_TAG ;
 int _ (char*) ;
 int assert (int) ;
 int error (int ,int ) ;
 int free (char*) ;
 int fwrite (char*,unsigned long,int,int ) ;
 int oid_to_hex (struct object_id const*) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 int show_tagger (char const*,struct rev_info*) ;
 scalar_t__ skip_prefix (char*,char*,char const**) ;

__attribute__((used)) static int show_tag_object(const struct object_id *oid, struct rev_info *rev)
{
 unsigned long size;
 enum object_type type;
 char *buf = read_object_file(oid, &type, &size);
 int offset = 0;

 if (!buf)
  return error(_("could not read object %s"), oid_to_hex(oid));

 assert(type == OBJ_TAG);
 while (offset < size && buf[offset] != '\n') {
  int new_offset = offset + 1;
  const char *ident;
  while (new_offset < size && buf[new_offset++] != '\n')
   ;
  if (skip_prefix(buf + offset, "tagger ", &ident))
   show_tagger(ident, rev);
  offset = new_offset;
 }

 if (offset < size)
  fwrite(buf + offset, size - offset, 1, rev->diffopt.file);
 free(buf);
 return 0;
}
