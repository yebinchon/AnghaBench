
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ u_int ;
struct ahd_softc {int dummy; } ;


 int ahd_inw_scbram (struct ahd_softc*,scalar_t__) ;

__attribute__((used)) static __inline uint32_t
ahd_inl_scbram(struct ahd_softc *ahd, u_int offset)
{
 return (ahd_inw_scbram(ahd, offset)
       | (ahd_inw_scbram(ahd, offset+2) << 16));
}
