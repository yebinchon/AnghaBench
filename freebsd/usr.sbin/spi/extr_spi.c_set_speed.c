
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct spi_options {scalar_t__ speed; } ;


 int SPIGENIOC_SET_CLOCK_SPEED ;
 int ioctl (int,int ,scalar_t__*) ;

__attribute__((used)) static int
set_speed(int hdev, struct spi_options *popt)
{
 uint32_t clock_speed = popt->speed;

 if (popt->speed < 0)
  return 0;

 return ioctl(hdev, SPIGENIOC_SET_CLOCK_SPEED, &clock_speed);
}
