
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct bio {int dummy; } ;
struct TYPE_4__ {int queue; } ;
typedef TYPE_1__ ips_softc_t ;
typedef int ips_command_t ;


 struct bio* bioq_first (int *) ;
 int bioq_remove (int *,struct bio*) ;
 scalar_t__ ips_get_free_cmd (TYPE_1__*,int **,int ) ;
 int ips_send_io_request (int *,struct bio*) ;

void ips_start_io_request(ips_softc_t *sc)
{
 struct bio *iobuf;
 ips_command_t *command;

 iobuf = bioq_first(&sc->queue);
 if(!iobuf)
  return;

 if (ips_get_free_cmd(sc, &command, 0))
  return;

 bioq_remove(&sc->queue, iobuf);
 ips_send_io_request(command, iobuf);
 return;
}
