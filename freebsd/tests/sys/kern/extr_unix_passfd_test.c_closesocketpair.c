
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;

__attribute__((used)) static void
closesocketpair(int *fdp)
{

 close(fdp[0]);
 close(fdp[1]);
}
