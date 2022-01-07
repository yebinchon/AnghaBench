
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * pm_write; int * pm_read; int tf_write; int tf_read; int command; int * softreset; int status; int end_transaction; int begin_transaction; } ;
struct ata_channel {TYPE_1__ hw; } ;
typedef int device_t ;


 int ata_begin_transaction ;
 int ata_end_transaction ;
 int ata_generic_command ;
 int ata_generic_status ;
 int ata_tf_read ;
 int ata_tf_write ;
 struct ata_channel* device_get_softc (int ) ;

void
ata_generic_hw(device_t dev)
{
    struct ata_channel *ch = device_get_softc(dev);

    ch->hw.begin_transaction = ata_begin_transaction;
    ch->hw.end_transaction = ata_end_transaction;
    ch->hw.status = ata_generic_status;
    ch->hw.softreset = ((void*)0);
    ch->hw.command = ata_generic_command;
    ch->hw.tf_read = ata_tf_read;
    ch->hw.tf_write = ata_tf_write;
    ch->hw.pm_read = ((void*)0);
    ch->hw.pm_write = ((void*)0);
}
