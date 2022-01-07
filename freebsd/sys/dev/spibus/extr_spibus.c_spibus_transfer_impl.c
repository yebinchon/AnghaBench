
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_command {int dummy; } ;
typedef int device_t ;


 int SPIBUS_TRANSFER (int ,int ,struct spi_command*) ;
 int device_get_parent (int ) ;

__attribute__((used)) static int
spibus_transfer_impl(device_t dev, device_t child, struct spi_command *cmd)
{
 return (SPIBUS_TRANSFER(device_get_parent(dev), child, cmd));
}
