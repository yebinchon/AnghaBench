
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_chinfo {int lvol; int rvol; int rslot; int lslot; } ;


 int HDSPE_MAX_GAIN ;
 int hdspe_hw_mixer (struct sc_chinfo*,int ,int ,int) ;

__attribute__((used)) static int
hdspechan_setgain(struct sc_chinfo *ch)
{

 hdspe_hw_mixer(ch, ch->lslot, ch->lslot,
     ch->lvol * HDSPE_MAX_GAIN / 100);
 hdspe_hw_mixer(ch, ch->rslot, ch->rslot,
     ch->rvol * HDSPE_MAX_GAIN / 100);

 return (0);
}
