
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; } ;
typedef int FILE ;


 char* GIT_COLOR_RESET ;
 int fprintf (int *,char*,char const*) ;

void color_print_strbuf(FILE *fp, const char *color, const struct strbuf *sb)
{
 if (*color)
  fprintf(fp, "%s", color);
 fprintf(fp, "%s", sb->buf);
 if (*color)
  fprintf(fp, "%s", GIT_COLOR_RESET);
}
