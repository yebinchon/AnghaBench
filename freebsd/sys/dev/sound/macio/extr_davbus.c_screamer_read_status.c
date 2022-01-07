
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct davbus_softc {int device_id; } ;



__attribute__((used)) static u_int
screamer_read_status(struct davbus_softc *d, u_int status)
{
 int headphones;

 switch (d->device_id) {
 case 5:
  headphones = (status & 0x4);
  break;

 case 8:
 case 11:

  headphones = (status & 0x7);
  break;

 default:
  headphones = (status & 0x8);
 }

 if (headphones)
  return (1 << 1);
 else
  return (1 << 0);
}
