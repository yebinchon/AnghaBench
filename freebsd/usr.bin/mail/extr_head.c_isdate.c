
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cmatch (char*,int *) ;
 int ** date_formats ;

int
isdate(char date[])
{
 int i;

 for(i = 0; date_formats[i] != ((void*)0); i++) {
  if (cmatch(date, date_formats[i]))
   return (1);
 }
 return (0);
}
