
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int v ;
struct table_value {int zoneid; int limit; int nh6; int nh4; int dscp; int nat; int fib; int netgraph; int skipto; int divert; int pipe; int tag; } ;
struct TYPE_4__ {int zoneid; int limit; int nh6; int nh4; int dscp; int nat; int fib; int netgraph; int skipto; int divert; int pipe; int tag; } ;
typedef TYPE_1__ ipfw_table_value ;


 int memcpy (TYPE_1__*,struct table_value*,int) ;
 int memset (struct table_value*,int ,int) ;

void
ipfw_import_table_value_v1(ipfw_table_value *iv)
{
 struct table_value v;

 memset(&v, 0, sizeof(v));
 v.tag = iv->tag;
 v.pipe = iv->pipe;
 v.divert = iv->divert;
 v.skipto = iv->skipto;
 v.netgraph = iv->netgraph;
 v.fib = iv->fib;
 v.nat = iv->nat;
 v.dscp = iv->dscp;
 v.nh4 = iv->nh4;
 v.nh6 = iv->nh6;
 v.limit = iv->limit;
 v.zoneid = iv->zoneid;

 memcpy(iv, &v, sizeof(ipfw_table_value));
}
