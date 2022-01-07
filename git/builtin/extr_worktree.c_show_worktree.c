
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {scalar_t__ head_ref; scalar_t__ is_detached; int head_oid; scalar_t__ is_bare; int path; } ;
struct strbuf {char* buf; } ;


 int DEFAULT_ABBREV ;
 struct strbuf STRBUF_INIT ;
 int find_unique_abbrev (int *,int ) ;
 int free (char*) ;
 int printf (char*,char*) ;
 char* shorten_unambiguous_ref (scalar_t__,int ) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (int ) ;
 int utf8_strwidth (int ) ;

__attribute__((used)) static void show_worktree(struct worktree *wt, int path_maxlen, int abbrev_len)
{
 struct strbuf sb = STRBUF_INIT;
 int cur_path_len = strlen(wt->path);
 int path_adj = cur_path_len - utf8_strwidth(wt->path);

 strbuf_addf(&sb, "%-*s ", 1 + path_maxlen + path_adj, wt->path);
 if (wt->is_bare)
  strbuf_addstr(&sb, "(bare)");
 else {
  strbuf_addf(&sb, "%-*s ", abbrev_len,
    find_unique_abbrev(&wt->head_oid, DEFAULT_ABBREV));
  if (wt->is_detached)
   strbuf_addstr(&sb, "(detached HEAD)");
  else if (wt->head_ref) {
   char *ref = shorten_unambiguous_ref(wt->head_ref, 0);
   strbuf_addf(&sb, "[%s]", ref);
   free(ref);
  } else
   strbuf_addstr(&sb, "(error)");
 }
 printf("%s\n", sb.buf);

 strbuf_release(&sb);
}
