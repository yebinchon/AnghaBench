
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in6 {int sin6_scope_id; int sin6_port; int sin6_addr; } ;
struct sockaddr_in {int sin_port; int sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int INET6_ADDRSTRLEN ;
 int SCTP_PRINTF (char*,...) ;
 int ip6_sprintf (char*,int *) ;
 int ntohs (int ) ;

void
sctp_print_address(struct sockaddr *sa)
{




 switch (sa->sa_family) {
 default:
  SCTP_PRINTF("?\n");
  break;
 }
}
