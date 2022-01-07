
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef int token_t ;
typedef int gid_t ;


 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int) ;
 int ADD_U_INT32 (int *,int ) ;
 int AUT_NEWGROUPS ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_newgroups(u_int16_t n, gid_t *groups)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 int i;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int16_t) +
     n * sizeof(u_int32_t));

 ADD_U_CHAR(dptr, AUT_NEWGROUPS);
 ADD_U_INT16(dptr, n);
 for (i = 0; i < n; i++)
  ADD_U_INT32(dptr, groups[i]);

 return (t);
}
