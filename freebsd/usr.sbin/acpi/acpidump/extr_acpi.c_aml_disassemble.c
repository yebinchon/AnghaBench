
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wrkdir ;
typedef int tmpstr ;
typedef scalar_t__ pid_t ;
typedef int buf ;
typedef int FILE ;
typedef int ACPI_TABLE_HEADER ;


 int O_CREAT ;
 int O_WRONLY ;
 int PATH_MAX ;
 int STDERR_FILENO ;
 int STDOUT_FILENO ;
 int S_IRUSR ;
 int S_IWUSR ;
 char* _PATH_TMP ;
 int assert (int) ;
 int close (int) ;
 int err (int,char*) ;
 int execl (char*,char*,char*,char*,int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fork () ;
 int fprintf (int ,char*,...) ;
 size_t fread (char*,int,int,int *) ;
 int fwrite (char*,int,size_t,int ) ;
 char* getenv (char*) ;
 int * mkdtemp (char*) ;
 int open (char*,int,int) ;
 int perror (char*) ;
 int * realpath (char const*,char*) ;
 scalar_t__ rmdir (char*) ;
 scalar_t__ snprintf (char*,int,char*,char*,...) ;
 int stderr ;
 int stdout ;
 int strlen (char const*) ;
 scalar_t__ unlink (char*) ;
 scalar_t__ vflag ;
 int wait (int*) ;
 int write_dsdt (int,int *,int *) ;

void
aml_disassemble(ACPI_TABLE_HEADER *rsdt, ACPI_TABLE_HEADER *dsdp)
{
 char buf[PATH_MAX], tmpstr[PATH_MAX], wrkdir[PATH_MAX];
 const char *iname = "/acpdump.din";
 const char *oname = "/acpdump.dsl";
 const char *tmpdir;
 FILE *fp;
 size_t len;
 int fd, status;
 pid_t pid;

 tmpdir = getenv("TMPDIR");
 if (tmpdir == ((void*)0))
  tmpdir = _PATH_TMP;
 if (realpath(tmpdir, buf) == ((void*)0)) {
  perror("realpath tmp dir");
  return;
 }
 len = sizeof(wrkdir) - strlen(iname);
 if ((size_t)snprintf(wrkdir, len, "%s/acpidump.XXXXXX", buf) > len-1 ) {
  fprintf(stderr, "$TMPDIR too long\n");
  return;
 }
 if (mkdtemp(wrkdir) == ((void*)0)) {
  perror("mkdtemp tmp working dir");
  return;
 }
 len = (size_t)snprintf(tmpstr, sizeof(tmpstr), "%s%s", wrkdir, iname);
 assert(len <= sizeof(tmpstr) - 1);
 fd = open(tmpstr, O_CREAT | O_WRONLY, S_IRUSR | S_IWUSR);
 if (fd < 0) {
  perror("iasl tmp file");
  return;
 }
 write_dsdt(fd, rsdt, dsdp);
 close(fd);


 if ((pid = fork()) == 0) {
  close(STDOUT_FILENO);
  if (vflag == 0)
   close(STDERR_FILENO);
  execl("/usr/sbin/iasl", "iasl", "-d", tmpstr, ((void*)0));
  err(1, "exec");
 }
 if (pid > 0)
  wait(&status);
 if (unlink(tmpstr) < 0) {
  perror("unlink");
  goto out;
 }
 if (pid < 0) {
  perror("fork");
  goto out;
 }
 if (status != 0) {
  fprintf(stderr, "iast exit status = %d\n", status);
 }


 len = (size_t)snprintf(tmpstr, sizeof(tmpstr), "%s%s", wrkdir, oname);
 assert(len <= sizeof(tmpstr) - 1);
 fp = fopen(tmpstr, "r");
 if (unlink(tmpstr) < 0) {
  perror("unlink");
  goto out;
 }
 if (fp == ((void*)0)) {
  perror("iasl tmp file (read)");
  goto out;
 }
 while ((len = fread(buf, 1, sizeof(buf), fp)) > 0)
  fwrite(buf, 1, len, stdout);
 fclose(fp);

    out:
 if (rmdir(wrkdir) < 0)
  perror("rmdir");
}
