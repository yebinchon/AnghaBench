
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct n25q_softc {int dummy; } ;
typedef int device_t ;


 int QSPI_WRITE_REG (int ,int ,int ,int ,int ) ;
 int device_get_parent (int ) ;
 struct n25q_softc* device_get_softc (int ) ;

__attribute__((used)) static int
n25q_set_4b_mode(device_t dev, uint8_t command)
{
 struct n25q_softc *sc;
 device_t pdev;
 int err;

 pdev = device_get_parent(dev);
 sc = device_get_softc(dev);

 err = QSPI_WRITE_REG(pdev, dev, command, 0, 0);

 return (err);
}
