
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int** ee_antennaControl; } ;
typedef int FILE ;


 size_t curmode ;
 TYPE_1__ eeprom ;
 int fprintf (int *,char*,int) ;

__attribute__((used)) static void
printAntennaControl(FILE *fd, int ant)
{
 fprintf(fd, "0x%02X", eeprom.ee_antennaControl[ant][curmode]);
}
