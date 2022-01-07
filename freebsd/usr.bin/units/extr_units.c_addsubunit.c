
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXSUBUNITS ;
 char* NULLUNIT ;
 char* dupstr (char*) ;
 int warnx (char*) ;

__attribute__((used)) static int
addsubunit(char *product[], char *toadd)
{
 char **ptr;

 for (ptr = product; *ptr && *ptr != NULLUNIT; ptr++);
 if (ptr >= product + MAXSUBUNITS) {
  warnx("memory overflow in unit reduction");
  return 1;
 }
 if (!*ptr)
  *(ptr + 1) = ((void*)0);
 *ptr = dupstr(toadd);
 return 0;
}
