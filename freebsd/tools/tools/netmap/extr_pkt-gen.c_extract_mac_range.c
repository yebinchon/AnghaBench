
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ether_addr {int dummy; } ;
struct mac_range {struct ether_addr start; int name; struct ether_addr end; } ;
struct TYPE_6__ {struct ether_addr* ether_dhost; struct ether_addr* ether_shost; } ;
struct TYPE_5__ {void* dst_mac_range; TYPE_1__* g; struct ether_addr* dst_mac; void* src_mac_range; struct ether_addr* src_mac; } ;
struct TYPE_4__ {int dst_mac; int src_mac; } ;


 int D (char*,int ,...) ;
 void* atoi (scalar_t__) ;
 int bcopy (struct ether_addr*,struct ether_addr*,int) ;
 TYPE_3__* eh ;
 struct ether_addr* ether_aton (int ) ;
 int ether_ntoa (struct ether_addr*) ;
 scalar_t__ index (int ,char) ;
 scalar_t__ p ;
 TYPE_2__* targ ;
 scalar_t__ verbose ;

__attribute__((used)) static int
extract_mac_range(struct mac_range *r)
{
 struct ether_addr *e;
 if (verbose)
     D("extract MAC range from %s", r->name);

 e = ether_aton(r->name);
 if (e == ((void*)0)) {
  D("invalid MAC address '%s'", r->name);
  return 1;
 }
 bcopy(e, &r->start, 6);
 bcopy(e, &r->end, 6);
 if (verbose)
  D("%s starts at %s", r->name, ether_ntoa(&r->start));
 return 0;
}
