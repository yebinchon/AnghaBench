
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct message {int dummy; } ;


 char* hfield (char*,struct message*) ;
 struct message* message ;
 int * strcasestr (char*,char*) ;
 char** to_fields ;

__attribute__((used)) static int
matchto(char *str, int mesg)
{
 struct message *mp;
 char *cp, **to;

 str++;


 if (*str == '\0')
  return (0);

 mp = &message[mesg - 1];

 for (to = to_fields; *to != ((void*)0); to++) {
  cp = hfield(*to, mp);
  if (cp != ((void*)0) && strcasestr(cp, str) != ((void*)0))
   return (1);
 }
 return (0);
}
