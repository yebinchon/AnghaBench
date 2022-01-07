
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ng_tag_hookstat {char* thisHook; int tag_len; } ;
struct ng_tag_hookout {char* thisHook; int tag_len; } ;
struct ng_tag_hookin {char* thisHook; int tag_len; } ;
struct TYPE_3__ {int typecookie; int const cmd; int arglen; } ;
struct ng_mesg {char* data; TYPE_1__ header; } ;
typedef int node_p ;
typedef int item_p ;
typedef int * hook_p ;
typedef TYPE_2__* hinfo_p ;
struct TYPE_4__ {struct ng_tag_hookstat stats; struct ng_tag_hookstat* out; struct ng_tag_hookstat* in; } ;


 int EINVAL ;
 int ENOENT ;
 int ERROUT (int) ;
 int M_WAITOK ;
 int NGI_GET_MSG (int ,struct ng_mesg*) ;
 int NG_FREE_MSG (struct ng_mesg*) ;
 int NG_HOOK_PRIVATE (int *) ;
 int NG_MKRESPONSE (struct ng_mesg*,struct ng_mesg*,int,int ) ;
 int NG_RESPOND_MSG (int,int ,int ,struct ng_mesg*) ;
 int NG_TAG_HOOKIN_SIZE (int ) ;
 int NG_TAG_HOOKOUT_SIZE (int ) ;
 int bcopy (struct ng_tag_hookstat*,char*,int) ;
 int bzero (struct ng_tag_hookstat*,int) ;
 int * ng_findhook (int ,char*) ;
 int ng_tag_setdata_in (int *,struct ng_tag_hookstat* const) ;
 int ng_tag_setdata_out (int *,struct ng_tag_hookstat* const) ;

__attribute__((used)) static int
ng_tag_rcvmsg(node_p node, item_p item, hook_p lasthook)
{
 struct ng_mesg *msg;
 struct ng_mesg *resp = ((void*)0);
 int error = 0;

 NGI_GET_MSG(item, msg);
 switch (msg->header.typecookie) {
 case 134:
  switch (msg->header.cmd) {
  case 129:
      {
   struct ng_tag_hookin *const
       hp = (struct ng_tag_hookin *)msg->data;
   hook_p hook;


   if (msg->header.arglen < sizeof(*hp)
       || msg->header.arglen !=
       NG_TAG_HOOKIN_SIZE(hp->tag_len))
    ERROUT(EINVAL);


   if ((hook = ng_findhook(node, hp->thisHook)) == ((void*)0))
    ERROUT(ENOENT);


   if ((error = ng_tag_setdata_in(hook, hp)) != 0)
    ERROUT(error);
   break;
      }

  case 128:
      {
   struct ng_tag_hookout *const
       hp = (struct ng_tag_hookout *)msg->data;
   hook_p hook;


   if (msg->header.arglen < sizeof(*hp)
       || msg->header.arglen !=
       NG_TAG_HOOKOUT_SIZE(hp->tag_len))
    ERROUT(EINVAL);


   if ((hook = ng_findhook(node, hp->thisHook)) == ((void*)0))
    ERROUT(ENOENT);


   if ((error = ng_tag_setdata_out(hook, hp)) != 0)
    ERROUT(error);
   break;
      }

  case 132:
      {
   struct ng_tag_hookin *hp;
   hook_p hook;


   if (msg->header.arglen == 0)
    ERROUT(EINVAL);
   msg->data[msg->header.arglen - 1] = '\0';


   if ((hook = ng_findhook(node, msg->data)) == ((void*)0))
    ERROUT(ENOENT);


   hp = ((hinfo_p)NG_HOOK_PRIVATE(hook))->in;
   NG_MKRESPONSE(resp, msg,
       NG_TAG_HOOKIN_SIZE(hp->tag_len), M_WAITOK);

   bcopy(hp, resp->data,
      NG_TAG_HOOKIN_SIZE(hp->tag_len));
   break;
      }

  case 131:
      {
   struct ng_tag_hookout *hp;
   hook_p hook;


   if (msg->header.arglen == 0)
    ERROUT(EINVAL);
   msg->data[msg->header.arglen - 1] = '\0';


   if ((hook = ng_findhook(node, msg->data)) == ((void*)0))
    ERROUT(ENOENT);


   hp = ((hinfo_p)NG_HOOK_PRIVATE(hook))->out;
   NG_MKRESPONSE(resp, msg,
       NG_TAG_HOOKOUT_SIZE(hp->tag_len), M_WAITOK);

   bcopy(hp, resp->data,
      NG_TAG_HOOKOUT_SIZE(hp->tag_len));
   break;
      }
  default:
   error = EINVAL;
   break;
  }
  break;
 default:
  error = EINVAL;
  break;
 }
done:
 NG_RESPOND_MSG(error, node, item, resp);
 NG_FREE_MSG(msg);
 return (error);
}
