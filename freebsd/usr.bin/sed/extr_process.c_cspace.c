
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef enum e_spflag { ____Placeholder_e_spflag } e_spflag ;
struct TYPE_3__ {size_t len; size_t blen; char* space; char* back; } ;
typedef TYPE_1__ SPACE ;


 int REPLACE ;
 int err (int,char*) ;
 int memmove (char*,char const*,size_t) ;
 char* realloc (char*,size_t) ;

void
cspace(SPACE *sp, const char *p, size_t len, enum e_spflag spflag)
{
 size_t tlen;


 tlen = sp->len + len + 1;
 if (tlen > sp->blen) {
  sp->blen = tlen + 1024;
  if ((sp->space = sp->back = realloc(sp->back, sp->blen)) ==
      ((void*)0))
   err(1, "realloc");
 }

 if (spflag == REPLACE)
  sp->len = 0;

 memmove(sp->space + sp->len, p, len);

 sp->space[sp->len += len] = '\0';
}
