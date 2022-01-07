
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct scb {int * sense_data; } ;
struct ahd_softc {int dummy; } ;



__attribute__((used)) static __inline uint8_t *
ahd_get_sense_buf(struct ahd_softc *ahd, struct scb *scb)
{
 return (scb->sense_data);
}
