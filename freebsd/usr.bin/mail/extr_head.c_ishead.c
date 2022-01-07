
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct headline {int * l_date; } ;


 int BUFSIZ ;
 int fail (char*,char*) ;
 int isdate (int *) ;
 int parse (char*,struct headline*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;

int
ishead(char linebuf[])
{
 struct headline hl;
 char parbuf[BUFSIZ];

 if (strncmp(linebuf, "From ", 5) != 0)
  return (0);
 parse(linebuf, &hl, parbuf);
 if (hl.l_date == ((void*)0)) {
  fail(linebuf, "No date field");
  return (0);
 }
 if (!isdate(hl.l_date)) {
  fail(linebuf, "Date field not legal date");
  return (0);
 }



 return (1);
}
