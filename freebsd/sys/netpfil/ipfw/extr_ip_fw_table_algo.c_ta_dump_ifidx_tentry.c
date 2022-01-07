
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct table_info {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct ifentry {int value; TYPE_1__ no; } ;
struct TYPE_6__ {int kidx; } ;
struct TYPE_7__ {int masklen; TYPE_2__ v; int k; } ;
typedef TYPE_3__ ipfw_obj_tentry ;


 int IF_NAMESIZE ;
 int memcpy (int *,int ,int) ;

__attribute__((used)) static int
ta_dump_ifidx_tentry(void *ta_state, struct table_info *ti, void *e,
    ipfw_obj_tentry *tent)
{
 struct ifentry *ife;

 ife = (struct ifentry *)e;

 tent->masklen = 8 * IF_NAMESIZE;
 memcpy(&tent->k, ife->no.name, IF_NAMESIZE);
 tent->v.kidx = ife->value;

 return (0);
}
