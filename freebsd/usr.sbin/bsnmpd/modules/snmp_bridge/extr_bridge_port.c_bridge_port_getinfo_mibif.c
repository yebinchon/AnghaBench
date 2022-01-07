
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ifi_iqdrops; int ifi_opackets; int ifi_ipackets; int ifi_mtu; } ;
struct TYPE_4__ {TYPE_1__ ifmd_data; } ;
struct mibif {TYPE_2__ mib; } ;
struct bridge_port {int in_drops; int out_frames; int in_frames; int max_info; } ;



void
bridge_port_getinfo_mibif(struct mibif *m_if, struct bridge_port *bp)
{
 bp->max_info = m_if->mib.ifmd_data.ifi_mtu;
 bp->in_frames = m_if->mib.ifmd_data.ifi_ipackets;
 bp->out_frames = m_if->mib.ifmd_data.ifi_opackets;
 bp->in_drops = m_if->mib.ifmd_data.ifi_iqdrops;
}
