
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;


 int BUFSIZ ;
 int err (int,char*,char*) ;
 int * fopen (char*,char*) ;
 char* machinename ;
 int snprintf (char*,int,char*,char*) ;

FILE *
open_makefile_template(void)
{
 FILE *ifp;
 char line[BUFSIZ];

 snprintf(line, sizeof(line), "../../conf/Makefile.%s", machinename);
 ifp = fopen(line, "r");
 if (ifp == ((void*)0)) {
  snprintf(line, sizeof(line), "Makefile.%s", machinename);
  ifp = fopen(line, "r");
 }
 if (ifp == ((void*)0))
  err(1, "%s", line);
 return (ifp);
}
