
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ mkdir (char*,int) ;
 int * mktemp (char*) ;

char *gitmkdtemp(char *template)
{
 if (!*mktemp(template) || mkdir(template, 0700))
  return ((void*)0);
 return template;
}
