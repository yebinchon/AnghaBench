
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct object_id {int dummy; } ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,char const*,...) ;
 scalar_t__ has_symlinks ;
 scalar_t__ is_null_oid (struct object_id const*) ;
 int oid_to_hex (struct object_id const*) ;
 char* read_object_file (struct object_id const*,int*,unsigned long*) ;
 char* strbuf_detach (struct strbuf*,int *) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int) ;
 scalar_t__ strbuf_readlink (struct strbuf*,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static char *get_symlink(const struct object_id *oid, const char *path)
{
 char *data;
 if (is_null_oid(oid)) {

  struct strbuf link = STRBUF_INIT;
  if (has_symlinks) {
   if (strbuf_readlink(&link, path, strlen(path)))
    die(_("could not read symlink %s"), path);
  } else if (strbuf_read_file(&link, path, 128))
   die(_("could not read symlink file %s"), path);

  data = strbuf_detach(&link, ((void*)0));
 } else {
  enum object_type type;
  unsigned long size;
  data = read_object_file(oid, &type, &size);
  if (!data)
   die(_("could not read object %s for symlink %s"),
    oid_to_hex(oid), path);
 }

 return data;
}
