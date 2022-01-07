
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_set ;


 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int select (int,int *,int *,int *,int *) ;

int
pdwait(int pfd)
{
 fd_set fdset;

 FD_ZERO(&fdset);
 FD_SET(pfd, &fdset);

 return (select(pfd + 1, ((void*)0), &fdset, ((void*)0), ((void*)0)) == -1 ? -1 : 0);
}
