
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct bio {int bio_error; int bio_flags; } ;
struct TYPE_6__ {int value; } ;
struct TYPE_7__ {int sc; TYPE_1__ status; int data_dmamap; int data_dmatag; struct bio* arg; } ;
typedef TYPE_2__ ips_command_t ;


 int BIO_ERROR ;
 int BUS_DMASYNC_POSTREAD ;
 int BUS_DMASYNC_POSTWRITE ;
 scalar_t__ COMMAND_ERROR (TYPE_2__*) ;
 int EIO ;
 int bus_dmamap_sync (int ,int ,int ) ;
 int bus_dmamap_unload (int ,int ) ;
 int ips_insert_free_cmd (int ,TYPE_2__*) ;
 scalar_t__ ips_read_request (struct bio*) ;
 int ipsd_finish (struct bio*) ;
 int printf (char*,int) ;

__attribute__((used)) static void ips_io_request_finish(ips_command_t *command)
{

 struct bio *iobuf = command->arg;
 if(ips_read_request(iobuf)) {
  bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
    BUS_DMASYNC_POSTREAD);
 } else {
  bus_dmamap_sync(command->data_dmatag, command->data_dmamap,
    BUS_DMASYNC_POSTWRITE);
 }
 bus_dmamap_unload(command->data_dmatag, command->data_dmamap);
 if(COMMAND_ERROR(command)){
  iobuf->bio_flags |=BIO_ERROR;
  iobuf->bio_error = EIO;
  printf("ips: io error, status= 0x%x\n", command->status.value);
 }
 ips_insert_free_cmd(command->sc, command);
 ipsd_finish(iobuf);
}
