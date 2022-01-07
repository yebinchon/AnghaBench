
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_pd {int dummy; } ;
struct ib_device {int dummy; } ;
struct fast_reg_descriptor {int rsc; } ;


 int ISER_ERR (char*) ;
 int M_ISER_VERBS ;
 int M_WAITOK ;
 int M_ZERO ;
 int free (struct fast_reg_descriptor*,int ) ;
 int iser_alloc_reg_res (struct ib_device*,struct ib_pd*,int *) ;
 struct fast_reg_descriptor* malloc (int,int ,int) ;

__attribute__((used)) static struct fast_reg_descriptor *
iser_create_fastreg_desc(struct ib_device *ib_device, struct ib_pd *pd)
{
 struct fast_reg_descriptor *desc;
 int ret;

 desc = malloc(sizeof(*desc), M_ISER_VERBS, M_WAITOK | M_ZERO);
 if (!desc) {
  ISER_ERR("Failed to allocate a new fastreg descriptor");
  return (((void*)0));
 }

 ret = iser_alloc_reg_res(ib_device, pd, &desc->rsc);
 if (ret) {
  ISER_ERR("failed to allocate reg_resources");
  goto err;
 }

 return (desc);
err:
 free(desc, M_ISER_VERBS);
 return (((void*)0));
}
