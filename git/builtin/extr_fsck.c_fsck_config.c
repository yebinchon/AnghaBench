
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 int fsck_obj_options ;
 int fsck_set_msg_type (int *,char const*,char const*) ;
 int fsck_set_msg_types (int *,int ) ;
 scalar_t__ git_config_pathname (char const**,char const*,char const*) ;
 int git_default_config (char const*,char const*,void*) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int fsck_config(const char *var, const char *value, void *cb)
{
 if (strcmp(var, "fsck.skiplist") == 0) {
  const char *path;
  struct strbuf sb = STRBUF_INIT;

  if (git_config_pathname(&path, var, value))
   return 1;
  strbuf_addf(&sb, "skiplist=%s", path);
  free((char *)path);
  fsck_set_msg_types(&fsck_obj_options, sb.buf);
  strbuf_release(&sb);
  return 0;
 }

 if (skip_prefix(var, "fsck.", &var)) {
  fsck_set_msg_type(&fsck_obj_options, var, value);
  return 0;
 }

 return git_default_config(var, value, cb);
}
