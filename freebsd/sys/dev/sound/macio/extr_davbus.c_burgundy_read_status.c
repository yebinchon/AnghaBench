
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct davbus_softc {int dummy; } ;



__attribute__((used)) static u_int
burgundy_read_status(struct davbus_softc *d, u_int status)
{
 if (status & 0x4)
  return (1 << 1);
 else
  return (1 << 0);
}
