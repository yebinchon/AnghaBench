
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int tempname ;
struct name {char* n_name; struct name* n_flink; int n_type; } ;
struct header {int dummy; } ;
typedef int sigset_t ;
typedef int FILE ;


 int EOF ;
 int F_SETFD ;
 int Fclose (int *) ;
 int * Fdopen (int,char*) ;
 int * Fopen (char*,char*) ;
 int GCC ;
 int GDEL ;
 int GINREPLYTO ;
 int GNL ;
 int GREPLYTO ;
 int GSUBJECT ;
 int GTO ;
 int O_RDWR ;
 int PATHSIZE ;
 int SIGHUP ;
 int SIGINT ;
 int SIGQUIT ;
 char* _PATH_CSHELL ;
 int close (int) ;
 char* ctime (int *) ;
 int dup (int) ;
 char* expand (char*) ;
 int fcntl (int,int ,int) ;
 scalar_t__ ferror (int *) ;
 int fflush (int *) ;
 int fprintf (int *,char*,...) ;
 int free_child (int) ;
 int getc (int *) ;
 int image ;
 int isfileaddr (char*) ;
 int mkstemp (char*) ;
 char* myname ;
 int open (char*,int ) ;
 int putc (int,int *) ;
 int puthead (struct header*,int *,int) ;
 int rewind (int *) ;
 int rm (char*) ;
 int senderr ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int start_command (char*,int *,int,int,char*,char*,int *) ;
 int * stderr ;
 int time (int *) ;
 char* tmpdir ;
 char* value (char*) ;
 int warn (char*,...) ;
 int warnx (char*,char*) ;

struct name *
outof(struct name *names, FILE *fo, struct header *hp)
{
 int c, ispipe;
 struct name *np, *top;
 time_t now;
 char *date, *fname;
 FILE *fout, *fin;

 top = names;
 np = names;
 (void)time(&now);
 date = ctime(&now);
 while (np != ((void*)0)) {
  if (!isfileaddr(np->n_name) && np->n_name[0] != '|') {
   np = np->n_flink;
   continue;
  }
  ispipe = np->n_name[0] == '|';
  if (ispipe)
   fname = np->n_name+1;
  else
   fname = expand(np->n_name);






  if (image < 0) {
   int fd;
   char tempname[PATHSIZE];

   (void)snprintf(tempname, sizeof(tempname),
       "%s/mail.ReXXXXXXXXXX", tmpdir);
   if ((fd = mkstemp(tempname)) == -1 ||
       (fout = Fdopen(fd, "a")) == ((void*)0)) {
    warn("%s", tempname);
    senderr++;
    goto cant;
   }
   image = open(tempname, O_RDWR);
   (void)rm(tempname);
   if (image < 0) {
    warn("%s", tempname);
    senderr++;
    (void)Fclose(fout);
    goto cant;
   }
   (void)fcntl(image, F_SETFD, 1);
   fprintf(fout, "From %s %s", myname, date);
   puthead(hp, fout,
       GTO|GSUBJECT|GCC|GREPLYTO|GINREPLYTO|GNL);
   while ((c = getc(fo)) != EOF)
    (void)putc(c, fout);
   rewind(fo);
   fprintf(fout, "\n");
   (void)fflush(fout);
   if (ferror(fout)) {
    warn("%s", tempname);
    senderr++;
    (void)Fclose(fout);
    goto cant;
   }
   (void)Fclose(fout);
  }







  if (ispipe) {
   int pid;
   char *sh;
   sigset_t nset;
   if ((sh = value("SHELL")) == ((void*)0))
    sh = _PATH_CSHELL;
   (void)sigemptyset(&nset);
   (void)sigaddset(&nset, SIGHUP);
   (void)sigaddset(&nset, SIGINT);
   (void)sigaddset(&nset, SIGQUIT);
   pid = start_command(sh, &nset, image, -1, "-c", fname,
       ((void*)0));
   if (pid < 0) {
    senderr++;
    goto cant;
   }
   free_child(pid);
  } else {
   int f;
   if ((fout = Fopen(fname, "a")) == ((void*)0)) {
    warn("%s", fname);
    senderr++;
    goto cant;
   }
   if ((f = dup(image)) < 0) {
    warn("dup");
    fin = ((void*)0);
   } else
    fin = Fdopen(f, "r");
   if (fin == ((void*)0)) {
    fprintf(stderr, "Can't reopen image\n");
    (void)Fclose(fout);
    senderr++;
    goto cant;
   }
   rewind(fin);
   while ((c = getc(fin)) != EOF)
    (void)putc(c, fout);
   if (ferror(fout)) {
    warnx("%s", fname);
    senderr++;
    (void)Fclose(fout);
    (void)Fclose(fin);
    goto cant;
   }
   (void)Fclose(fout);
   (void)Fclose(fin);
  }
cant:





  np->n_type |= GDEL;
  np = np->n_flink;
 }
 if (image >= 0) {
  (void)close(image);
  image = -1;
 }
 return (top);
}
