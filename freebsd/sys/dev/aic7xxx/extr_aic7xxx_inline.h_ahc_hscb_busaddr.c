
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int u_int ;
struct hardware_scb {int dummy; } ;
struct ahc_softc {TYPE_1__* scb_data; } ;
struct TYPE_2__ {scalar_t__ hscb_busaddr; } ;



__attribute__((used)) static __inline uint32_t
ahc_hscb_busaddr(struct ahc_softc *ahc, u_int index)
{
 return (ahc->scb_data->hscb_busaddr
  + (sizeof(struct hardware_scb) * index));
}
