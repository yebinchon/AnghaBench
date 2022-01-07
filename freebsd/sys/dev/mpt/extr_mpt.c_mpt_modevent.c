
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_personality {int id; int (* load ) (struct mpt_personality*) ;int (* unload ) (struct mpt_personality*) ;} ;
typedef int mpt_load_handler_t ;
typedef int module_t ;


 int EINVAL ;
 int ENOMEM ;




 int MPT_MAX_PERSONALITIES ;
 int ** MPT_PERS_FIRST_HANDLER (struct mpt_personality*) ;
 int ** MPT_PERS_LAST_HANDLER (struct mpt_personality*) ;
 struct mpt_personality mpt_default_personality ;
 struct mpt_personality** mpt_personalities ;
 int stub1 (struct mpt_personality*) ;
 int stub2 (struct mpt_personality*) ;

int
mpt_modevent(module_t mod, int type, void *data)
{
 struct mpt_personality *pers;
 int error;

 pers = (struct mpt_personality *)data;

 error = 0;
 switch (type) {
 case 131:
 {
  mpt_load_handler_t **def_handler;
  mpt_load_handler_t **pers_handler;
  int i;

  for (i = 0; i < MPT_MAX_PERSONALITIES; i++) {
   if (mpt_personalities[i] == ((void*)0))
    break;
  }
  if (i >= MPT_MAX_PERSONALITIES) {
   error = ENOMEM;
   break;
  }
  pers->id = i;
  mpt_personalities[i] = pers;


  def_handler = MPT_PERS_FIRST_HANDLER(&mpt_default_personality);
  pers_handler = MPT_PERS_FIRST_HANDLER(pers);
  while (pers_handler <= MPT_PERS_LAST_HANDLER(pers)) {
   if (*pers_handler == ((void*)0))
    *pers_handler = *def_handler;
   pers_handler++;
   def_handler++;
  }

  error = (pers->load(pers));
  if (error != 0)
   mpt_personalities[i] = ((void*)0);
  break;
 }
 case 129:
  break;
 case 130:
  break;
 case 128:
  error = pers->unload(pers);
  mpt_personalities[pers->id] = ((void*)0);
  break;
 default:
  error = EINVAL;
  break;
 }
 return (error);
}
