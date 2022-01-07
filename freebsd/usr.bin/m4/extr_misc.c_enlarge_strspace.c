
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* sstr; } ;


 scalar_t__ STORAGE_STRSPACE ;
 char* endest ;
 char* ep ;
 int errx (int,char*) ;
 int free (char*) ;
 char* malloc (int) ;
 int memcpy (char*,char*,int) ;
 TYPE_1__* mstack ;
 int sp ;
 scalar_t__* sstack ;
 int strsize ;
 char* strspace ;

void
enlarge_strspace(void)
{
 char *newstrspace;
 int i;

 strsize *= 2;
 newstrspace = malloc(strsize + 1);
 if (!newstrspace)
  errx(1, "string space overflow");
 memcpy(newstrspace, strspace, strsize/2);
 for (i = 0; i <= sp; i++)
  if (sstack[i] == STORAGE_STRSPACE)
   mstack[i].sstr = (mstack[i].sstr - strspace)
       + newstrspace;
 ep = (ep-strspace) + newstrspace;
 free(strspace);
 strspace = newstrspace;
 endest = strspace + strsize;
}
