
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int catid; int type; int source; int value_ref; int name; } ;


 char CHAR_MAX ;
 size_t NKWINFO ;



 int TYPE_NUM ;
 int TYPE_UNQ ;
 TYPE_1__* kwinfo ;
 char* kwval_lconv (int ) ;
 char* kwval_ltime (int ) ;
 char* nl_langinfo (int ) ;
 scalar_t__ strcasecmp (char const*,int ) ;

int
kwval_lookup(const char *kwname, char **kwval, int *cat, int *type, int *alloc)
{
 int rval;
 size_t i;
 static char nastr[3] = "-1";

 rval = 0;
 *alloc = 0;
 for (i = 0; i < NKWINFO; i++) {
  if (strcasecmp(kwname, kwinfo[i].name) == 0) {
   rval = 1;
   *cat = kwinfo[i].catid;
   *type = kwinfo[i].type;
   switch (kwinfo[i].source) {
   case 129:
    *kwval = nl_langinfo(kwinfo[i].value_ref);
    break;
   case 130:
    *kwval = kwval_lconv(kwinfo[i].value_ref);




    if (**kwval == CHAR_MAX) {
     if (*type == TYPE_NUM)
      *type = TYPE_UNQ;
     *kwval = nastr;
    }
    break;
   case 128:
    *kwval = kwval_ltime(kwinfo[i].value_ref);
    *alloc = 1;
    break;
   }
   break;
  }
 }

 return (rval);
}
