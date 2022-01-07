
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sndstat_register (int *,char*,int *) ;

int
sndstat_registerfile(char *str)
{
 return (sndstat_register(((void*)0), str, ((void*)0)));
}
