
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;

__attribute__((used)) static void
close2(int fd1, int fd2)
{

 close(fd1);
 close(fd2);
}
