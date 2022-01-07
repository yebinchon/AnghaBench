
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; scalar_t__ type; char* comment; int catid; } ;


 char* FMT ;
 size_t NKWINFO ;
 scalar_t__ TYPE_NUM ;
 TYPE_1__* kwinfo ;
 char* lookup_localecat (int ) ;
 int printf (char*,...) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;

void
showkeywordslist(char *substring)
{
 size_t i;



 if (substring == ((void*)0))
  printf("List of available keywords\n\n");
 else
  printf("List of available keywords starting with '%s'\n\n",
      substring);
 printf("%-20s %-12s %-7s %-20s\n", "Keyword", "Category", "Type", "Comment");
 printf("-------------------- ------------ ------- --------------------\n");
 for (i = 0; i < NKWINFO; i++) {
  if (substring != ((void*)0)) {
   if (strncmp(kwinfo[i].name, substring,
       strlen(substring)) != 0)
    continue;
  }
  printf("%-20s %-12s %-7s %-20s\n",
   kwinfo[i].name,
   lookup_localecat(kwinfo[i].catid),
   (kwinfo[i].type == TYPE_NUM) ? "number" : "string",
   kwinfo[i].comment);
 }
}
