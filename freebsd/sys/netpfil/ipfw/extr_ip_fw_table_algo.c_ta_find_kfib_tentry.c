
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_info {int data; } ;
struct sockaddr_in6 {int sin6_len; scalar_t__ sin6_family; int rti_addrs; int sin6_addr; struct sockaddr** rti_info; } ;
struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct rt_addrinfo {int sin6_len; scalar_t__ sin6_family; int rti_addrs; int sin6_addr; struct sockaddr** rti_info; } ;
typedef int mask6 ;
typedef int key6 ;
struct TYPE_5__ {int addr6; int addr; } ;
struct TYPE_6__ {scalar_t__ subtype; TYPE_1__ k; } ;
typedef TYPE_2__ ipfw_obj_tentry ;
typedef int info ;
typedef int dst6 ;


 scalar_t__ AF_INET ;
 int ENOENT ;
 size_t RTAX_DST ;
 size_t RTAX_NETMASK ;
 int RTA_NETMASK ;
 int bzero (struct sockaddr_in6*,int) ;
 scalar_t__ rib_lookup_info (int ,struct sockaddr*,int ,int ,struct sockaddr_in6*) ;
 int ta_dump_kfib_tentry_int (struct sockaddr*,struct sockaddr*,TYPE_2__*) ;

__attribute__((used)) static int
ta_find_kfib_tentry(void *ta_state, struct table_info *ti,
    ipfw_obj_tentry *tent)
{
 struct rt_addrinfo info;
 struct sockaddr_in6 key6, dst6, mask6;
 struct sockaddr *dst, *key, *mask;


 bzero(&dst6, sizeof(dst6));
 dst6.sin6_len = sizeof(dst6);
 dst = (struct sockaddr *)&dst6;
 bzero(&mask6, sizeof(mask6));
 mask6.sin6_len = sizeof(mask6);
 mask = (struct sockaddr *)&mask6;

 bzero(&info, sizeof(info));
 info.rti_info[RTAX_DST] = dst;
 info.rti_info[RTAX_NETMASK] = mask;


 bzero(&key6, sizeof(key6));
 key6.sin6_family = tent->subtype;
 key = (struct sockaddr *)&key6;

 if (tent->subtype == AF_INET) {
  ((struct sockaddr_in *)&key6)->sin_addr = tent->k.addr;
  key6.sin6_len = sizeof(struct sockaddr_in);
 } else {
  key6.sin6_addr = tent->k.addr6;
  key6.sin6_len = sizeof(struct sockaddr_in6);
 }

 if (rib_lookup_info(ti->data, key, 0, 0, &info) != 0)
  return (ENOENT);
 if ((info.rti_addrs & RTA_NETMASK) == 0)
  mask = ((void*)0);

 ta_dump_kfib_tentry_int(dst, mask, tent);

 return (0);
}
