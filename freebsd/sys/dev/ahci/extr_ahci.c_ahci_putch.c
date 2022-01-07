
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahci_channel {int mtx; } ;


 int mtx_unlock (int *) ;

void
ahci_putch(struct ahci_channel *ch)
{

 mtx_unlock(&ch->mtx);
}
