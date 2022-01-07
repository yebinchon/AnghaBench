
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct mpt_softc {int mpt_pers_mask; } ;
struct mpt_personality {int dummy; } ;


 int KASSERT (int,char*) ;
 int MPT_MAX_PERSONALITIES ;
 struct mpt_personality** mpt_personalities ;

__attribute__((used)) static __inline struct mpt_personality *
mpt_pers_find(struct mpt_softc *mpt, u_int start_at)
{
 KASSERT(start_at <= MPT_MAX_PERSONALITIES,
  ("mpt_pers_find: starting position out of range"));

 while (start_at < MPT_MAX_PERSONALITIES
     && (mpt->mpt_pers_mask & (0x1 << start_at)) == 0) {
  start_at++;
 }
 return (mpt_personalities[start_at]);
}
