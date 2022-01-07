
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_long ;
struct TYPE_3__ {scalar_t__ s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
struct in_ifaddr {scalar_t__ ia_subnetmask; scalar_t__ ia_subnet; TYPE_2__ ia_broadaddr; } ;
struct in_addr {scalar_t__ s_addr; } ;


 scalar_t__ IN_RFC3021_MASK ;
 scalar_t__ ntohl (scalar_t__) ;

int
in_ifaddr_broadcast(struct in_addr in, struct in_ifaddr *ia)
{

 return ((in.s_addr == ia->ia_broadaddr.sin_addr.s_addr ||




     (ia->ia_subnetmask != IN_RFC3021_MASK &&
     ntohl(in.s_addr) == ia->ia_subnet)) &&





     ia->ia_subnetmask != (u_long)0xffffffff);
}
