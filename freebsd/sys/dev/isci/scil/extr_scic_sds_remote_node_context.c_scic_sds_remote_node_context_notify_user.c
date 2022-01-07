
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * user_cookie; int (* user_callback ) (void*) ;} ;
typedef TYPE_1__ SCIC_SDS_REMOTE_NODE_CONTEXT_T ;
typedef int (* SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK ) (void*) ;


 int stub1 (void*) ;

__attribute__((used)) static
void scic_sds_remote_node_context_notify_user(
   SCIC_SDS_REMOTE_NODE_CONTEXT_T *rnc
)
{
   SCIC_SDS_REMOTE_NODE_CONTEXT_CALLBACK local_user_callback = rnc->user_callback;
   void * local_user_cookie = rnc->user_cookie;





   rnc->user_callback = ((void*)0);
   rnc->user_cookie = ((void*)0);

   if (local_user_callback != ((void*)0))
   {
      (*local_user_callback)(local_user_cookie);
   }
}
