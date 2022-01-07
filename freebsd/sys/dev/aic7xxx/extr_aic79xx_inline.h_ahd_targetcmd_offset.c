
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef size_t u_int ;
struct ahd_softc {scalar_t__ qoutfifo; int * targetcmds; } ;



__attribute__((used)) static __inline uint32_t
ahd_targetcmd_offset(struct ahd_softc *ahd, u_int index)
{
 return (((uint8_t *)&ahd->targetcmds[index])
        - (uint8_t *)ahd->qoutfifo);
}
