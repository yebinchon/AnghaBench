
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* salloc (scalar_t__) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strlen (char*) ;

char *
reedit(char *subj)
{
 char *newsubj;

 if (subj == ((void*)0))
  return (((void*)0));
 if ((subj[0] == 'r' || subj[0] == 'R') &&
     (subj[1] == 'e' || subj[1] == 'E') &&
     subj[2] == ':')
  return (subj);
 newsubj = salloc(strlen(subj) + 5);
 sprintf(newsubj, "Re: %s", subj);
 return (newsubj);
}
