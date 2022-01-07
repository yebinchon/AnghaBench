
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close2 (int,int) ;

__attribute__((used)) static void
close4(int fd1, int fd2, int fd3, int fd4)
{

 close2(fd1, fd2);
 close2(fd3, fd4);
}
