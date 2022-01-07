
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int32_t ;
typedef int u_char ;
typedef int token_t ;
struct in6_addr {int dummy; } ;


 int ADD_MEM (int *,struct in6_addr*,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT32 (int *,int ) ;
 int AUT_IN_ADDR_EX ;
 int AU_IPv6 ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_in_addr_ex(struct in6_addr *internet_addr)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 u_int32_t type = AU_IPv6;

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + 5 * sizeof(uint32_t));

 ADD_U_CHAR(dptr, AUT_IN_ADDR_EX);
 ADD_U_INT32(dptr, type);
 ADD_MEM(dptr, internet_addr, 4 * sizeof(uint32_t));

 return (t);
}
