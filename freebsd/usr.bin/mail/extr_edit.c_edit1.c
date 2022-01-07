
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {long m_size; scalar_t__ m_lines; int m_flag; int m_offset; int m_block; } ;
typedef int sig_t ;
typedef int off_t ;
typedef int buf ;
typedef int FILE ;


 int EOF ;
 int Fclose (int *) ;
 int MODIFY ;
 int SEEK_END ;
 int SIGINT ;
 int SIG_IGN ;
 int blockof (int ) ;
 int boffsetof (int ) ;
 struct message* dot ;
 scalar_t__ ferror (int ) ;
 int * fgets (char*,int,int ) ;
 int fseeko (int ,int ,int ) ;
 scalar_t__ fsize (int *) ;
 int ftello (int ) ;
 int getc (int *) ;
 struct message* message ;
 int msgCount ;
 int otf ;
 int printf (char*,int) ;
 int putc (int,int ) ;
 int readonly ;
 int rewind (int *) ;
 int * run_editor (int ,long,int,int ) ;
 int setinput (struct message*) ;
 int signal (int ,int ) ;
 int stdin ;
 int touch (struct message*) ;
 int warnx (char*) ;

int
edit1(int *msgvec, int type)
{
 int c, i;
 FILE *fp;
 struct message *mp;
 off_t size;




 for (i = 0; i < msgCount && msgvec[i]; i++) {
  sig_t sigint;

  if (i > 0) {
   char buf[100];
   char *p;

   printf("Edit message %d [ynq]? ", msgvec[i]);
   if (fgets(buf, sizeof(buf), stdin) == ((void*)0))
    break;
   for (p = buf; *p == ' ' || *p == '\t'; p++)
    ;
   if (*p == 'q')
    break;
   if (*p == 'n')
    continue;
  }
  dot = mp = &message[msgvec[i] - 1];
  touch(mp);
  sigint = signal(SIGINT, SIG_IGN);
  fp = run_editor(setinput(mp), mp->m_size, type, readonly);
  if (fp != ((void*)0)) {
   (void)fseeko(otf, (off_t)0, SEEK_END);
   size = ftello(otf);
   mp->m_block = blockof(size);
   mp->m_offset = boffsetof(size);
   mp->m_size = (long)fsize(fp);
   mp->m_lines = 0;
   mp->m_flag |= MODIFY;
   rewind(fp);
   while ((c = getc(fp)) != EOF) {
    if (c == '\n')
     mp->m_lines++;
    if (putc(c, otf) == EOF)
     break;
   }
   if (ferror(otf))
    warnx("/tmp");
   (void)Fclose(fp);
  }
  (void)signal(SIGINT, sigint);
 }
 return (0);
}
