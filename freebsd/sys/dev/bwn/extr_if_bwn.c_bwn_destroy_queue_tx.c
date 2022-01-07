
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwn_pio_txqueue {int dummy; } ;


 int bwn_destroy_pioqueue_tx (struct bwn_pio_txqueue*) ;

__attribute__((used)) static void
bwn_destroy_queue_tx(struct bwn_pio_txqueue *pio)
{

 bwn_destroy_pioqueue_tx(pio);
}
