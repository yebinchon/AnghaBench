
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
typedef int u_char ;
typedef int token_t ;


 int ADD_MEM (int *,char const*,scalar_t__) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,scalar_t__) ;
 int AUT_OPAQUE ;
 int GET_TOKEN_AREA (int *,int *,scalar_t__) ;

token_t *
au_to_opaque(const char *data, u_int16_t bytes)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(u_int16_t) + bytes);

 ADD_U_CHAR(dptr, AUT_OPAQUE);
 ADD_U_INT16(dptr, bytes);
 ADD_MEM(dptr, data, bytes);

 return (t);
}
