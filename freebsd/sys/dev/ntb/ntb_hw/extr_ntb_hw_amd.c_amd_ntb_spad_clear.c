
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct amd_ntb_softc {scalar_t__ spad_count; int device; } ;


 int amd_ntb_spad_write (int ,scalar_t__,int ) ;

__attribute__((used)) static void
amd_ntb_spad_clear(struct amd_ntb_softc *ntb)
{
 uint8_t i;

 for (i = 0; i < ntb->spad_count; i++)
  amd_ntb_spad_write(ntb->device, i, 0);
}
