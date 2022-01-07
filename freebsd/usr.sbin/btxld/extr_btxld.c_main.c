
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BTX_MAXCWR ;
 int Eflag ;
 int atexit (int ) ;
 void* bname ;
 int btxld (char*) ;
 void* centry ;
 int cleanup ;
 int format ;
 int getopt (int,char**,char*) ;
 void* lentry ;
 void* lname ;
 void* oname ;
 void* optaddr (void*) ;
 void* optarg ;
 int optfmt (void*) ;
 scalar_t__ optind ;
 void* optpage (void*,int) ;
 void* ppage ;
 int quiet ;
 int usage () ;
 int verbose ;
 void* wpage ;

int
main(int argc, char *argv[])
{
    int c;

    while ((c = getopt(argc, argv, "qvb:E:e:f:l:o:P:W:")) != -1)
 switch (c) {
 case 'q':
     quiet = 1;
     break;
 case 'v':
     verbose = 1;
     break;
 case 'b':
     bname = optarg;
     break;
 case 'E':
     centry = optaddr(optarg);
     Eflag = 1;
     break;
 case 'e':
     lentry = optaddr(optarg);
     break;
 case 'f':
     format = optfmt(optarg);
     break;
 case 'l':
     lname = optarg;
     break;
 case 'o':
     oname = optarg;
     break;
 case 'P':
     ppage = optpage(optarg, 1);
     break;
 case 'W':
     wpage = optpage(optarg, BTX_MAXCWR);
     break;
 default:
     usage();
 }
    argc -= optind;
    argv += optind;
    if (argc != 1)
 usage();
    atexit(cleanup);
    btxld(*argv);
    return 0;
}
