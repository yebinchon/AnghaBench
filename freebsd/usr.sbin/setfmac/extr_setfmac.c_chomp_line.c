
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int isspace (char) ;
 char* malloc (size_t) ;
 int memmove (char*,char*,size_t) ;
 int strncpy (char*,char*,size_t) ;

__attribute__((used)) static int
chomp_line(char **line, size_t *linesize)
{
 char *s;
 int freeme = 0;

 for (s = *line; (unsigned)(s - *line) < *linesize; s++) {
  if (!isspace(*s))
   break;
 }
 if (*s == '#') {
  **line = '\0';
  *linesize = 0;
  return (freeme);
 }
 memmove(*line, s, *linesize - (s - *line));
 *linesize -= s - *line;
 for (s = &(*line)[*linesize - 1]; s >= *line; s--) {
  if (!isspace(*s))
   break;
 }
 if (s != &(*line)[*linesize - 1]) {
  *linesize = s - *line + 1;
 } else {
  s = malloc(*linesize + 1);
  if (s == ((void*)0))
   err(1, "malloc");
  strncpy(s, *line, *linesize);
  *line = s;
  freeme = 1;
 }
 (*line)[*linesize] = '\0';
 return (freeme);
}
