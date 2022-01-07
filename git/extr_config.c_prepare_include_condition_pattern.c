
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_2__ {int path; } ;


 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int add_trailing_starstar_for_dir (struct strbuf*) ;
 TYPE_1__* cf ;
 int error (int ) ;
 char* expand_user_path (char*,int) ;
 char* find_last_dir_sep (char*) ;
 int free (char*) ;
 int is_absolute_path (char const*) ;
 scalar_t__ is_dir_sep (char) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_insert (struct strbuf*,int ,char*,int) ;
 int strbuf_realpath (struct strbuf*,int ,int) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_splice (struct strbuf*,int ,int,char*,int) ;

__attribute__((used)) static int prepare_include_condition_pattern(struct strbuf *pat)
{
 struct strbuf path = STRBUF_INIT;
 char *expanded;
 int prefix = 0;

 expanded = expand_user_path(pat->buf, 1);
 if (expanded) {
  strbuf_reset(pat);
  strbuf_addstr(pat, expanded);
  free(expanded);
 }

 if (pat->buf[0] == '.' && is_dir_sep(pat->buf[1])) {
  const char *slash;

  if (!cf || !cf->path)
   return error(_("relative config include "
           "conditionals must come from files"));

  strbuf_realpath(&path, cf->path, 1);
  slash = find_last_dir_sep(path.buf);
  if (!slash)
   BUG("how is this possible?");
  strbuf_splice(pat, 0, 1, path.buf, slash - path.buf);
  prefix = slash - path.buf + 1 ;
 } else if (!is_absolute_path(pat->buf))
  strbuf_insert(pat, 0, "**/", 3);

 add_trailing_starstar_for_dir(pat);

 strbuf_release(&path);
 return prefix;
}
