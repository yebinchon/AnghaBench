
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int LOG_LOCAL2 ;
 int LOG_NDELAY ;
 int LOG_PID ;
 int LOG_UPTO (int ) ;
 int LOG_WARNING ;
 int Verbose ;
 int atoi (int ) ;
 int chat_expect (char*) ;
 char* chat_file ;
 int chat_send (char*) ;
 char* copy_of (int ) ;
 int do_file (char*) ;
 int echo ;
 int fatal (int,char*,char*) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*) ;
 int free (char*) ;
 int getopt (int,char**,char*) ;
 int init () ;
 int openlog (char*,int,int ) ;
 int optarg ;
 scalar_t__ optind ;
 char* phone_num ;
 char* phone_num2 ;
 char* report_file ;
 int * report_fp ;
 int setlogmask (int ) ;
 int * stderr ;
 int terminate (int ) ;
 int timeout ;
 scalar_t__ to_log ;
 int to_stderr ;
 int tzset () ;
 int usage () ;
 scalar_t__ verbose ;

int
main(int argc, char *argv[])
{
    int option;

    tzset();

    while ((option = getopt(argc, argv, "ef:r:sSt:T:U:vV")) != -1) {
 switch (option) {
 case 'e':
     ++echo;
     break;

 case 'f':
     if (chat_file != ((void*)0))
  free(chat_file);
     chat_file = copy_of(optarg);
     break;

 case 'r':
     if (report_fp != ((void*)0))
  fclose(report_fp);
     if (report_file != ((void*)0))
  free(report_file);
     report_file = copy_of(optarg);
     report_fp = fopen(report_file, "a");
     if (report_fp != ((void*)0)) {
  if (verbose)
      fprintf(report_fp, "Opening \"%s\"...\n", report_file);
     } else
  fatal(2, "cannot open \"%s\" for appending", report_file);
     break;

 case 's':
     ++to_stderr;
     break;

 case 'S':
     to_log = 0;
     break;

 case 't':
     timeout = atoi(optarg);
     break;

 case 'T':
     if (phone_num != ((void*)0))
  free(phone_num);
     phone_num = copy_of(optarg);
     break;

 case 'U':
     if (phone_num2 != ((void*)0))
  free(phone_num2);
     phone_num2 = copy_of(optarg);
     break;

 case 'v':
     ++verbose;
     break;

 case 'V':
     ++Verbose;
     break;

 default:
     usage();
     break;
 }
    }

    argc -= optind;
    argv += optind;




    if (report_fp == ((void*)0))
 report_fp = stderr;

    if (to_log) {
 openlog("chat", LOG_PID | LOG_NDELAY, LOG_LOCAL2);

 if (verbose)
     setlogmask(LOG_UPTO(LOG_INFO));
 else
     setlogmask(LOG_UPTO(LOG_WARNING));
    }

    if (chat_file != ((void*)0)) {
 if (*argv != ((void*)0))
     usage();
 else {
            init();
     do_file(chat_file);
 }
    } else {
 init();
 while (*argv != ((void*)0) && argc > 0) {
     chat_expect(*argv);
     argv++;
     argc--;

     if (*argv != ((void*)0) && argc > 0) {
  chat_send(*argv);
  argv++;
  argc--;
     }
 }
    }

    terminate(0);
    return 0;
}
