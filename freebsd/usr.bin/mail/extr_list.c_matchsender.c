
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * message ;
 char* nameof (int *,int ) ;
 int * strcasestr (char*,char*) ;

int
matchsender(char *str, int mesg)
{
 char *cp;


 if (*str == '\0')
  return (0);

 cp = nameof(&message[mesg - 1], 0);
 return (strcasestr(cp, str) != ((void*)0));
}
