
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int clear () ;
 int fflush (int ) ;
 int localtime (int *) ;
 int printf (char*,...) ;
 int stdout ;
 int strftime (char*,int,char*,int ) ;
 int time (int *) ;

__attribute__((used)) static void
timestamp(const char *buf)
{
 time_t t;
 char btmp[1024];

 clear();
 printf("\n---------------------------------------------\n");
 t = time(((void*)0));
 strftime(btmp, 1024, "Time: %d %b %H:%M", localtime(&t));
 printf("%s\n", btmp);
 printf("%s\n", buf);
 printf("---------------------------------------------\n");
 fflush(stdout);
}
