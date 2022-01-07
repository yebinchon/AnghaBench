
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int inject_params (int,void*,int,int *) ;

int inject(int fd, void *buf, int len)
{
 return inject_params(fd, buf, len, ((void*)0));
}
