
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union nat64lsn_pgidx {int addr; int port; int proto; } ;
struct nat64lsn_pg {int dummy; } ;
struct nat64lsn_cfg {int plen4; struct nat64lsn_alias* aliases; } ;
struct nat64lsn_alias {int addr; TYPE_3__** udp; int * udp_pgmask; TYPE_2__** tcp; int * tcp_pgmask; TYPE_1__** icmp; int * icmp_pgmask; } ;
struct TYPE_6__ {struct nat64lsn_pg** pgptr; } ;
struct TYPE_5__ {struct nat64lsn_pg** pgptr; } ;
struct TYPE_4__ {struct nat64lsn_pg** pgptr; } ;





 int ISSET32 (int ,int) ;
 int MPASS (int) ;
 int NAT64_MIN_PORT ;

__attribute__((used)) static struct nat64lsn_pg*
nat64lsn_get_pg_byidx(struct nat64lsn_cfg *cfg, union nat64lsn_pgidx *idx)
{
 struct nat64lsn_alias *alias;
 int pg_idx;

 alias = &cfg->aliases[idx->addr & ((1 << (32 - cfg->plen4)) - 1)];
 MPASS(alias->addr == idx->addr);

 pg_idx = (idx->port - NAT64_MIN_PORT) / 64;
 switch (idx->proto) {
 case 130:
  if (ISSET32(alias->icmp_pgmask[pg_idx / 32], pg_idx % 32))
   return (alias->icmp[pg_idx / 32]->pgptr[pg_idx % 32]);
  break;
 case 129:
  if (ISSET32(alias->tcp_pgmask[pg_idx / 32], pg_idx % 32))
   return (alias->tcp[pg_idx / 32]->pgptr[pg_idx % 32]);
  break;
 case 128:
  if (ISSET32(alias->udp_pgmask[pg_idx / 32], pg_idx % 32))
   return (alias->udp[pg_idx / 32]->pgptr[pg_idx % 32]);
  break;
 }
 return (((void*)0));
}
