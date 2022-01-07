
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int token_t ;
struct ip {int dummy; } ;


 int ADD_MEM (int *,struct ip*,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int AUT_IP ;
 int GET_TOKEN_AREA (int *,int *,int) ;

token_t *
au_to_ip(struct ip *ip)
{
 token_t *t;
 u_char *dptr = ((void*)0);

 GET_TOKEN_AREA(t, dptr, sizeof(u_char) + sizeof(struct ip));

 ADD_U_CHAR(dptr, AUT_IP);
 ADD_MEM(dptr, ip, sizeof(struct ip));

 return (t);
}
