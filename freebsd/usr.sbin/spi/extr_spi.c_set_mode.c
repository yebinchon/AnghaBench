
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct spi_options {scalar_t__ mode; } ;


 int SPIGENIOC_SET_SPI_MODE ;
 int ioctl (int,int ,scalar_t__*) ;

__attribute__((used)) static int
set_mode(int hdev, struct spi_options *popt)
{
 uint32_t fmode = popt->mode;

 if (popt->mode < 0)
  return 0;

 return ioctl(hdev, SPIGENIOC_SET_SPI_MODE, &fmode);
}
