
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LINENUM ;


 size_t USHRT_MAX ;
 int fprintf (int ,char*,...) ;
 char* pfetch (int ) ;
 int rejfp ;
 size_t strlen (char const*) ;

__attribute__((used)) static void
rej_line(int ch, LINENUM i)
{
 size_t len;
 const char *line = pfetch(i);

 len = strlen(line);

 fprintf(rejfp, "%c%s", ch, line);
 if (len == 0 || line[len - 1] != '\n') {
  if (len >= USHRT_MAX)
   fprintf(rejfp, "\n\\ Line too long\n");
  else
   fprintf(rejfp, "\n\\ No newline at end of line\n");
 }
}
