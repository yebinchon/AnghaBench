
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio {int bio_bcount; int bio_data; } ;
struct TYPE_4__ {int data_dmamap; int data_dmatag; struct bio* arg; int callback; } ;
typedef TYPE_1__ ips_command_t ;


 int PRINTF (int,char*,int ) ;
 int bus_dmamap_load (int ,int ,int ,int ,int ,TYPE_1__*,int ) ;
 int ips_io_request_callback ;
 int ips_io_request_finish ;

__attribute__((used)) static int ips_send_io_request(ips_command_t *command, struct bio *iobuf)
{
 command->callback = ips_io_request_finish;
 command->arg = iobuf;
 PRINTF(10, "ips test: : bcount %ld\n", iobuf->bio_bcount);
 bus_dmamap_load(command->data_dmatag, command->data_dmamap,
   iobuf->bio_data, iobuf->bio_bcount,
   ips_io_request_callback, command, 0);
 return 0;
}
