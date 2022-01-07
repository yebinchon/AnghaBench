
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int found_err ;
 int fprintf (scalar_t__,char const*,...) ;
 int line_no ;
 scalar_t__ output ;
 scalar_t__ stderr ;
 scalar_t__ stdout ;

void
diag4(int level, const char *msg, int a, int b)
{
    if (level)
 found_err = 1;
    if (output == stdout) {
 fprintf(stdout, "/**INDENT** %s@%d: ", level == 0 ? "Warning" : "Error", line_no);
 fprintf(stdout, msg, a, b);
 fprintf(stdout, " */\n");
    }
    else {
 fprintf(stderr, "%s@%d: ", level == 0 ? "Warning" : "Error", line_no);
 fprintf(stderr, msg, a, b);
 fprintf(stderr, "\n");
    }
}
