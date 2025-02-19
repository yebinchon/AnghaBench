
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tw_cli_ctlr_context {int flags; int ctlr_handle; } ;
struct tw_cl_sg_desc64 {void* length; int address; } ;
struct tw_cl_sg_desc32 {void* length; void* address; } ;
typedef int TW_VOID ;
typedef int TW_INT8 ;
typedef size_t TW_INT32 ;


 int TW_CL_64BIT_ADDRESSES ;
 int TW_CL_64BIT_SG_LENGTH ;
 void* TW_CL_SWAP32 (void*) ;
 int TW_CL_SWAP64 (int ) ;
 int tw_cli_dbg_printf (int,int ,int ,char*) ;
 int tw_osl_cur_func () ;

TW_VOID
tw_cli_fill_sg_list(struct tw_cli_ctlr_context *ctlr, TW_VOID *sgl_src,
 TW_VOID *sgl_dest, TW_INT32 num_sgl_entries)
{
 TW_INT32 i;

 tw_cli_dbg_printf(10, ctlr->ctlr_handle, tw_osl_cur_func(), "entered");

 if (ctlr->flags & TW_CL_64BIT_ADDRESSES) {
  struct tw_cl_sg_desc64 *sgl_s =
   (struct tw_cl_sg_desc64 *)sgl_src;
  struct tw_cl_sg_desc64 *sgl_d =
   (struct tw_cl_sg_desc64 *)sgl_dest;

  tw_cli_dbg_printf(10, ctlr->ctlr_handle, tw_osl_cur_func(),
   "64 bit addresses");
  for (i = 0; i < num_sgl_entries; i++) {
   sgl_d[i].address = TW_CL_SWAP64(sgl_s->address);
   sgl_d[i].length = TW_CL_SWAP32(sgl_s->length);
   sgl_s++;
   if (ctlr->flags & TW_CL_64BIT_SG_LENGTH)
    sgl_s = (struct tw_cl_sg_desc64 *)
     (((TW_INT8 *)(sgl_s)) + 4);
  }
 } else {
  struct tw_cl_sg_desc32 *sgl_s =
   (struct tw_cl_sg_desc32 *)sgl_src;
  struct tw_cl_sg_desc32 *sgl_d =
   (struct tw_cl_sg_desc32 *)sgl_dest;

  tw_cli_dbg_printf(10, ctlr->ctlr_handle, tw_osl_cur_func(),
   "32 bit addresses");
  for (i = 0; i < num_sgl_entries; i++) {
   sgl_d[i].address = TW_CL_SWAP32(sgl_s[i].address);
   sgl_d[i].length = TW_CL_SWAP32(sgl_s[i].length);
  }
 }
}
