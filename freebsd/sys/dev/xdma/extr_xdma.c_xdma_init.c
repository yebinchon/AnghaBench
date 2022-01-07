
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MTX_DEF ;
 int mtx_init (int *,char*,int *,int ) ;
 int xdma_mtx ;

__attribute__((used)) static void
xdma_init(void)
{

 mtx_init(&xdma_mtx, "xDMA", ((void*)0), MTX_DEF);
}
