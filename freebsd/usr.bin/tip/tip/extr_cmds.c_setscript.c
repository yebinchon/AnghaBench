
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RECORD ;
 int SCRIPT ;
 int SIGEMT ;
 scalar_t__ boolean (char*) ;
 int * fildes ;
 int kill (int ,int ) ;
 int printf (char*,char*) ;
 int read (int ,char*,int) ;
 int * repdes ;
 int size (char*) ;
 int tipout_pid ;
 char* value (int ) ;
 int write (int ,char*,int) ;

void
setscript(void)
{
 char c;




 kill(tipout_pid, SIGEMT);
 if (boolean(value(SCRIPT)))
  write(fildes[1], value(RECORD), size(value(RECORD)));
 write(fildes[1], "\n", 1);



 read(repdes[0], &c, 1);
 if (c == 'n')
  printf("can't create %s\r\n", value(RECORD));
}
