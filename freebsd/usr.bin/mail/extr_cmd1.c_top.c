
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int m_lines; } ;
typedef int linebuf ;
typedef int FILE ;


 int LINESIZE ;
 int atoi (char*) ;
 struct message* dot ;
 struct message* message ;
 int msgCount ;
 int printf (char*,...) ;
 int puts (char*) ;
 scalar_t__ readline (int *,char*,int) ;
 int * setinput (struct message*) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strspn (char*,char*) ;
 int touch (struct message*) ;
 char* value (char*) ;

int
top(void *v)
{
 int *msgvec = v;
 int *ip;
 struct message *mp;
 int c, topl, lines, lineb;
 char *valtop, linebuf[LINESIZE];
 FILE *ibuf;

 topl = 5;
 valtop = value("toplines");
 if (valtop != ((void*)0)) {
  topl = atoi(valtop);
  if (topl < 0 || topl > 10000)
   topl = 5;
 }
 lineb = 1;
 for (ip = msgvec; *ip && ip-msgvec < msgCount; ip++) {
  mp = &message[*ip - 1];
  touch(mp);
  dot = mp;
  if (value("quiet") == ((void*)0))
   printf("Message %d:\n", *ip);
  ibuf = setinput(mp);
  c = mp->m_lines;
  if (!lineb)
   printf("\n");
  for (lines = 0; lines < c && lines <= topl; lines++) {
   if (readline(ibuf, linebuf, sizeof(linebuf)) < 0)
    break;
   puts(linebuf);
   lineb = strspn(linebuf, " \t") == strlen(linebuf);
  }
 }
 return (0);
}
