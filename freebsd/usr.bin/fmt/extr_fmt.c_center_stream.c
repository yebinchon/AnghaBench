
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 scalar_t__ ferror (int *) ;
 int * get_line (int *,size_t*) ;
 size_t goal_length ;
 scalar_t__ iswspace (int ) ;
 int n_errors ;
 int putwchar (char) ;
 int warn (char*,char const*) ;
 int wcwidth (int ) ;
 int wprintf (char*,int,int *) ;

__attribute__((used)) static void
center_stream(FILE *stream, const char *name)
{
 wchar_t *line, *p;
 size_t length;
 size_t width;
 int cwidth;

 while ((line = get_line(stream, &length)) != ((void*)0)) {
  size_t l = length;

  while (l > 0 && iswspace(*line)) {
   ++line;
   --l;
  }
  length = l;
  for (p = line, width = 0; p < &line[length]; p++)
   width += (cwidth = wcwidth(*p)) > 0 ? cwidth : 1;
  l = width;
  while (l < goal_length) {
   putwchar(' ');
   l += 2;
  }
  wprintf(L"%.*ls\n", (int)length, line);
 }
 if (ferror(stream)) {
  warn("%s", name);
  ++n_errors;
 }
}
