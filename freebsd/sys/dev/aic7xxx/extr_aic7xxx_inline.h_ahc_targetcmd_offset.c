
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int * uint32_t ;
typedef size_t u_int ;
struct ahc_softc {int qoutfifo; int * targetcmds; } ;



__attribute__((used)) static __inline uint32_t
ahc_targetcmd_offset(struct ahc_softc *ahc, u_int index)
{
 return (((uint8_t *)&ahc->targetcmds[index]) - ahc->qoutfifo);
}
