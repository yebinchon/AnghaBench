
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; } ;
struct TYPE_4__ {TYPE_1__ urgent; } ;
struct ncp {TYPE_2__ cfg; } ;



void
ncp_SetUrgentTcpLen(struct ncp *ncp, int len)
{
    ncp->cfg.urgent.len = len;
}
