
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct dmar_unit {int dummy; } ;
struct dmar_ctx {int dummy; } ;


 struct dmar_ctx* dmar_get_ctx_for_dev1 (struct dmar_unit*,int *,int ,int,int,void const*,int,int,int) ;

struct dmar_ctx *
dmar_get_ctx_for_devpath(struct dmar_unit *dmar, uint16_t rid,
    int dev_domain, int dev_busno,
    const void *dev_path, int dev_path_len,
    bool id_mapped, bool rmrr_init)
{

 return (dmar_get_ctx_for_dev1(dmar, ((void*)0), rid, dev_domain, dev_busno,
     dev_path, dev_path_len, id_mapped, rmrr_init));
}
