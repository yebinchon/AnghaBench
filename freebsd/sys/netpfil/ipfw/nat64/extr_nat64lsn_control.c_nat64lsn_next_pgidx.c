
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union nat64lsn_pgidx {int chunk; int port; int proto; scalar_t__ addr; int index; } ;
struct nat64lsn_pg {int chunks_count; } ;
struct nat64lsn_cfg {scalar_t__ pmask4; } ;




 int IPPROTO_UDP ;
 int LAST_IDX ;
 int NAT64_MIN_PORT ;
 int UINT16_MAX ;

__attribute__((used)) static int
nat64lsn_next_pgidx(struct nat64lsn_cfg *cfg, struct nat64lsn_pg *pg,
    union nat64lsn_pgidx *idx)
{


 if (pg != ((void*)0)) {
  if (idx->chunk < pg->chunks_count - 1) {
   idx->chunk++;
   return (0);
  }
 }
 idx->chunk = 0;

 if (idx->port < UINT16_MAX - 64) {
  idx->port += 64;
  return (0);
 }
 idx->port = NAT64_MIN_PORT;

 switch (idx->proto) {
 case 129:
  idx->proto = 128;
  return (0);
 case 128:
  idx->proto = IPPROTO_UDP;
  return (0);
 default:
  idx->proto = 129;
 }

 if (idx->addr < cfg->pmask4) {
  idx->addr++;
  return (1);
 }
 idx->index = LAST_IDX;
 return (-1);
}
