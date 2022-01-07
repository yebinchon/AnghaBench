
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_sim {int dummy; } ;
struct ata_channel {int dummy; } ;


 int ata_interrupt_locked (struct ata_channel*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;

__attribute__((used)) static void
atapoll(struct cam_sim *sim)
{
 struct ata_channel *ch = (struct ata_channel *)cam_sim_softc(sim);

 ata_interrupt_locked(ch);
}
