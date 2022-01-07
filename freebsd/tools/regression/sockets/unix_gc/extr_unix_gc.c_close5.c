
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close2 (int,int) ;
 int close3 (int,int,int) ;

__attribute__((used)) static void
close5(int fd1, int fd2, int fd3, int fd4, int fd5)
{

 close3(fd1, fd2, fd3);
 close2(fd4, fd5);
}
