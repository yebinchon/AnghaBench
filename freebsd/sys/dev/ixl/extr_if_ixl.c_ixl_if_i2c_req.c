
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixl_pf {scalar_t__ (* read_i2c_byte ) (struct ixl_pf*,scalar_t__,int ,int *) ;} ;
struct ifi2creq {int len; int * data; int dev_addr; scalar_t__ offset; } ;
typedef int if_ctx_t ;


 int EINVAL ;
 int EIO ;
 struct ixl_pf* iflib_get_softc (int ) ;
 scalar_t__ stub1 (struct ixl_pf*,scalar_t__,int ,int *) ;

__attribute__((used)) static int
ixl_if_i2c_req(if_ctx_t ctx, struct ifi2creq *req)
{
 struct ixl_pf *pf = iflib_get_softc(ctx);

 if (pf->read_i2c_byte == ((void*)0))
  return (EINVAL);

 for (int i = 0; i < req->len; i++)
  if (pf->read_i2c_byte(pf, req->offset + i,
      req->dev_addr, &req->data[i]))
   return (EIO);
 return (0);
}
