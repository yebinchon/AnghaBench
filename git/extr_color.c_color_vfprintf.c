
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 char* GIT_COLOR_RESET ;
 scalar_t__ fprintf (int *,char*,char const*) ;
 scalar_t__ vfprintf (int *,char const*,int ) ;

__attribute__((used)) static int color_vfprintf(FILE *fp, const char *color, const char *fmt,
  va_list args, const char *trail)
{
 int r = 0;

 if (*color)
  r += fprintf(fp, "%s", color);
 r += vfprintf(fp, fmt, args);
 if (*color)
  r += fprintf(fp, "%s", GIT_COLOR_RESET);
 if (trail)
  r += fprintf(fp, "%s", trail);
 return r;
}
