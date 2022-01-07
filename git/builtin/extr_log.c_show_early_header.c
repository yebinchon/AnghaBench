
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int file; int line_termination; } ;
struct rev_info {scalar_t__ commit_format; TYPE_1__ diffopt; scalar_t__ shown_one; } ;


 scalar_t__ CMIT_FMT_ONELINE ;
 char* _ (char*) ;
 int fprintf (int ,char*,int,char const*) ;
 int putchar (int ) ;

__attribute__((used)) static void show_early_header(struct rev_info *rev, const char *stage, int nr)
{
 if (rev->shown_one) {
  rev->shown_one = 0;
  if (rev->commit_format != CMIT_FMT_ONELINE)
   putchar(rev->diffopt.line_termination);
 }
 fprintf(rev->diffopt.file, _("Final output: %d %s\n"), nr, stage);
}
