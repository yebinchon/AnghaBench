
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_buf {int npages; int * page_list; } ;
typedef int __be64 ;


 int cpu_to_be64 (int ) ;

void
mlx5_fill_page_array(struct mlx5_buf *buf, __be64 *pas)
{
 int i;

 for (i = 0; i != buf->npages; i++)
  pas[i] = cpu_to_be64(buf->page_list[i]);
}
