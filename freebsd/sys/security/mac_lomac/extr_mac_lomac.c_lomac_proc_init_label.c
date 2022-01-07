
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mac_lomac_proc {int dummy; } ;
struct label {int dummy; } ;
struct TYPE_2__ {int mtx; } ;


 int MTX_DEF ;
 int M_LOMAC ;
 int M_WAITOK ;
 int M_ZERO ;
 TYPE_1__* PSLOT (struct label*) ;
 int PSLOT_SET (struct label*,int ) ;
 int malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;

__attribute__((used)) static void
lomac_proc_init_label(struct label *label)
{

 PSLOT_SET(label, malloc(sizeof(struct mac_lomac_proc), M_LOMAC,
     M_ZERO | M_WAITOK));
 mtx_init(&PSLOT(label)->mtx, "MAC/Lomac proc lock", ((void*)0), MTX_DEF);
}
