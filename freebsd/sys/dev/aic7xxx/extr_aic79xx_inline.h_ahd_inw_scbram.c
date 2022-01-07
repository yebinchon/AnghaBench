
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_inb_scbram (struct ahd_softc*,int) ;

__attribute__((used)) static __inline u_int
ahd_inw_scbram(struct ahd_softc *ahd, u_int offset)
{
 return (ahd_inb_scbram(ahd, offset)
       | (ahd_inb_scbram(ahd, offset+1) << 8));
}
