
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;




 int SCTP6_ARE_ADDR_EQUAL (struct sockaddr_in6*,struct sockaddr_in6*) ;

int
sctp_cmpaddr(struct sockaddr *sa1, struct sockaddr *sa2)
{


 if (sa1 == ((void*)0) || sa2 == ((void*)0))
  return (0);


 if (sa1->sa_family != sa2->sa_family)
  return (0);

 switch (sa1->sa_family) {
 default:

  return (0);
 }
}
