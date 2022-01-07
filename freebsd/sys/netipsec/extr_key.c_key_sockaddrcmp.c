
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int sa_family; scalar_t__ sa_len; } ;
struct TYPE_4__ {int s_addr; } ;
struct TYPE_6__ {int sin_port; TYPE_1__ sin_addr; } ;
struct TYPE_5__ {int sin6_port; int sin6_addr; int sin6_scope_id; } ;




 int IN6_ARE_ADDR_EQUAL (int *,int *) ;
 int bcmp (struct sockaddr const*,struct sockaddr const*,int) ;
 TYPE_3__* satosin (struct sockaddr const*) ;
 TYPE_2__* satosin6 (struct sockaddr const*) ;

int
key_sockaddrcmp(const struct sockaddr *sa1, const struct sockaddr *sa2,
    int port)
{
 if (sa1->sa_family != sa2->sa_family || sa1->sa_len != sa2->sa_len)
  return 1;

 switch (sa1->sa_family) {
 default:
  if (bcmp(sa1, sa2, sa1->sa_len) != 0)
   return 1;
  break;
 }

 return 0;
}
