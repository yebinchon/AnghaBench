
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct mlx5_db_pgdir {int db_page; TYPE_1__* fw_page; int db_dma; int bitmap; } ;
struct mlx5_core_dev {int dummy; } ;
struct TYPE_3__ {int dma_addr; int virt_addr; } ;


 int GFP_KERNEL ;
 int MLX5_ADAPTER_PAGE_SIZE ;
 int MLX5_DB_PER_PAGE ;
 int bitmap_fill (int ,int ) ;
 int kfree (struct mlx5_db_pgdir*) ;
 struct mlx5_db_pgdir* kzalloc (int,int ) ;
 int memset (int ,int ,int ) ;
 TYPE_1__* mlx5_fwp_alloc (struct mlx5_core_dev*,int ,int) ;
 int mlx5_fwp_flush (TYPE_1__*) ;

__attribute__((used)) static struct mlx5_db_pgdir *mlx5_alloc_db_pgdir(struct mlx5_core_dev *dev,
       int node)
{
 struct mlx5_db_pgdir *pgdir;

 pgdir = kzalloc(sizeof(*pgdir), GFP_KERNEL);

 bitmap_fill(pgdir->bitmap, MLX5_DB_PER_PAGE);

 pgdir->fw_page = mlx5_fwp_alloc(dev, GFP_KERNEL, 1);
 if (pgdir->fw_page != ((void*)0)) {
  pgdir->db_page = pgdir->fw_page->virt_addr;
  pgdir->db_dma = pgdir->fw_page->dma_addr;


  memset(pgdir->db_page, 0, MLX5_ADAPTER_PAGE_SIZE);


  mlx5_fwp_flush(pgdir->fw_page);
 }
 if (!pgdir->db_page) {
  kfree(pgdir);
  return ((void*)0);
 }

 return pgdir;
}
