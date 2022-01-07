
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {scalar_t__ m_lines; } ;
typedef int FILE ;


 int Pclose (int *) ;
 int * Popen (char*,char*) ;
 int SIGPIPE ;
 int SIG_DFL ;
 int SIG_IGN ;
 char* _PATH_LESS ;
 int atoi (char*) ;
 int brokpipe ;
 struct message* dot ;
 int fprintf (int *,char*,int) ;
 int ignore ;
 struct message* message ;
 int msgCount ;
 int pipestop ;
 int realscreenheight ;
 int sendmessage (struct message*,int *,int ,int *) ;
 scalar_t__ setjmp (int ) ;
 int signal (int ,int ) ;
 int * stdout ;
 int touch (struct message*) ;
 char* value (char*) ;
 int warnx (char*,char*) ;

int
type1(int *msgvec, int doign, int page)
{
 int nlines, *ip;
 struct message *mp;
 char *cp;
 FILE *obuf;

 obuf = stdout;
 if (setjmp(pipestop))
  goto close_pipe;
 if (value("interactive") != ((void*)0) &&
     (page || (cp = value("crt")) != ((void*)0))) {
  nlines = 0;
  if (!page) {
   for (ip = msgvec; *ip && ip-msgvec < msgCount; ip++)
    nlines += message[*ip - 1].m_lines;
  }
  if (page || nlines > (*cp ? atoi(cp) : realscreenheight)) {
   cp = value("PAGER");
   if (cp == ((void*)0) || *cp == '\0')
    cp = _PATH_LESS;
   obuf = Popen(cp, "w");
   if (obuf == ((void*)0)) {
    warnx("%s", cp);
    obuf = stdout;
   } else
    (void)signal(SIGPIPE, brokpipe);
  }
 }





 for (ip = msgvec; *ip && ip - msgvec < msgCount; ip++) {
  mp = &message[*ip - 1];
  touch(mp);
  dot = mp;
  if (value("quiet") == ((void*)0))
   fprintf(obuf, "Message %d:\n", *ip);
  (void)sendmessage(mp, obuf, doign ? ignore : 0, ((void*)0));
 }

close_pipe:
 if (obuf != stdout) {



  (void)signal(SIGPIPE, SIG_IGN);
  (void)Pclose(obuf);
  (void)signal(SIGPIPE, SIG_DFL);
 }
 return (0);
}
