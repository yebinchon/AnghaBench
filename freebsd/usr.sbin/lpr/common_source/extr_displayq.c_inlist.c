
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int calc_jobnum (char*,char const**) ;
 char* from_host ;
 int* requ ;
 size_t requests ;
 int strcmp (char const*,char*) ;
 char** user ;
 size_t users ;

int
inlist(char *uname, char *cfile)
{
 int *r, jnum;
 char **u;
 const char *cfhost;

 if (users == 0 && requests == 0)
  return(1);



 for (u = user; u < &user[users]; u++)
  if (!strcmp(*u, uname))
   return(1);



 jnum = calc_jobnum(cfile, &cfhost);
 for (r = requ; r < &requ[requests]; r++)
  if (*r == jnum && !strcmp(cfhost, from_host))
   return(1);
 return(0);
}
