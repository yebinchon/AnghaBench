
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct fdc_data {int * ioff; int * ioh; int iot; } ;


 int bus_space_read_1 (int ,int ,int ) ;

__attribute__((used)) static inline uint8_t
fdregrd(struct fdc_data *fdc, int reg)
{

 return bus_space_read_1(fdc->iot, fdc->ioh[reg], fdc->ioff[reg]);
}
