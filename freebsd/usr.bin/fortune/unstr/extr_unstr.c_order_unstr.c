
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int pos ;
typedef int off_t ;
typedef int buf ;
struct TYPE_4__ {scalar_t__ str_numstr; } ;
typedef TYPE_1__ STRFILE ;


 int BUFSIZ ;
 int Dataf ;
 int Delimch ;
 int Inf ;
 int SEEK_SET ;
 scalar_t__ STR_ENDSTRING (char*,TYPE_1__) ;
 int be64toh (int ) ;
 char* fgets (char*,int,int ) ;
 int fputs (char*,int ) ;
 int fread (int *,int,int,int ) ;
 int fseeko (int ,int ,int ) ;
 int printf (char*,int) ;
 int stdout ;

__attribute__((used)) static void
order_unstr(STRFILE *tbl)
{
 uint32_t i;
 char *sp;
 off_t pos;
 char buf[BUFSIZ];

 for (i = 0; i < tbl->str_numstr; i++) {
  fread(&pos, 1, sizeof(pos), Dataf);
  fseeko(Inf, be64toh(pos), SEEK_SET);
  if (i != 0)
   printf("%c\n", Delimch);
  for (;;) {
   sp = fgets(buf, sizeof(buf), Inf);
   if (sp == ((void*)0) || STR_ENDSTRING(sp, *tbl))
    break;
   else
    fputs(sp, stdout);
  }
 }
}
