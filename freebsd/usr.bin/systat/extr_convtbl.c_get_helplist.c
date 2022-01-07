
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; } ;


 int SC_AUTO ;
 TYPE_1__* convtbl ;
 char* malloc (size_t) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

const char *
get_helplist(void)
{
 int i;
 size_t len;
 static char *buf;

 if (buf == ((void*)0)) {
  len = 0;
  for (i = 0; i <= SC_AUTO; i++)
   len += strlen(convtbl[i].name) + 2;
  if ((buf = malloc(len)) != ((void*)0)) {
   buf[0] = '\0';
   for (i = 0; i <= SC_AUTO; i++) {
    strcat(buf, convtbl[i].name);
    if (i < SC_AUTO)
     strcat(buf, ", ");
   }
  } else
   return ("");
 }
 return (buf);
}
