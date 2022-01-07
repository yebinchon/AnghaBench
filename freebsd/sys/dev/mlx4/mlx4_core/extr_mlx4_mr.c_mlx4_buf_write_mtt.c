
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct mlx4_mtt {int dummy; } ;
struct mlx4_dev {int dummy; } ;
struct TYPE_3__ {scalar_t__ map; } ;
struct mlx4_buf {int npages; int nbufs; int page_shift; TYPE_2__* page_list; TYPE_1__ direct; } ;
typedef int gfp_t ;
struct TYPE_4__ {scalar_t__ map; } ;


 int ENOMEM ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;
 int mlx4_write_mtt (struct mlx4_dev*,struct mlx4_mtt*,int ,int,scalar_t__*) ;

int mlx4_buf_write_mtt(struct mlx4_dev *dev, struct mlx4_mtt *mtt,
         struct mlx4_buf *buf, gfp_t gfp)
{
 u64 *page_list;
 int err;
 int i;

 page_list = kmalloc(buf->npages * sizeof *page_list,
       gfp);
 if (!page_list)
  return -ENOMEM;

 for (i = 0; i < buf->npages; ++i)
  if (buf->nbufs == 1)
   page_list[i] = buf->direct.map + (i << buf->page_shift);
  else
   page_list[i] = buf->page_list[i].map;

 err = mlx4_write_mtt(dev, mtt, 0, buf->npages, page_list);

 kfree(page_list);
 return err;
}
