
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct siis_channel {int dev; } ;
struct cam_sim {int dummy; } ;


 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int siis_ch_intr (int ) ;

__attribute__((used)) static void
siispoll(struct cam_sim *sim)
{
 struct siis_channel *ch = (struct siis_channel *)cam_sim_softc(sim);

 siis_ch_intr(ch->dev);
}
