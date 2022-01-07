
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stat {int dummy; } ;
struct patch {int dummy; } ;
struct cache_entry {int dummy; } ;
struct apply_state {scalar_t__ check_index; scalar_t__ cached; } ;


 int SUBMODULE_PATCH_WITHOUT_INDEX ;
 scalar_t__ S_ISGITLINK (unsigned int) ;
 int _ (char*) ;
 int error (int ,char const*) ;
 scalar_t__ has_symlink_leading_path (char const*,int ) ;
 int read_file_or_gitlink (struct cache_entry const*,struct strbuf*) ;
 scalar_t__ read_old_data (struct stat*,struct patch*,char const*,struct strbuf*) ;
 int strlen (char const*) ;

__attribute__((used)) static int load_patch_target(struct apply_state *state,
        struct strbuf *buf,
        const struct cache_entry *ce,
        struct stat *st,
        struct patch *patch,
        const char *name,
        unsigned expected_mode)
{
 if (state->cached || state->check_index) {
  if (read_file_or_gitlink(ce, buf))
   return error(_("failed to read %s"), name);
 } else if (name) {
  if (S_ISGITLINK(expected_mode)) {
   if (ce)
    return read_file_or_gitlink(ce, buf);
   else
    return SUBMODULE_PATCH_WITHOUT_INDEX;
  } else if (has_symlink_leading_path(name, strlen(name))) {
   return error(_("reading from '%s' beyond a symbolic link"), name);
  } else {
   if (read_old_data(st, patch, name, buf))
    return error(_("failed to read %s"), name);
  }
 }
 return 0;
}
