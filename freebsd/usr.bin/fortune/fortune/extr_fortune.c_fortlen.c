
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int str_flags; } ;
struct TYPE_4__ {TYPE_2__ tbl; int inf; } ;


 int BUFSIZ ;
 int Fort_len ;
 TYPE_1__* Fortfile ;
 int SEEK_SET ;
 int STR_ENDSTRING (char*,TYPE_2__) ;
 int STR_ORDERED ;
 int STR_RANDOM ;
 scalar_t__* Seekpts ;
 int * fgets (char*,int,int ) ;
 int fseeko (int ,scalar_t__,int ) ;
 int open_fp (TYPE_1__*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
fortlen(void)
{
 int nchar;
 char line[BUFSIZ];

 if (!(Fortfile->tbl.str_flags & (STR_RANDOM | STR_ORDERED)))
  nchar = (int)(Seekpts[1] - Seekpts[0]);
 else {
  open_fp(Fortfile);
  fseeko(Fortfile->inf, Seekpts[0], SEEK_SET);
  nchar = 0;
  while (fgets(line, sizeof line, Fortfile->inf) != ((void*)0) &&
         !STR_ENDSTRING(line, Fortfile->tbl))
   nchar += strlen(line);
 }
 Fort_len = nchar;

 return (nchar);
}
