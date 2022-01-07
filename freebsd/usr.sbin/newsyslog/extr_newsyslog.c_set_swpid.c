
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sigwork_entry {int sw_pidok; long sw_pid; char* sw_pidtype; } ;
struct conf_entry {int flags; long pid_cmd_file; } ;
typedef int FILE ;


 int BUFSIZ ;
 int CE_SIGNALGROUP ;
 scalar_t__ ENOENT ;
 long MAX_PID ;
 long MIN_PID ;
 scalar_t__ enforcepid ;
 scalar_t__ errno ;
 int fclose (int *) ;
 scalar_t__ feof (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (long,char*) ;
 int isspacech (char) ;
 long strtol (char*,char**,int) ;
 scalar_t__ verbose ;
 int warn (char*,long) ;
 int warnx (char*,long,...) ;

__attribute__((used)) static void
set_swpid(struct sigwork_entry *swork, const struct conf_entry *ent)
{
 FILE *f;
 long minok, maxok, rval;
 char *endp, *linep, line[BUFSIZ];

 minok = MIN_PID;
 maxok = MAX_PID;
 swork->sw_pidok = 0;
 swork->sw_pid = 0;
 swork->sw_pidtype = "daemon";
 if (ent->flags & CE_SIGNALGROUP) {





  minok = -MAX_PID;
  maxok = -MIN_PID;
  swork->sw_pidtype = "process-group";
 }

 f = fopen(ent->pid_cmd_file, "r");
 if (f == ((void*)0)) {
  if (errno == ENOENT && enforcepid == 0) {







   swork->sw_pidok = 1;
   warnx("pid file doesn't exist: %s", ent->pid_cmd_file);
  } else
   warn("can't open pid file: %s", ent->pid_cmd_file);
  return;
 }

 if (fgets(line, BUFSIZ, f) == ((void*)0)) {






  if (feof(f) && enforcepid == 0) {
   swork->sw_pidok = 1;
   warnx("pid/cmd file is empty: %s", ent->pid_cmd_file);
  } else
   warn("can't read from pid file: %s", ent->pid_cmd_file);
  (void)fclose(f);
  return;
 }
 (void)fclose(f);

 errno = 0;
 linep = line;
 while (*linep == ' ')
  linep++;
 rval = strtol(linep, &endp, 10);
 if (*endp != '\0' && !isspacech(*endp)) {
  warnx("pid file does not start with a valid number: %s",
      ent->pid_cmd_file);
 } else if (rval < minok || rval > maxok) {
  warnx("bad value '%ld' for process number in %s",
      rval, ent->pid_cmd_file);
  if (verbose)
   warnx("\t(expecting value between %ld and %ld)",
       minok, maxok);
 } else {
  swork->sw_pidok = 1;
  swork->sw_pid = rval;
 }

 return;
}
