
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int busdma_tag_t ;
typedef int bus_size_t ;
typedef int bus_addr_t ;


 int bd_tag_create (char const*,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int errno ;

int
busdma_tag_create(const char *dev, bus_addr_t align, bus_addr_t bndry,
    bus_addr_t maxaddr, bus_size_t maxsz, u_int nsegs, bus_size_t maxsegsz,
    u_int datarate, u_int flags, busdma_tag_t *out_p)
{
 int res;

 res = bd_tag_create(dev, align, bndry, maxaddr, maxsz, nsegs, maxsegsz,
     datarate, flags);
 if (res == -1)
  return (errno);
 *out_p = res;
 return (0);
}
