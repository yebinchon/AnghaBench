
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_U_CHAR (int *,char) ;
 int ADD_U_INT64 (int *,int ) ;
 char AUT_RETURN64 ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_return64(char status, u_int64_t ret)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, 2 * sizeof(u_char) + sizeof(u_int64_t));

 ADD_U_CHAR(dptr, AUT_RETURN64);
 ADD_U_CHAR(dptr, status);
 ADD_U_INT64(dptr, ret);

 return (t);
}
