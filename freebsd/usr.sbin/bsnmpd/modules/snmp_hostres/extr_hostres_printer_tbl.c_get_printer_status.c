
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct printer {char* lock_file; char* spool_dir; char* status_file; } ;
typedef int statfile ;
typedef int lockfile ;
typedef int fline ;
typedef enum PrinterStatus { ____Placeholder_PrinterStatus } PrinterStatus ;
typedef int FILE ;


 int LOCK_NB ;
 int LOCK_SH ;
 int LOG_ERR ;
 int MAXPATHLEN ;
 int O_RDONLY ;
 int PS_IDLE ;
 int PS_OTHER ;
 int PS_PRINTING ;
 int PS_UNKNOWN ;
 int close (int) ;
 int errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 scalar_t__ flock (int,int) ;
 int * fopen (char*,char*) ;
 int memset (char*,char,int) ;
 int open (char*,int ) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int strerror (int ) ;
 int strlcpy (char*,char*,int) ;
 int * strstr (char*,char*) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static enum PrinterStatus
get_printer_status(const struct printer *pp)
{
 char statfile[MAXPATHLEN];
 char lockfile[MAXPATHLEN];
 char fline[128];
 int fd;
 FILE *f = ((void*)0);
 enum PrinterStatus ps = PS_UNKNOWN;

 if (pp->lock_file[0] == '/')
  strlcpy(lockfile, pp->lock_file, sizeof(lockfile));
 else
  snprintf(lockfile, sizeof(lockfile), "%s/%s",
      pp->spool_dir, pp->lock_file);

 fd = open(lockfile, O_RDONLY);
 if (fd < 0 || flock(fd, LOCK_SH | LOCK_NB) == 0) {
  ps = PS_IDLE;
  goto LABEL_DONE;
 }

 if (pp->status_file[0] == '/')
  strlcpy(statfile, pp->status_file, sizeof(statfile));
 else
  snprintf(statfile, sizeof(statfile), "%s/%s",
      pp->spool_dir, pp->status_file);

 f = fopen(statfile, "r");
 if (f == ((void*)0)) {
  syslog(LOG_ERR, "cannot open status file: %s", strerror(errno));
  ps = PS_UNKNOWN;
  goto LABEL_DONE;
 }

 memset(&fline[0], '\0', sizeof(fline));
 if (fgets(fline, sizeof(fline) -1, f) == ((void*)0)) {
  ps = PS_UNKNOWN;
  goto LABEL_DONE;
 }

 if (strstr(fline, "is ready and printing") != ((void*)0)) {
  ps = PS_PRINTING;
  goto LABEL_DONE;
 }

 if (strstr(fline, "to become ready (offline?)") != ((void*)0)) {
  ps = PS_OTHER;
  goto LABEL_DONE;
 }

LABEL_DONE:
 if (fd >= 0)
  (void)close(fd);

 if (f != ((void*)0))
  (void)fclose(f);

 return (ps);
}
