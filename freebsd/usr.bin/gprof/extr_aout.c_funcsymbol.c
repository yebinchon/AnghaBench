
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int n_strx; } ;
struct nlist {int n_type; TYPE_1__ n_un; } ;


 int FALSE ;
 int N_EXT ;
 int N_TEXT ;
 int TRUE ;
 scalar_t__ aflag ;
 scalar_t__ strcmp (char*,char*) ;
 char* strtab ;
 scalar_t__ uflag ;

__attribute__((used)) static bool
funcsymbol(struct nlist *nlistp)
{
    char *name, c;





    if ( ! ( ( nlistp -> n_type == ( N_TEXT | N_EXT ) )
    || ( ( nlistp -> n_type == N_TEXT ) && ( aflag == 0 ) ) ) ) {
 return FALSE;
    }







    name = strtab + nlistp -> n_un.n_strx;
    if ( uflag && *name != '_' )
 return FALSE;
    while ( (c = *name++) ) {
 if ( c == '.' ) {
     return FALSE;
 }
    }
    return TRUE;
}
