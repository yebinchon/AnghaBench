
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int tmpname ;
typedef int time_t ;
struct tm {int tm_hour; int tm_min; } ;
struct stat {scalar_t__ st_size; } ;
struct passwd {char* pw_name; } ;
typedef int lbuf ;
typedef int hostname ;
typedef int FILE ;


 int MAXHOSTNAMELEN ;
 int STDERR_FILENO ;
 char* _PATH_TMP ;
 int close (int) ;
 int err (int,char*,...) ;
 int * fdopen (int,char*) ;
 scalar_t__ fgets (char*,int,int ) ;
 int fprintf (int *,char*,char const*,...) ;
 int fputs (char*,int *) ;
 scalar_t__ fread (int *,int,size_t,int *) ;
 int freopen (char const*,char*,int ) ;
 scalar_t__ fstat (int,struct stat*) ;
 int gethostname (char*,int) ;
 char* getlogin () ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 struct tm* localtime (int *) ;
 int * malloc (size_t) ;
 int * mbuf ;
 int mkstemp (char*) ;
 char* notty ;
 int putc (char,int *) ;
 int rewind (int *) ;
 int snprintf (char*,int,char*,char*) ;
 int stdin ;
 int time (int *) ;
 char* ttyname (int ) ;
 int unlink (char*) ;

__attribute__((used)) static void
makemsg(const char *fname)
{
 struct tm *lt;
 struct passwd *pw;
 struct stat sbuf;
 time_t now;
 FILE *fp;
 int fd;
 size_t mbufsize;
 char *tty, hostname[MAXHOSTNAMELEN], lbuf[256], tmpname[64];
 const char *whom;

 snprintf(tmpname, sizeof(tmpname), "%s/wall.XXXXXX", _PATH_TMP);
 if ((fd = mkstemp(tmpname)) == -1 || (fp = fdopen(fd, "r+")) == ((void*)0))
  err(1, "can't open temporary file");
 unlink(tmpname);

 whom = getlogin();
 if (!whom) {
  pw = getpwuid(getuid());
  whom = pw ? pw->pw_name : "???";
 }
 gethostname(hostname, sizeof(hostname));
 time(&now);
 lt = localtime(&now);
 fprintf(fp, "Remote Broadcast Message from %s@%s\n",
     whom, hostname);
 tty = ttyname(STDERR_FILENO);
 if (tty == ((void*)0))
  tty = notty;
 fprintf(fp, "        (%s) at %d:%02d ...\n", tty,
     lt->tm_hour, lt->tm_min);

 putc('\n', fp);

 if (fname && !(freopen(fname, "r", stdin)))
  err(1, "can't read %s", fname);
 while (fgets(lbuf, sizeof(lbuf), stdin))
  fputs(lbuf, fp);
 rewind(fp);

 if (fstat(fd, &sbuf))
  err(1, "can't stat temporary file");
 mbufsize = (size_t)sbuf.st_size;
 mbuf = malloc(mbufsize);
 if (mbuf == ((void*)0))
  err(1, "out of memory");
 if (fread(mbuf, sizeof(*mbuf), mbufsize, fp) != (u_int)mbufsize)
  err(1, "can't read temporary file");
 close(fd);
}
