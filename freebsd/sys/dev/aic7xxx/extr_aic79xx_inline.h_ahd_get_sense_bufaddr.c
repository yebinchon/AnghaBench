
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct scb {int sense_busaddr; } ;
struct ahd_softc {int dummy; } ;



__attribute__((used)) static __inline uint32_t
ahd_get_sense_bufaddr(struct ahd_softc *ahd, struct scb *scb)
{
 return (scb->sense_busaddr);
}
