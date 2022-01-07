
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
typedef int token_t ;
struct TYPE_3__ {int * cr_rights; } ;
typedef TYPE_1__ cap_rights_t ;


 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT64 (int *,int ) ;
 int AUT_RIGHTS ;
 int GET_TOKEN_AREA (int *,int *,int) ;
 int nitems (int *) ;

token_t *
au_to_rights(cap_rights_t *rightsp)
{
 token_t *t;
 u_char *dptr;
 int i;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(*rightsp));

 ADD_U_CHAR(dptr, AUT_RIGHTS);
 for (i = 0; i < nitems(rightsp->cr_rights); i++)
  ADD_U_INT64(dptr, rightsp->cr_rights[i]);

 return (t);
}
