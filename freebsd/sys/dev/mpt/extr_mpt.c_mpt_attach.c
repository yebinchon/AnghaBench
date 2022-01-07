
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_softc {int mpt_pers_mask; } ;
struct mpt_personality {scalar_t__ (* probe ) (struct mpt_softc*) ;int (* attach ) (struct mpt_softc*) ;int id; int (* enable ) (struct mpt_softc*) ;int name; int use_count; } ;


 int MPT_MAX_PERSONALITIES ;
 scalar_t__ MPT_PERS_ATTACHED (struct mpt_personality*,struct mpt_softc*) ;
 int TAILQ_INSERT_TAIL (int *,struct mpt_softc*,int ) ;
 int links ;
 int mpt_core_attach (struct mpt_softc*) ;
 int mpt_core_enable (struct mpt_softc*) ;
 int mpt_detach (struct mpt_softc*) ;
 struct mpt_personality** mpt_personalities ;
 int mpt_prt (struct mpt_softc*,char*,int ,int) ;
 int mpt_tailq ;
 scalar_t__ stub1 (struct mpt_softc*) ;
 int stub2 (struct mpt_softc*) ;
 int stub3 (struct mpt_softc*) ;

int
mpt_attach(struct mpt_softc *mpt)
{
 struct mpt_personality *pers;
 int i;
 int error;

 mpt_core_attach(mpt);
 mpt_core_enable(mpt);

 TAILQ_INSERT_TAIL(&mpt_tailq, mpt, links);
 for (i = 0; i < MPT_MAX_PERSONALITIES; i++) {
  pers = mpt_personalities[i];
  if (pers == ((void*)0)) {
   continue;
  }
  if (pers->probe(mpt) == 0) {
   error = pers->attach(mpt);
   if (error != 0) {
    mpt_detach(mpt);
    return (error);
   }
   mpt->mpt_pers_mask |= (0x1 << pers->id);
   pers->use_count++;
  }
 }







 for (i = 0; i < MPT_MAX_PERSONALITIES; i++) {
  pers = mpt_personalities[i];
  if (pers != ((void*)0) && MPT_PERS_ATTACHED(pers, mpt) != 0) {
   error = pers->enable(mpt);
   if (error != 0) {
    mpt_prt(mpt, "personality %s attached but would"
        " not enable (%d)\n", pers->name, error);
    mpt_detach(mpt);
    return (error);
   }
  }
 }
 return (0);
}
