
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_outb (struct ahd_softc*,int,int) ;

__attribute__((used)) static __inline void
ahd_outw(struct ahd_softc *ahd, u_int port, u_int value)
{




 ahd_outb(ahd, port, value & 0xFF);
 ahd_outb(ahd, port+1, (value >> 8) & 0xFF);
}
