
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t u_int ;
struct mpt_softc {int dummy; } ;
typedef int mpt_handler_type ;
struct TYPE_3__ {int reply_handler; } ;
typedef TYPE_1__ mpt_handler_t ;


 int EINVAL ;
 int ENOMEM ;
 int MPT_CBI_TO_HID (size_t) ;
 size_t MPT_HANDLER_ID_NONE ;

 size_t MPT_NUM_REPLY_HANDLERS ;
 int mpt_default_reply_handler ;
 int mpt_prt (struct mpt_softc*,char*,int) ;
 int * mpt_reply_handlers ;

int
mpt_register_handler(struct mpt_softc *mpt, mpt_handler_type type,
       mpt_handler_t handler, uint32_t *phandler_id)
{

 switch (type) {
 case 128:
 {
  u_int cbi;
  u_int free_cbi;

  if (phandler_id == ((void*)0))
   return (EINVAL);

  free_cbi = MPT_HANDLER_ID_NONE;
  for (cbi = 0; cbi < MPT_NUM_REPLY_HANDLERS; cbi++) {





   if (mpt_reply_handlers[cbi] == handler.reply_handler) {
    *phandler_id = MPT_CBI_TO_HID(cbi);
    return (0);
   }
   if (free_cbi == MPT_HANDLER_ID_NONE &&
       (mpt_reply_handlers[cbi]
     == mpt_default_reply_handler))
    free_cbi = cbi;
  }
  if (free_cbi == MPT_HANDLER_ID_NONE) {
   return (ENOMEM);
  }
  mpt_reply_handlers[free_cbi] = handler.reply_handler;
  *phandler_id = MPT_CBI_TO_HID(free_cbi);
  break;
 }
 default:
  mpt_prt(mpt, "mpt_register_handler unknown type %d\n", type);
  return (EINVAL);
 }
 return (0);
}
