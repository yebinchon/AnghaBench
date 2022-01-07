
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct sockaddr_in {TYPE_2__ sin_addr; } ;
struct sockaddr {scalar_t__ sa_family; } ;
struct in6_addr {int dummy; } ;
struct TYPE_10__ {scalar_t__ kidx; } ;
struct TYPE_7__ {int s_addr; } ;
struct TYPE_9__ {int addr6; TYPE_1__ addr; } ;
struct TYPE_11__ {int masklen; TYPE_4__ v; scalar_t__ subtype; TYPE_3__ k; } ;
typedef TYPE_5__ ipfw_obj_tentry ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int contigmask (int *,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int
ta_dump_kfib_tentry_int(struct sockaddr *paddr, struct sockaddr *pmask,
    ipfw_obj_tentry *tent)
{






 int len;

 len = 0;
 return (0);
}
