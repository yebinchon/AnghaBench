
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 int LLADDR (struct sockaddr_dl*) ;
 int cgem_mac_hash (int ) ;

__attribute__((used)) static u_int
cgem_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t *hashes = arg;
 int index;

 index = cgem_mac_hash(LLADDR(sdl));
 if (index > 31)
  hashes[0] |= (1 << (index - 32));
 else
  hashes[1] |= (1 << index);

 return (1);
}
