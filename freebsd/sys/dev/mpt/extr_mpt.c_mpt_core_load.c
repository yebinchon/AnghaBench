
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpt_personality {int dummy; } ;


 size_t MPT_CBI (int ) ;
 int MPT_NUM_REPLY_HANDLERS ;
 int MPT_REPLY_HANDLER_CONFIG ;
 int MPT_REPLY_HANDLER_EVENTS ;
 int MPT_REPLY_HANDLER_HANDSHAKE ;
 int mpt_config_reply_handler ;
 int mpt_default_reply_handler ;
 int mpt_event_reply_handler ;
 int mpt_handshake_reply_handler ;
 int * mpt_reply_handlers ;

__attribute__((used)) static int
mpt_core_load(struct mpt_personality *pers)
{
 int i;





 for (i = 0; i < MPT_NUM_REPLY_HANDLERS; i++) {
  mpt_reply_handlers[i] = mpt_default_reply_handler;
 }

 mpt_reply_handlers[MPT_CBI(MPT_REPLY_HANDLER_EVENTS)] =
     mpt_event_reply_handler;
 mpt_reply_handlers[MPT_CBI(MPT_REPLY_HANDLER_CONFIG)] =
     mpt_config_reply_handler;
 mpt_reply_handlers[MPT_CBI(MPT_REPLY_HANDLER_HANDSHAKE)] =
     mpt_handshake_reply_handler;
 return (0);
}
