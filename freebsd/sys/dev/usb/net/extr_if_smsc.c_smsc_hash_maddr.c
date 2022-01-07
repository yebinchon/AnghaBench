
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int smsc_hash (int ) ;

__attribute__((used)) static u_int
smsc_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t hash, *hashtbl = arg;

 hash = smsc_hash(LLADDR(sdl));
 hashtbl[hash >> 5] |= 1 << (hash & 0x1F);

 return (1);
}
