
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_inb (struct ahd_softc*,scalar_t__) ;

__attribute__((used)) static __inline uint16_t
ahd_inw(struct ahd_softc *ahd, u_int port)
{





 return ((ahd_inb(ahd, port+1) << 8) | ahd_inb(ahd, port));
}
