
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct sym_ccb {int dummy; } ;
typedef TYPE_5__* hcb_p ;
typedef TYPE_6__* ccb_p ;
struct TYPE_16__ {void* addr; } ;
struct TYPE_14__ {void* restart; void* start; } ;
struct TYPE_15__ {TYPE_1__ go; } ;
struct TYPE_17__ {TYPE_3__ smsg_ext; TYPE_2__ head; } ;
struct TYPE_19__ {struct TYPE_19__* sns_bbuf; int link_ccbq; TYPE_4__ phys; struct TYPE_19__* link_ccbh; int ccb_ba; int ch; int dmamap; } ;
struct TYPE_18__ {scalar_t__ actccbs; int free_ccbq; TYPE_6__** ccbh; int data_dmat; } ;


 int CCB_HASH_CODE (int ) ;
 int HCB_BA (TYPE_5__*,int ) ;
 int MA_NOTOWNED ;
 int SCRIPTA_BA (TYPE_5__*,int ) ;
 int SCRIPTB_BA (TYPE_5__*,int ) ;
 scalar_t__ SYM_CONF_MAX_START ;
 int SYM_LOCK_ASSERT (int ) ;
 int SYM_SNS_BBUF_LEN ;
 int bad_i_t_l ;
 scalar_t__ bus_dmamap_create (int ,int ,int *) ;
 int callout_init (int *,int) ;
 void* cpu_to_scr (int ) ;
 int idle ;
 int * msgin ;
 void* sym_calloc_dma (int,char*) ;
 int sym_insque_head (int *,int *) ;
 int sym_mfree_dma (TYPE_6__*,int,char*) ;
 int vtobus (TYPE_6__*) ;

__attribute__((used)) static ccb_p sym_alloc_ccb(hcb_p np)
{
 ccb_p cp = ((void*)0);
 int hcode;

 SYM_LOCK_ASSERT(MA_NOTOWNED);





 if (np->actccbs >= SYM_CONF_MAX_START)
  return ((void*)0);




 cp = sym_calloc_dma(sizeof(struct sym_ccb), "CCB");
 if (!cp)
  return ((void*)0);




 cp->sns_bbuf = sym_calloc_dma(SYM_SNS_BBUF_LEN, "SNS_BBUF");
 if (!cp->sns_bbuf)
  goto out_free;




 if (bus_dmamap_create(np->data_dmat, 0, &cp->dmamap))
  goto out_free;



 np->actccbs++;




 callout_init(&cp->ch, 1);




 cp->ccb_ba = vtobus(cp);




 hcode = CCB_HASH_CODE(cp->ccb_ba);
 cp->link_ccbh = np->ccbh[hcode];
 np->ccbh[hcode] = cp;




 cp->phys.head.go.start = cpu_to_scr(SCRIPTA_BA (np, idle));
 cp->phys.head.go.restart = cpu_to_scr(SCRIPTB_BA (np, bad_i_t_l));




 cp->phys.smsg_ext.addr = cpu_to_scr(HCB_BA(np, msgin[2]));




 sym_insque_head(&cp->link_ccbq, &np->free_ccbq);

 return cp;
out_free:
 if (cp->sns_bbuf)
  sym_mfree_dma(cp->sns_bbuf, SYM_SNS_BBUF_LEN, "SNS_BBUF");
 sym_mfree_dma(cp, sizeof(*cp), "CCB");
 return ((void*)0);
}
