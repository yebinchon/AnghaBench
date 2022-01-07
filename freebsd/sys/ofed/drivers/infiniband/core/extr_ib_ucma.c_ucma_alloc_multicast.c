
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucma_multicast {scalar_t__ id; int list; struct ucma_context* ctx; } ;
struct ucma_context {int mc_list; } ;


 int GFP_KERNEL ;
 scalar_t__ idr_alloc (int *,struct ucma_multicast*,int ,int ,int ) ;
 int kfree (struct ucma_multicast*) ;
 struct ucma_multicast* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int multicast_idr ;
 int mut ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static struct ucma_multicast* ucma_alloc_multicast(struct ucma_context *ctx)
{
 struct ucma_multicast *mc;

 mc = kzalloc(sizeof(*mc), GFP_KERNEL);
 if (!mc)
  return ((void*)0);

 mutex_lock(&mut);
 mc->id = idr_alloc(&multicast_idr, mc, 0, 0, GFP_KERNEL);
 mutex_unlock(&mut);
 if (mc->id < 0)
  goto error;

 mc->ctx = ctx;
 list_add_tail(&mc->list, &ctx->mc_list);
 return mc;

error:
 kfree(mc);
 return ((void*)0);
}
