
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rusage {int ru_utime; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int MaxIterations ;
 int RUSAGE_SELF ;
 int err (int ,char*) ;
 int exit (int ) ;
 int * getenv (int ) ;
 int getrusage (int ,struct rusage*) ;
 int name ;
 int name2 ;
 int nameValuePair ;
 int putenv (int ) ;
 int report_time (char*,int *,int *) ;
 int setenv (int ,int ,int) ;
 int value1 ;
 int value2 ;

int
main(int argc, char **argv)
{
 int iterations;
 struct rusage endUsage;
 struct rusage startUsage;




 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)
  if (getenv(name) == ((void*)0))
   err(EXIT_FAILURE, "getenv(name)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("getenv(name)", &startUsage.ru_utime, &endUsage.ru_utime);





 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)
  if (setenv(name, value1, 1) == -1)
   err(EXIT_FAILURE, "setenv(name, value1, 1)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("setenv(name, value1, 1)", &startUsage.ru_utime,
     &endUsage.ru_utime);





 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)

  if (getenv(name) == ((void*)0))
   err(EXIT_FAILURE, "getenv(name)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("getenv(name)", &startUsage.ru_utime, &endUsage.ru_utime);





 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)

  if (getenv(name2) == ((void*)0))
   err(EXIT_FAILURE, "getenv(name2)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("getenv(name2)", &startUsage.ru_utime, &endUsage.ru_utime);





 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)
  if (setenv(name, value2, 1) == -1)
   err(EXIT_FAILURE, "setenv(name, value2, 1)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("setenv(name, value2, 1)", &startUsage.ru_utime,
     &endUsage.ru_utime);





 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)

  if (getenv(name2) == ((void*)0))
   err(EXIT_FAILURE, "getenv(name)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("getenv(name)", &startUsage.ru_utime, &endUsage.ru_utime);





 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)

  if (getenv(name2) == ((void*)0))
   err(EXIT_FAILURE, "getenv(name2)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("getenv(name2)", &startUsage.ru_utime, &endUsage.ru_utime);





 getrusage(RUSAGE_SELF, &startUsage);


 for (iterations = 0; iterations < MaxIterations; iterations++)
  if (putenv(nameValuePair) == -1)
   err(EXIT_FAILURE, "putenv(nameValuePair)");

 getrusage(RUSAGE_SELF, &endUsage);

 report_time("putenv(nameValuePair)", &startUsage.ru_utime,
     &endUsage.ru_utime);


 exit(EXIT_SUCCESS);
}
