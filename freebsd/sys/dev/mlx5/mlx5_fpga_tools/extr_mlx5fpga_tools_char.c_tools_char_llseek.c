
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct uio {size_t uio_resid; scalar_t__ uio_offset; } ;
struct tools_context {TYPE_1__* tdev; } ;
typedef size_t ssize_t ;
struct TYPE_2__ {int fdev; } ;


 size_t CHUNK_SIZE ;
 scalar_t__ mlx5_fpga_ddr_base_get (int ) ;
 scalar_t__ mlx5_fpga_ddr_size_get (int ) ;

__attribute__((used)) static void
tools_char_llseek(struct tools_context *context, struct uio *uio, ssize_t *len)
{
 uint64_t fbase, fsize;
 size_t llen;

 llen = uio->uio_resid;
 if (llen < 1) {
  *len = 0;
  return;
 }
 if (llen > CHUNK_SIZE)
  llen = CHUNK_SIZE;
 fbase = mlx5_fpga_ddr_base_get(context->tdev->fdev);
 fsize = mlx5_fpga_ddr_size_get(context->tdev->fdev);
 if (uio->uio_offset > fbase)
  *len = 0;
 else if (uio->uio_offset + *len > fbase + fsize)
  *len = fbase + fsize - uio->uio_offset;
 else
  *len = llen;
}
