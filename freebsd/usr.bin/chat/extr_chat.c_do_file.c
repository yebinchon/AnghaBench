
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int STR_LEN ;
 int chat_expect (char*) ;
 int chat_send (char*) ;
 int fatal (int,char*,...) ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 char* strchr (char*,char) ;

void
do_file(char *chatfile)
{
    int linect, sendflg;
    char *sp, *arg, quote;
    char buf [STR_LEN];
    FILE *cfp;

    cfp = fopen (chatfile, "r");
    if (cfp == ((void*)0))
 fatal(1, "%s -- open failed: %m", chatfile);

    linect = 0;
    sendflg = 0;

    while (fgets(buf, STR_LEN, cfp) != ((void*)0)) {
 sp = strchr (buf, '\n');
 if (sp)
     *sp = '\0';

 linect++;
 sp = buf;



        if ( *sp == '#' )
     continue;

 while (*sp != '\0') {
     if (*sp == ' ' || *sp == '\t') {
  ++sp;
  continue;
     }

     if (*sp == '"' || *sp == '\'') {
  quote = *sp++;
  arg = sp;
  while (*sp != quote) {
      if (*sp == '\0')
   fatal(1, "unterminated quote (line %d)", linect);

      if (*sp++ == '\\') {
   if (*sp != '\0')
       ++sp;
      }
  }
     }
     else {
  arg = sp;
  while (*sp != '\0' && *sp != ' ' && *sp != '\t')
      ++sp;
     }

     if (*sp != '\0')
  *sp++ = '\0';

     if (sendflg)
  chat_send (arg);
     else
  chat_expect (arg);
     sendflg = !sendflg;
 }
    }
    fclose (cfp);
}
