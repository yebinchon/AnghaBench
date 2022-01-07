
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int node_p ;
typedef int hook_p ;
typedef TYPE_3__* hinfo_p ;
struct TYPE_9__ {TYPE_2__* out; TYPE_1__* in; } ;
struct TYPE_8__ {char* thisHook; } ;
struct TYPE_7__ {char* thisHook; } ;


 int ENOMEM ;
 int M_NETGRAPH_TAG ;
 int M_NOWAIT ;
 int M_ZERO ;
 int NG_HOOK_SET_PRIVATE (int ,TYPE_3__*) ;
 int free (TYPE_3__*,int ) ;
 TYPE_3__* malloc (int,int ,int) ;
 int ng_tag_default_in ;
 int ng_tag_default_out ;
 int ng_tag_setdata_in (int ,int *) ;
 int ng_tag_setdata_out (int ,int *) ;
 int strncpy (char*,char const*,int) ;

__attribute__((used)) static int
ng_tag_newhook(node_p node, hook_p hook, const char *name)
{
 hinfo_p hip;
 int error;


 hip = malloc(sizeof(*hip), M_NETGRAPH_TAG, M_NOWAIT | M_ZERO);
 if (hip == ((void*)0))
  return (ENOMEM);
 NG_HOOK_SET_PRIVATE(hook, hip);
 if ((error = ng_tag_setdata_in(hook, &ng_tag_default_in)) != 0) {
  free(hip, M_NETGRAPH_TAG);
  return (error);
 }


 if ((error = ng_tag_setdata_out(hook, &ng_tag_default_out)) != 0) {
  free(hip, M_NETGRAPH_TAG);
  return (error);
 }







 strncpy(hip->in->thisHook, name, sizeof(hip->in->thisHook) - 1);
 hip->in->thisHook[sizeof(hip->in->thisHook) - 1] = '\0';
 strncpy(hip->out->thisHook, name, sizeof(hip->out->thisHook) - 1);
 hip->out->thisHook[sizeof(hip->out->thisHook) - 1] = '\0';
 return (0);
}
