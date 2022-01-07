
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pppoe_tag {int dummy; } ;
struct pppoe_hdr {int length; } ;


 int ntohs (int ) ;

__attribute__((used)) static __inline const struct pppoe_tag*
next_tag(const struct pppoe_hdr* ph)
{
 return (const struct pppoe_tag*)(((const char*)(ph + 1))
     + ntohs(ph->length));
}
