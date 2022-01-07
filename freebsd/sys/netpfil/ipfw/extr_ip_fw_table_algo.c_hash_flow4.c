
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_6__ {int dport; int sport; } ;
struct TYPE_5__ {int s_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct fhashentry4 {TYPE_3__ e; TYPE_2__ sip; TYPE_1__ dip; } ;



__attribute__((used)) static __inline uint32_t
hash_flow4(struct fhashentry4 *f, int hsize)
{
 uint32_t i;

 i = (f->dip.s_addr) ^ (f->sip.s_addr) ^ (f->e.dport) ^ (f->e.sport);

 return (i % (hsize - 1));
}
