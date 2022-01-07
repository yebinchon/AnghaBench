
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;
typedef int FILE ;


 int TMPOUTNAME ;
 char* _PATH_RED ;
 char* buf ;
 int buf_size ;
 int check_only ;
 int chmod (int ,int ) ;
 scalar_t__ copy_file (int ,int ) ;
 int fatal (char*,int ) ;
 int fflush (int *) ;
 int * filearg ;
 int filemode ;
 int fprintf (int *,char*) ;
 int fputs (char*,int *) ;
 int ftello (int ) ;
 int ignore_signals () ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ move_file (int ,int ) ;
 int next_intuit_at (int ,int ) ;
 int outname ;
 int p_input_line ;
 int pclose (int *) ;
 int pfp ;
 scalar_t__ pgets (int) ;
 int * popen (char*,char*) ;
 int set_signals (int) ;
 int skip_rest_of_patch ;
 int snprintf (char*,int ,char*,char*,char*,int ) ;
 scalar_t__ strEQ (char*,char*) ;
 char* strchr (char*,char) ;
 int toutkeep ;
 int unlink (int ) ;
 scalar_t__ verbose ;

void
do_ed_script(void)
{
 char *t;
 off_t beginning_of_this_line;
 FILE *pipefp = ((void*)0);
 int continuation;

 if (!skip_rest_of_patch) {
  if (copy_file(filearg[0], TMPOUTNAME) < 0) {
   unlink(TMPOUTNAME);
   fatal("can't create temp file %s", TMPOUTNAME);
  }
  snprintf(buf, buf_size, "%s%s%s", _PATH_RED,
      verbose ? " " : " -s ", TMPOUTNAME);
  pipefp = popen(buf, "w");
 }
 for (;;) {
  beginning_of_this_line = ftello(pfp);
  if (pgets(1) == 0) {
   next_intuit_at(beginning_of_this_line, p_input_line);
   break;
  }
  p_input_line++;
  for (t = buf; isdigit((unsigned char)*t) || *t == ','; t++)
   ;

  if (isdigit((unsigned char)*buf) &&
      (*t == 'a' || *t == 'c' || *t == 'd' || *t == 'i' || *t == 's')) {
   if (pipefp != ((void*)0))
    fputs(buf, pipefp);
   if (*t == 's') {
    for (;;) {
     continuation = 0;
     t = strchr(buf, '\0') - 1;
     while (--t >= buf && *t == '\\')
      continuation = !continuation;
     if (!continuation ||
         pgets(1) == 0)
      break;
     if (pipefp != ((void*)0))
      fputs(buf, pipefp);
    }
   } else if (*t != 'd') {
    while (pgets(1)) {
     p_input_line++;
     if (pipefp != ((void*)0))
      fputs(buf, pipefp);
     if (strEQ(buf, ".\n"))
      break;
    }
   }
  } else {
   next_intuit_at(beginning_of_this_line, p_input_line);
   break;
  }
 }
 if (pipefp == ((void*)0))
  return;
 fprintf(pipefp, "w\n");
 fprintf(pipefp, "q\n");
 fflush(pipefp);
 pclose(pipefp);
 ignore_signals();
 if (!check_only) {
  if (move_file(TMPOUTNAME, outname) < 0) {
   toutkeep = 1;
   chmod(TMPOUTNAME, filemode);
  } else
   chmod(outname, filemode);
 }
 set_signals(1);
}
