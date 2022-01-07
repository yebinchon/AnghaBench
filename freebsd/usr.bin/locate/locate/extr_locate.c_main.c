
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LC_ALL ;
 int UCHAR_MAX ;
 char* _PATH_FCODES ;
 int atoi (char*) ;
 char** colon (char**,char*,char*) ;
 int counter ;
 int exit (int ) ;
 int f_icase ;
 int f_limit ;
 int f_mmap ;
 int f_silent ;
 int f_statistic ;
 int f_stdin ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 int * myctype ;
 char* optarg ;
 scalar_t__ optind ;
 int print_matches (int ) ;
 int search_fopen (char*,char**) ;
 int search_mmap (char*,char**) ;
 char separator ;
 int setlocale (int ,char*) ;
 int strcmp (char*,char*) ;
 int tolower (int) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char **argv)
{
        register int ch;
        char **dbv = ((void*)0);
 char *path_fcodes;



 (void) setlocale(LC_ALL, "");

        while ((ch = getopt(argc, argv, "0Scd:il:ms")) != -1)
                switch(ch) {
                case '0':
   separator = '\0';
   break;
                case 'S':
                        f_statistic = 1;
                        break;
                case 'l':
                        f_limit = atoi(optarg);
                        break;
                case 'd':
                        dbv = colon(dbv, optarg, _PATH_FCODES);
                        break;
                case 'i':
                        f_icase = 1;
                        break;
                case 'm':



      warnx("mmap(2) not implemented");

                        break;
                case 's':
                        f_mmap = 0;
                        break;
                case 'c':
                        f_silent = 1;
                        break;
                default:
                        usage();
                }
        argv += optind;
        argc -= optind;


        if (argc < 1 && !(f_statistic))
                usage();


        if (dbv == ((void*)0) || *dbv == ((void*)0)) {

                if ((path_fcodes = getenv("LOCATE_PATH")) == ((void*)0) ||
       *path_fcodes == '\0')

                        dbv = colon(dbv, _PATH_FCODES, _PATH_FCODES);
                else
                        dbv = colon(dbv, path_fcodes, _PATH_FCODES);
        }

        if (f_icase && UCHAR_MAX < 4096)
                for (ch = 0; ch < UCHAR_MAX + 1; ch++)
                        myctype[ch] = tolower(ch);


        while((path_fcodes = *dbv) != ((void*)0)) {
                dbv++;

                if (!strcmp(path_fcodes, "-"))
                        f_stdin = 1;
  else
   f_stdin = 0;


  f_mmap = 0;

                if (!f_mmap || f_stdin || f_statistic)
   search_fopen(path_fcodes, argv);
                else
   search_mmap(path_fcodes, argv);
        }

        if (f_silent)
                print_matches(counter);
        exit(0);
}
