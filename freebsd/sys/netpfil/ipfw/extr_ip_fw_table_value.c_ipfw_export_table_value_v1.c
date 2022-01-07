
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct table_value {int zoneid; int nh6; int nh4; int limit; int dscp; int nat; int fib; int netgraph; int skipto; int divert; int pipe; int tag; } ;
typedef int iv ;
struct TYPE_6__ {int zoneid; int nh6; int nh4; int limit; int dscp; int nat; int fib; int netgraph; int skipto; int divert; int pipe; int tag; } ;
typedef TYPE_1__ ipfw_table_value ;


 int memcpy (TYPE_1__*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

void
ipfw_export_table_value_v1(struct table_value *v, ipfw_table_value *piv)
{
 ipfw_table_value iv;

 memset(&iv, 0, sizeof(iv));
 iv.tag = v->tag;
 iv.pipe = v->pipe;
 iv.divert = v->divert;
 iv.skipto = v->skipto;
 iv.netgraph = v->netgraph;
 iv.fib = v->fib;
 iv.nat = v->nat;
 iv.dscp = v->dscp;
 iv.limit = v->limit;
 iv.nh4 = v->nh4;
 iv.nh6 = v->nh6;
 iv.zoneid = v->zoneid;

 memcpy(piv, &iv, sizeof(iv));
}
