
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_len; int sin6_addr; int sin6_family; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int addr6; } ;
struct llentry {TYPE_1__ r_l3addr; } ;


 int AF_INET6 ;
 int bzero (struct sockaddr_in6*,int) ;

__attribute__((used)) static void
in6_lltable_fill_sa_entry(const struct llentry *lle, struct sockaddr *sa)
{
 struct sockaddr_in6 *sin6;

 sin6 = (struct sockaddr_in6 *)sa;
 bzero(sin6, sizeof(*sin6));
 sin6->sin6_family = AF_INET6;
 sin6->sin6_len = sizeof(*sin6);
 sin6->sin6_addr = lle->r_l3addr.addr6;
}
