
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int exit (int) ;
 int getc (int *) ;
 scalar_t__ isspace (int) ;
 int printf (char*,char*) ;
 int ungetc (int,int *) ;

char *
get_quoted_word(FILE *fp)
{
 static char line[256];
 int ch;
 char *cp;
 int escaped_nl = 0;

begin:
 while ((ch = getc(fp)) != EOF)
  if (ch != ' ' && ch != '\t')
   break;
 if (ch == EOF)
  return ((char *)EOF);
 if (ch == '\\'){
  escaped_nl = 1;
  goto begin;
 }
 if (ch == '\n') {
  if (escaped_nl){
   escaped_nl = 0;
   goto begin;
  }
  else
   return (((void*)0));
 }
 cp = line;
 if (ch == '"' || ch == '\'') {
  int quote = ch;

  escaped_nl = 0;
  while ((ch = getc(fp)) != EOF) {
   if (ch == quote && !escaped_nl)
    break;
   if (ch == '\n' && !escaped_nl) {
    *cp = 0;
    printf("config: missing quote reading `%s'\n",
     line);
    exit(2);
   }
   if (ch == '\\' && !escaped_nl) {
    escaped_nl = 1;
    continue;
   }
   if (ch != quote && escaped_nl)
    *cp++ = '\\';
   *cp++ = ch;
   escaped_nl = 0;
  }
 } else {
  *cp++ = ch;
  while ((ch = getc(fp)) != EOF) {
   if (isspace(ch))
    break;
   *cp++ = ch;
  }
  if (ch != EOF)
   (void) ungetc(ch, fp);
 }
 *cp = 0;
 if (ch == EOF)
  return ((char *)EOF);
 return (line);
}
