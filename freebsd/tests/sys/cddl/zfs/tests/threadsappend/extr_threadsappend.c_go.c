
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int buf ;


 int memset (char*,int,int) ;
 int outfd ;
 int write (int ,char*,int) ;

__attribute__((used)) static void *
go(void *data)
{
 int i = 0, n = *(int *)data;
 ssize_t ret = 0;
 char buf[8192] = {0};
 (void) memset(buf, n, sizeof (buf));

 for (i = 0; i < 80; i++) {
  ret = write(outfd, buf, sizeof (buf));
 }
 return (((void*)0));
}
