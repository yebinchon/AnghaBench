
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_char ;
struct TYPE_2__ {int octet; } ;
struct bridge_if {int hold_time; int prot_spec; int br_type; int sysindex; TYPE_1__ br_addr; int bif_name; } ;


 int BaseType_transparent_only ;
 int ETHER_ADDR_LEN ;
 int IFNAMSIZ ;
 int LOG_ERR ;
 int bcopy (int const*,int ,int ) ;
 int bridge_ifs ;
 int bridge_ifs_insert (int *,struct bridge_if*) ;
 int bzero (struct bridge_if*,int) ;
 int dot1dStpProtocolSpecification_ieee8021d ;
 int errno ;
 scalar_t__ malloc (int) ;
 int strerror (int ) ;
 int strlcpy (int ,char const*,int ) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static struct bridge_if *
bridge_new_bif(const char *bif_n, uint32_t sysindex, const u_char *physaddr)
{
 struct bridge_if *bif;

 if ((bif = (struct bridge_if *) malloc(sizeof(*bif)))== ((void*)0)) {
  syslog(LOG_ERR, "bridge new interface failed: %s",
      strerror(errno));
  return (((void*)0));
 }

 bzero(bif, sizeof(struct bridge_if));
 strlcpy(bif->bif_name, bif_n, IFNAMSIZ);
 bcopy(physaddr, bif->br_addr.octet, ETHER_ADDR_LEN);
 bif->sysindex = sysindex;
 bif->br_type = BaseType_transparent_only;

 bif->hold_time = 1 * 100;
 bif->prot_spec = dot1dStpProtocolSpecification_ieee8021d;
 bridge_ifs_insert(&bridge_ifs, bif);

 return (bif);
}
