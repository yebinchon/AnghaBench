
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sline {unsigned long flag; char* bol; int len; struct lline* lost; } ;
struct lline {unsigned long parent_map; char* line; struct lline* next; } ;


 int DIFF_CONTEXT ;
 int DIFF_FILE_NEW ;
 int DIFF_FILE_OLD ;
 int DIFF_FRAGINFO ;
 int DIFF_FUNCINFO ;
 int DIFF_RESET ;
 char combine_marker ;
 int context ;
 char* diff_get_color (int,int ) ;
 int fputs (char const*,int ) ;
 scalar_t__ hunk_comment_line (char*) ;
 int isspace (int) ;
 int printf (char*,...) ;
 int putchar (char const) ;
 int show_line_to_eol (char*,int,char const*) ;
 int show_parent_lno (struct sline*,unsigned long,unsigned long,int,unsigned long) ;
 int stdout ;

__attribute__((used)) static void dump_sline(struct sline *sline, const char *line_prefix,
         unsigned long cnt, int num_parent,
         int use_color, int result_deleted)
{
 unsigned long mark = (1UL<<num_parent);
 unsigned long no_pre_delete = (2UL<<num_parent);
 int i;
 unsigned long lno = 0;
 const char *c_frag = diff_get_color(use_color, DIFF_FRAGINFO);
 const char *c_func = diff_get_color(use_color, DIFF_FUNCINFO);
 const char *c_new = diff_get_color(use_color, DIFF_FILE_NEW);
 const char *c_old = diff_get_color(use_color, DIFF_FILE_OLD);
 const char *c_context = diff_get_color(use_color, DIFF_CONTEXT);
 const char *c_reset = diff_get_color(use_color, DIFF_RESET);

 if (result_deleted)
  return;

 while (1) {
  unsigned long hunk_end;
  unsigned long rlines;
  const char *hunk_comment = ((void*)0);
  unsigned long null_context = 0;

  while (lno <= cnt && !(sline[lno].flag & mark)) {
   if (hunk_comment_line(sline[lno].bol))
    hunk_comment = sline[lno].bol;
   lno++;
  }
  if (cnt < lno)
   break;
  else {
   for (hunk_end = lno + 1; hunk_end <= cnt; hunk_end++)
    if (!(sline[hunk_end].flag & mark))
     break;
  }
  rlines = hunk_end - lno;
  if (cnt < hunk_end)
   rlines--;

  if (!context) {
   unsigned long j;
   for (j = lno; j < hunk_end; j++)
    if (!(sline[j].flag & (mark-1)))
     null_context++;
   rlines -= null_context;
  }

  printf("%s%s", line_prefix, c_frag);
  for (i = 0; i <= num_parent; i++) putchar(combine_marker);
  for (i = 0; i < num_parent; i++)
   show_parent_lno(sline, lno, hunk_end, i, null_context);
  printf(" +%lu,%lu ", lno+1, rlines);
  for (i = 0; i <= num_parent; i++) putchar(combine_marker);

  if (hunk_comment) {
   int comment_end = 0;
   for (i = 0; i < 40; i++) {
    int ch = hunk_comment[i] & 0xff;
    if (!ch || ch == '\n')
     break;
    if (!isspace(ch))
        comment_end = i;
   }
   if (comment_end)
    printf("%s%s %s%s", c_reset,
          c_context, c_reset,
          c_func);
   for (i = 0; i < comment_end; i++)
    putchar(hunk_comment[i]);
  }

  printf("%s\n", c_reset);
  while (lno < hunk_end) {
   struct lline *ll;
   int j;
   unsigned long p_mask;
   struct sline *sl = &sline[lno++];
   ll = (sl->flag & no_pre_delete) ? ((void*)0) : sl->lost;
   while (ll) {
    printf("%s%s", line_prefix, c_old);
    for (j = 0; j < num_parent; j++) {
     if (ll->parent_map & (1UL<<j))
      putchar('-');
     else
      putchar(' ');
    }
    show_line_to_eol(ll->line, -1, c_reset);
    ll = ll->next;
   }
   if (cnt < lno)
    break;
   p_mask = 1;
   fputs(line_prefix, stdout);
   if (!(sl->flag & (mark-1))) {




    if (!context)
     continue;
    fputs(c_context, stdout);
   }
   else
    fputs(c_new, stdout);
   for (j = 0; j < num_parent; j++) {
    if (p_mask & sl->flag)
     putchar('+');
    else
     putchar(' ');
    p_mask <<= 1;
   }
   show_line_to_eol(sl->bol, sl->len, c_reset);
  }
 }
}
