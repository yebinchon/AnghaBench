
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct ttydevice {TYPE_1__ real; } ;



__attribute__((used)) static int
isngtty(struct ttydevice *dev)
{
  return dev->real.fd != -1;
}
