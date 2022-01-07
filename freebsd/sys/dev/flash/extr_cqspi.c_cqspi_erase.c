
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cqspi_softc {int dummy; } ;
typedef int off_t ;
typedef int device_t ;


 int CMD_QUAD_SECTOR_ERASE ;
 int CMD_WRITE_ENABLE ;
 int cqspi_cmd_write (struct cqspi_softc*,int ,int ,int ) ;
 int cqspi_cmd_write_addr (struct cqspi_softc*,int ,int ,int) ;
 int cqspi_wait_idle (struct cqspi_softc*) ;
 int cqspi_wait_ready (struct cqspi_softc*) ;
 struct cqspi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cqspi_erase(device_t dev, device_t child, off_t offset)
{
 struct cqspi_softc *sc;
 int ret;

 sc = device_get_softc(dev);

 cqspi_wait_idle(sc);
 cqspi_wait_ready(sc);
 ret = cqspi_cmd_write(sc, CMD_WRITE_ENABLE, 0, 0);

 cqspi_wait_idle(sc);
 cqspi_wait_ready(sc);
 ret = cqspi_cmd_write_addr(sc, CMD_QUAD_SECTOR_ERASE, offset, 4);

 cqspi_wait_idle(sc);

 return (0);
}
