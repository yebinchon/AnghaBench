
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int column_process ;
 int dup2 (int,int) ;
 int fd_out ;
 int fflush (int ) ;
 int finish_command (int *) ;
 int stdout ;

int stop_column_filter(void)
{
 if (fd_out == -1)
  return -1;

 fflush(stdout);
 close(1);
 finish_command(&column_process);
 dup2(fd_out, 1);
 close(fd_out);
 fd_out = -1;
 return 0;
}
