
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xdma_channel_t ;


 int xchan_bank_free (int *) ;
 int xchan_bufs_free (int *) ;
 int xchan_sglist_free (int *) ;

void
xdma_channel_free_sg(xdma_channel_t *xchan)
{

 xchan_bufs_free(xchan);
 xchan_sglist_free(xchan);
 xchan_bank_free(xchan);
}
