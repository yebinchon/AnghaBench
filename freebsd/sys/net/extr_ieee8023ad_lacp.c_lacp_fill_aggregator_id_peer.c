
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lacp_peerinfo {int lip_key; int lip_systemid; } ;


 int memset (struct lacp_peerinfo*,int ,int) ;

__attribute__((used)) static void
lacp_fill_aggregator_id_peer(struct lacp_peerinfo *lpi_aggr,
    const struct lacp_peerinfo *lpi_port)
{
 memset(lpi_aggr, 0, sizeof(*lpi_aggr));
 lpi_aggr->lip_systemid = lpi_port->lip_systemid;
 lpi_aggr->lip_key = lpi_port->lip_key;
}
