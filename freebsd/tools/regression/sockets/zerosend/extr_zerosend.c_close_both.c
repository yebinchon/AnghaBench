
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;

__attribute__((used)) static void
close_both(int *fdp)
{

 close(fdp[0]);
 fdp[0] = -1;
 close(fdp[1]);
 fdp[1] = -1;
}
