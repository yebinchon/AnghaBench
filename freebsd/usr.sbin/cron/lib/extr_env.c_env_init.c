
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;

char **
env_init()
{
 register char **p = (char **) malloc(sizeof(char *));

 if (p)
  p[0] = ((void*)0);
 return (p);
}
