
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ignore ;
 int ignore1 (char**,scalar_t__,char*) ;

int
retfield(void *v)
{
 char **list = v;

 return (ignore1(list, ignore + 1, "retained"));
}
