
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {struct TYPE_8__* next; int freep; int getp; int dmat; int dev_dmat; } ;
typedef TYPE_1__ m_pool_s ;
typedef int bus_dma_tag_t ;
struct TYPE_9__ {TYPE_1__* next; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int MEMO_CLUSTER_SIZE ;
 int ___dma_freep ;
 int ___dma_getp ;
 TYPE_1__* __sym_calloc (TYPE_2__*,int,char*) ;
 int __sym_mfree (TYPE_2__*,TYPE_1__*,int,char*) ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int *,int *,int *) ;
 TYPE_2__ mp0 ;

__attribute__((used)) static m_pool_s *___cre_dma_pool(bus_dma_tag_t dev_dmat)
{
 m_pool_s *mp = ((void*)0);

 mp = __sym_calloc(&mp0, sizeof(*mp), "MPOOL");
 if (mp) {
  mp->dev_dmat = dev_dmat;
  if (!bus_dma_tag_create(dev_dmat, 1, MEMO_CLUSTER_SIZE,
          BUS_SPACE_MAXADDR_32BIT,
          BUS_SPACE_MAXADDR,
          ((void*)0), ((void*)0), MEMO_CLUSTER_SIZE, 1,
          MEMO_CLUSTER_SIZE, 0,
          ((void*)0), ((void*)0), &mp->dmat)) {
   mp->getp = ___dma_getp;



   mp->next = mp0.next;
   mp0.next = mp;
   return mp;
  }
 }
 if (mp)
  __sym_mfree(&mp0, mp, sizeof(*mp), "MPOOL");
 return ((void*)0);
}
