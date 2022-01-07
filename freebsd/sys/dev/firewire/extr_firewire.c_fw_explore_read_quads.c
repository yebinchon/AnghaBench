
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fw_xfer {int resp; } ;
struct fw_device {int dummy; } ;


 int fw_xfer_free (struct fw_xfer*) ;
 int fw_xferwait (struct fw_xfer*) ;
 int fw_xferwake ;
 struct fw_xfer* fwmem_read_quad (struct fw_device*,int *,int,int,int,int *,int ) ;
 int ntohl (int ) ;

__attribute__((used)) static int
fw_explore_read_quads(struct fw_device *fwdev, int offset,
    uint32_t *quad, int length)
{
 struct fw_xfer *xfer;
 uint32_t tmp;
 int i, error;

 for (i = 0; i < length; i++, offset += sizeof(uint32_t)) {
  xfer = fwmem_read_quad(fwdev, ((void*)0), -1, 0xffff,
      0xf0000000 | offset, &tmp, fw_xferwake);
  if (xfer == ((void*)0))
   return (-1);
  fw_xferwait(xfer);

  if (xfer->resp == 0)
   quad[i] = ntohl(tmp);

  error = xfer->resp;
  fw_xfer_free(xfer);
  if (error)
   return (error);
 }
 return (0);
}
