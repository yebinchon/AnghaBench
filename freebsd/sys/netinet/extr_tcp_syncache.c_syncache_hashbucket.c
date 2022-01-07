
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint32_t ;
struct syncache_head {int dummy; } ;
struct in_conninfo {int inc_ie; } ;
struct TYPE_2__ {size_t hashmask; struct syncache_head* hashbase; int hash_secret; } ;


 TYPE_1__ V_tcp_syncache ;
 size_t jenkins_hash32 (size_t*,int,int ) ;

__attribute__((used)) static struct syncache_head *
syncache_hashbucket(struct in_conninfo *inc)
{
 uint32_t hash;
 hash = jenkins_hash32((uint32_t *)&inc->inc_ie, 5,
     V_tcp_syncache.hash_secret) & V_tcp_syncache.hashmask;

 return (&V_tcp_syncache.hashbase[hash]);
}
