
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ u_short ;
typedef int u_int32_t ;
typedef int u_int16_t ;
typedef int u_char ;
typedef int token_t ;
struct sockaddr_in6 {int sin6_addr; int sin6_port; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; int sin_port; } ;
struct sockaddr {int dummy; } ;


 int ADD_MEM (int *,int *,int) ;
 int ADD_U_CHAR (int *,int ) ;
 int ADD_U_INT16 (int *,int ) ;
 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int AUT_SOCKET_EX ;
 int AU_IPv4 ;
 int AU_IPv6 ;
 int GET_TOKEN_AREA (int *,int *,int) ;
 int au_domain_to_bsm (scalar_t__) ;
 int au_socket_type_to_bsm (scalar_t__) ;

token_t *
au_to_socket_ex(u_short so_domain, u_short so_type,
    struct sockaddr *sa_local, struct sockaddr *sa_remote)
{
 token_t *t;
 u_char *dptr = ((void*)0);
 struct sockaddr_in *sin;
 struct sockaddr_in6 *sin6;

 if (so_domain == AF_INET)
  GET_TOKEN_AREA(t, dptr, sizeof(u_char) +
      5 * sizeof(u_int16_t) + 2 * sizeof(u_int32_t));
 else if (so_domain == AF_INET6)
  GET_TOKEN_AREA(t, dptr, sizeof(u_char) +
      5 * sizeof(u_int16_t) + 8 * sizeof(u_int32_t));
 else
  return (((void*)0));

 ADD_U_CHAR(dptr, AUT_SOCKET_EX);
 ADD_U_INT16(dptr, au_domain_to_bsm(so_domain));
 ADD_U_INT16(dptr, au_socket_type_to_bsm(so_type));
 if (so_domain == AF_INET) {
  ADD_U_INT16(dptr, AU_IPv4);
  sin = (struct sockaddr_in *)sa_local;
  ADD_MEM(dptr, &sin->sin_port, sizeof(uint16_t));
  ADD_MEM(dptr, &sin->sin_addr.s_addr, sizeof(uint32_t));
  sin = (struct sockaddr_in *)sa_remote;
  ADD_MEM(dptr, &sin->sin_port, sizeof(uint16_t));
  ADD_MEM(dptr, &sin->sin_addr.s_addr, sizeof(uint32_t));
 } else {
  ADD_U_INT16(dptr, AU_IPv6);
  sin6 = (struct sockaddr_in6 *)sa_local;
  ADD_MEM(dptr, &sin6->sin6_port, sizeof(uint16_t));
  ADD_MEM(dptr, &sin6->sin6_addr, 4 * sizeof(uint32_t));
  sin6 = (struct sockaddr_in6 *)sa_remote;
  ADD_MEM(dptr, &sin6->sin6_port, sizeof(uint16_t));
  ADD_MEM(dptr, &sin6->sin6_addr, 4 * sizeof(uint32_t));
 }

 return (t);
}
