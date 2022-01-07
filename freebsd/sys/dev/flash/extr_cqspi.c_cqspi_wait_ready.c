
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct cqspi_softc {int dummy; } ;


 int CMD_READ_STATUS ;
 int STATUS_WIP ;
 int cqspi_cmd_read (struct cqspi_softc*,int ,int*,int) ;

__attribute__((used)) static int
cqspi_wait_ready(struct cqspi_softc *sc)
{
 uint8_t data;
 int ret;

 do {
  ret = cqspi_cmd_read(sc, CMD_READ_STATUS, &data, 1);
 } while (data & STATUS_WIP);

 return (0);
}
