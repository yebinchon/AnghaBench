
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int _exit (int) ;
 int doterminate ;
 int terminate_wfd ;
 int write (int ,char*,int) ;

__attribute__((used)) static void
terminate(int signum)
{
 char c = '\0';
 ssize_t wr;

 doterminate = signum;
 wr = write(terminate_wfd, &c, 1);
 if (wr < 1)
  _exit(2);
}
