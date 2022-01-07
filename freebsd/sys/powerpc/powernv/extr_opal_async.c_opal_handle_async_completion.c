
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct opal_msg {int* params; } ;
struct TYPE_2__ {int completed; int msg; } ;


 int atomic_thread_fence_rel () ;
 TYPE_1__* completions ;
 int memcpy (int *,struct opal_msg*,int) ;

__attribute__((used)) static void opal_handle_async_completion(void *arg, struct opal_msg *msg)
{
 int token;

 token = msg->params[0];
 memcpy(&completions[token].msg, msg, sizeof(*msg));
 atomic_thread_fence_rel();
 completions[token].completed = 1;
}
