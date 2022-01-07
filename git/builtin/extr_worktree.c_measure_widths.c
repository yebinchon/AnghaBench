
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int head_oid; int path; } ;


 int find_unique_abbrev (int *,int) ;
 int strlen (int ) ;

__attribute__((used)) static void measure_widths(struct worktree **wt, int *abbrev, int *maxlen)
{
 int i;

 for (i = 0; wt[i]; i++) {
  int sha1_len;
  int path_len = strlen(wt[i]->path);

  if (path_len > *maxlen)
   *maxlen = path_len;
  sha1_len = strlen(find_unique_abbrev(&wt[i]->head_oid, *abbrev));
  if (sha1_len > *abbrev)
   *abbrev = sha1_len;
 }
}
