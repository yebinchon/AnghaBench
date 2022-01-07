
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct cqspi_softc {int dummy; } ;
typedef int device_t ;


 int cqspi_cmd_read (struct cqspi_softc*,int ,int *,int ) ;
 struct cqspi_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cqspi_read_reg(device_t dev, device_t child,
    uint8_t opcode, uint8_t *addr, uint32_t len)
{
 struct cqspi_softc *sc;
 int ret;

 sc = device_get_softc(dev);

 ret = cqspi_cmd_read(sc, opcode, addr, len);

 return (ret);
}
