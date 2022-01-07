
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
struct skiminfo {int fatalerr; int entries; } ;
struct printer {int spool_dir; int printer; } ;


 scalar_t__ ENOENT ;
 int _PATH_PRINTCAP ;
 int check_spool_dirs () ;
 scalar_t__ errno ;
 int firstprinter (struct printer*,int*) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ interpret_error (struct printer*,int) ;
 int make_spool_dir (struct printer*) ;
 int nextprinter (struct printer*,int*) ;
 int note_spool_dir (struct printer*,struct stat*) ;
 int optarg ;
 int optind ;
 int problems ;
 int setprintcap (char*) ;
 struct skiminfo* skim_printcap (char*,int) ;
 scalar_t__ stat (int ,struct stat*) ;
 char* strdup (int ) ;
 int usage () ;
 int warn (char*,int ,int ) ;
 int warnx (char*,int,...) ;

int
main(int argc, char **argv)
{
 struct skiminfo *skres;
 char *pcap_fname;
 int c, error, makedirs, more, queuecnt, verbosity;
 struct printer myprinter, *pp;

 makedirs = 0;
 queuecnt = 0;
 verbosity = 0;
 pcap_fname = ((void*)0);
 pp = &myprinter;

 while ((c = getopt(argc, argv, "df:v")) != -1) {
  switch (c) {
  case 'd':
   makedirs = 1;
   break;

  case 'f':
   pcap_fname = strdup(optarg);
   setprintcap(pcap_fname);
   break;

  case 'v':
   verbosity++;
   break;

  default:
   usage();
  }
 }

 if (optind != argc)
  usage();

 if (pcap_fname == ((void*)0))
  pcap_fname = strdup(_PATH_PRINTCAP);
 skres = skim_printcap(pcap_fname, verbosity);
 if (skres == ((void*)0)) {
  problems = 1;
  goto main_ret;
 } else if (skres->fatalerr) {
  problems = skres->fatalerr;
  goto main_ret;
 }





 more = firstprinter(pp, &error);
 if (interpret_error(pp, error) && more)
  goto next;

 while (more) {
  struct stat stab;

  queuecnt++;
  errno = 0;
  if (stat(pp->spool_dir, &stab) < 0) {
   if (errno == ENOENT && makedirs) {
    make_spool_dir(pp);
   } else {
    problems++;
    warn("%s: %s", pp->printer, pp->spool_dir);
   }
  } else {
   note_spool_dir(pp, &stab);
  }



next:
  more = nextprinter(pp, &error);
  if (interpret_error(pp, error) && more)
   goto next;
 }

 check_spool_dirs();

 if (queuecnt != skres->entries) {
  warnx("WARNING: found %d entries when skimming %s,",
      skres->entries, pcap_fname);
  warnx("WARNING:  but only found %d queues to process!",
      queuecnt);
 }

main_ret:
 free(pcap_fname);
 return (problems);
}
