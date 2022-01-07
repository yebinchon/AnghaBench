
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct bnxt_vlan_tag {int tpid; int tag; } ;
struct TYPE_2__ {int vlan_tags; } ;
struct bnxt_softc {TYPE_1__ vnic_info; } ;
typedef int if_ctx_t ;


 int M_DEVBUF ;
 int M_NOWAIT ;
 int SLIST_INSERT_HEAD (int *,struct bnxt_vlan_tag*,int ) ;
 struct bnxt_softc* iflib_get_softc (int ) ;
 struct bnxt_vlan_tag* malloc (int,int ,int ) ;
 int next ;

__attribute__((used)) static void
bnxt_vlan_register(if_ctx_t ctx, uint16_t vtag)
{
 struct bnxt_softc *softc = iflib_get_softc(ctx);
 struct bnxt_vlan_tag *new_tag;

 new_tag = malloc(sizeof(struct bnxt_vlan_tag), M_DEVBUF, M_NOWAIT);
 if (new_tag == ((void*)0))
  return;
 new_tag->tag = vtag;
 new_tag->tpid = 8100;
 SLIST_INSERT_HEAD(&softc->vnic_info.vlan_tags, new_tag, next);
}
