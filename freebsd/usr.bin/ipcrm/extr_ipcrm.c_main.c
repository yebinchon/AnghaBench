
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int key_t ;


 int IPC_PRIVATE ;
 int IPC_TO_STR (int) ;
 int IPC_TO_STRING (int) ;
 int SIGSYS ;
 int atoi (int ) ;
 int atol (int ) ;
 scalar_t__ errflg ;
 int exit (scalar_t__) ;
 int fprintf (int ,char*,...) ;
 int getopt (int,char**,char*) ;
 int msgrm (int,int) ;
 int not_configured ;
 int optarg ;
 int optind ;
 int optopt ;
 int rmverbose ;
 int semrm (int,int) ;
 int shmrm (int,int) ;
 int signal (int ,int ) ;
 scalar_t__ signaled ;
 int stderr ;
 int toupper (int) ;
 int usage () ;
 int use_sysctl ;
 int warn (char*,int ,int) ;
 int warnx (char*,int ) ;

int
main(int argc, char *argv[])
{
 int c, result, target_id;
 key_t target_key;

 while ((c = getopt(argc, argv, "q:m:s:Q:M:S:vWy")) != -1) {

  signaled = 0;
  switch (c) {
  case 'v':
   rmverbose++;
   break;
  case 'y':
   use_sysctl = 0;
   break;
  }
 }

 optind = 1;
 errflg = 0;
 signal(SIGSYS, not_configured);
 while ((c = getopt(argc, argv, "q:m:s:Q:M:S:vWy")) != -1) {

  signaled = 0;
  switch (c) {
  case 'q':
  case 'm':
  case 's':
   target_id = atoi(optarg);
   if (c == 'q')
    result = msgrm(0, target_id);
   else if (c == 'm')
    result = shmrm(0, target_id);
   else
    result = semrm(0, target_id);
   if (result < 0) {
    errflg++;
    if (!signaled)
     warn("%sid(%d): ",
         IPC_TO_STR(toupper(c)), target_id);
    else
     warnx(
         "%ss are not configured "
         "in the running kernel",
         IPC_TO_STRING(toupper(c)));
   }
   break;
  case 'Q':
  case 'M':
  case 'S':
   target_key = atol(optarg);
   if (target_key == IPC_PRIVATE) {
    warnx("can't remove private %ss",
        IPC_TO_STRING(c));
    continue;
   }
   if (c == 'Q')
    result = msgrm(target_key, 0);
   else if (c == 'M')
    result = shmrm(target_key, 0);
   else
    result = semrm(target_key, 0);
   if (result < 0) {
    errflg++;
    if (!signaled)
     warn("%ss(%ld): ",
         IPC_TO_STR(c), target_key);
    else
     warnx("%ss are not configured "
         "in the running kernel",
         IPC_TO_STRING(c));
   }
   break;
  case 'v':
  case 'y':

   break;
  case 'W':
   msgrm(-1, 0);
   shmrm(-1, 0);
   semrm(-1, 0);
   break;
  case ':':
   fprintf(stderr,
       "option -%c requires an argument\n", optopt);
   usage();
  case '?':
   fprintf(stderr, "unrecognized option: -%c\n", optopt);
   usage();
  }
 }

 if (optind != argc) {
  fprintf(stderr, "unknown argument: %s\n", argv[optind]);
  usage();
 }
 exit(errflg);
}
