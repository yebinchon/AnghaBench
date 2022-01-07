
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phandle_t ;


 int ofw_nextprop (int,int ,int *,char*,int) ;

int
ofw_firstprop(int fd, phandle_t node, char *buf, int buflen)
{

 return (ofw_nextprop(fd, node, ((void*)0), buf, buflen));
}
