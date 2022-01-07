
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
argcount(char **argv)
{
 char **ap;

 for (ap = argv; *ap++ != ((void*)0);)
  ;
 return (ap - argv - 1);
}
