
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; } ;
struct am_state {int dummy; } ;


 scalar_t__ ENOENT ;
 int _ (char*) ;
 int am_path (struct am_state const*,char const*) ;
 int die_errno (int ,int ) ;
 scalar_t__ errno ;
 scalar_t__ strbuf_read_file (struct strbuf*,int ,int ) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_trim (struct strbuf*) ;

__attribute__((used)) static int read_state_file(struct strbuf *sb, const struct am_state *state,
   const char *file, int trim)
{
 strbuf_reset(sb);

 if (strbuf_read_file(sb, am_path(state, file), 0) >= 0) {
  if (trim)
   strbuf_trim(sb);

  return sb->len;
 }

 if (errno == ENOENT)
  return -1;

 die_errno(_("could not read '%s'"), am_path(state, file));
}
