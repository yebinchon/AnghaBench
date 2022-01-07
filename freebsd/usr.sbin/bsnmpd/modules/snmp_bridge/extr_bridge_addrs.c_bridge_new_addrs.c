
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct tp_entry {int tp_addr; int sysindex; } ;
struct bridge_if {int f_tpa; int sysindex; } ;


 int ETHER_ADDR_LEN ;
 int LOG_ERR ;
 int bcopy (int *,int ,int ) ;
 int bridge_addrs_bif_insert (int *,struct tp_entry*,int *) ;
 int bzero (struct tp_entry*,int) ;
 int errno ;
 scalar_t__ malloc (int) ;
 int strerror (int ) ;
 int syslog (int ,char*,int ) ;
 int tp_entries ;

struct tp_entry *
bridge_new_addrs(uint8_t *mac, struct bridge_if *bif)
{
 struct tp_entry *te;

 if ((te = (struct tp_entry *) malloc(sizeof(*te))) == ((void*)0)) {
  syslog(LOG_ERR, "bridge new address: failed: %s",
      strerror(errno));
  return (((void*)0));
 }

 bzero(te, sizeof(*te));

 te->sysindex = bif->sysindex;
 bcopy(mac, te->tp_addr, ETHER_ADDR_LEN);
 bridge_addrs_bif_insert(&tp_entries, te, &(bif->f_tpa));

 return (te);
}
