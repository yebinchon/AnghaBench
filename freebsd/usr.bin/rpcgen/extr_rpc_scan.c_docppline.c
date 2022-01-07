
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char*) ;
 int error (char*) ;
 int free (char*) ;
 scalar_t__ isdigit (char) ;
 scalar_t__ isspace (char) ;
 scalar_t__ strlen (char*) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
docppline(char *line, int *lineno, const char **fname)
{
 char *file;
 int num;
 char *p;

 line++;
 while (isspace(*line)) {
  line++;
 }
 num = atoi(line);
 while (isdigit(*line)) {
  line++;
 }
 while (isspace(*line)) {
  line++;
 }
 if (*line != '"') {
  error("preprocessor error");
 }
 line++;
 p = file = xmalloc(strlen(line) + 1);
 while (*line && *line != '"') {
  *p++ = *line++;
 }
 if (*line == 0) {
  error("preprocessor error");
 }
 *p = 0;
 if (*file == 0) {
  *fname = ((void*)0);
  free(file);
 } else {
  *fname = file;
 }
 *lineno = num - 1;
}
