
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_isdst; int tm_hour; int tm_min; int tm_wday; int tm_mday; scalar_t__ tm_sec; } ;


 int EOF ;







 int expect (int) ;
 int init_scanner (int,char**) ;
 struct tm* localtime (scalar_t__*) ;
 int minus (struct tm*) ;
 scalar_t__ mktime (struct tm*) ;
 int month (struct tm*) ;
 int optind ;
 int panic (char*) ;
 int plus (struct tm*) ;
 int scc ;
 scalar_t__ time (int *) ;
 int tod (struct tm*) ;
 int token () ;
 int usage () ;

time_t
parsetime(int argc, char **argv)
{



    time_t nowtimer, runtimer;
    struct tm nowtime, runtime;
    int hr = 0;


    nowtimer = time(((void*)0));
    nowtime = *localtime(&nowtimer);

    runtime = nowtime;
    runtime.tm_sec = 0;
    runtime.tm_isdst = 0;

    if (argc <= optind)
 usage();

    init_scanner(argc-optind, argv+optind);

    switch (token()) {
    case 131:
     if (scc < 1) {
  return nowtimer;
     }

     expect(129);

    case 129:
     plus(&runtime);
     break;




    case 133:
     minus(&runtime);
     break;
    case 130:
     tod(&runtime);
     month(&runtime);
     break;
    case 128:
     hr += 4;

    case 132:
     hr += 12;

    case 134:
     if (runtime.tm_hour >= hr) {
  runtime.tm_mday++;
  runtime.tm_wday++;
     }
     runtime.tm_hour = hr;
     runtime.tm_min = 0;
     token();

    default:
     month(&runtime);
     break;
    }
    expect(EOF);



    runtime.tm_isdst = -1;
    runtimer = mktime(&runtime);

    if (runtimer < 0)
 panic("garbled time");

    if (nowtimer > runtimer)
 panic("trying to travel back in time");

    return runtimer;
}
