
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;


 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int le32dec (scalar_t__) ;

__attribute__((used)) static u_int
otus_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 uint32_t val, *hashes = arg;

 val = le32dec(LLADDR(sdl) + 4);

 val = val & 0x0000ff00;
 val = val >> 8;


 val = val >> 2;
 if (val < 32)
  hashes[0] |= 1 << val;
 else
  hashes[1] |= 1 << (val - 32);

 return (1);
}
