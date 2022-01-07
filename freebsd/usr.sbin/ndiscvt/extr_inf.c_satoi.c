
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
satoi (const char *nptr)
{
 if (nptr != ((void*)0) && strlen(nptr))
  return (atoi(nptr));
 return (0);
}
