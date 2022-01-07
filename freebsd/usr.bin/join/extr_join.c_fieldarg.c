
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_4__ {scalar_t__ fieldno; scalar_t__ filenum; } ;
typedef int OLIST ;


 int err (int,int *) ;
 int errx (int,char*) ;
 TYPE_1__* olist ;
 int olistalloc ;
 int olistcnt ;
 TYPE_1__* realloc (TYPE_1__*,int) ;
 char* strsep (char**,char*) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static void
fieldarg(char *option)
{
 u_long fieldno, filenum;
 char *end, *token;

 while ((token = strsep(&option, ", \t")) != ((void*)0)) {
  if (*token == '\0')
   continue;
  if (token[0] == '0')
   filenum = fieldno = 0;
  else if ((token[0] == '1' || token[0] == '2') &&
      token[1] == '.') {
   filenum = token[0] - '0';
   fieldno = strtol(token + 2, &end, 10);
   if (*end)
    errx(1, "malformed -o option field");
   if (fieldno == 0)
    errx(1, "field numbers are 1 based");
   --fieldno;
  } else
   errx(1, "malformed -o option field");
  if (olistcnt == olistalloc) {
   olistalloc += 50;
   if ((olist = realloc(olist,
       olistalloc * sizeof(OLIST))) == ((void*)0))
    err(1, ((void*)0));
  }
  olist[olistcnt].filenum = filenum;
  olist[olistcnt].fieldno = fieldno;
  ++olistcnt;
 }
}
