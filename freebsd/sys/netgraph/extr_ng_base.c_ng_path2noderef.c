
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * node_p ;
typedef int * hook_p ;
typedef int fullpath ;


 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 scalar_t__ NG_HOOK_NOT_VALID (int *) ;
 int * NG_HOOK_PEER (int *) ;
 int NG_HOOK_REF (int *) ;
 scalar_t__ NG_NODE_NOT_VALID (int *) ;
 int NG_NODE_REF (int *) ;
 int NG_NODE_UNREF (int *) ;
 int NG_PATHSIZ ;
 int * NG_PEER_NODE (int *) ;
 int TOPOLOGY_WLOCK () ;
 int TOPOLOGY_WUNLOCK () ;
 int TRAP_ERROR () ;
 int * ng_findhook (int *,char*) ;
 int * ng_name2noderef (int *,char*) ;
 scalar_t__ ng_path_parse (char*,char**,char**,int *) ;
 int strncpy (char*,char const*,int) ;

int
ng_path2noderef(node_p here, const char *address, node_p *destp,
    hook_p *lasthook)
{
 char fullpath[NG_PATHSIZ];
 char *nodename, *path;
 node_p node, oldnode;


 if (destp == ((void*)0)) {
  TRAP_ERROR();
  return EINVAL;
 }
 *destp = ((void*)0);


 strncpy(fullpath, address, sizeof(fullpath) - 1);
 fullpath[sizeof(fullpath) - 1] = '\0';


 if (ng_path_parse(fullpath, &nodename, &path, ((void*)0)) < 0) {
  TRAP_ERROR();
  return EINVAL;
 }






 if (nodename) {
  node = ng_name2noderef(here, nodename);
  if (node == ((void*)0)) {
   TRAP_ERROR();
   return (ENOENT);
  }
 } else {
  if (here == ((void*)0)) {
   TRAP_ERROR();
   return (EINVAL);
  }
  node = here;
  NG_NODE_REF(node);
 }

 if (path == ((void*)0)) {
  if (lasthook != ((void*)0))
   *lasthook = ((void*)0);
  *destp = node;
  return (0);
 }
 for (;;) {
  hook_p hook;
  char *segment;






  for (segment = path; *path != '\0'; path++) {
   if (*path == '.') {
    *path++ = '\0';
    break;
   }
  }


  hook = ng_findhook(node, segment);

  TOPOLOGY_WLOCK();

  if (hook == ((void*)0) || NG_HOOK_PEER(hook) == ((void*)0) ||
      NG_HOOK_NOT_VALID(hook) ||
      NG_HOOK_NOT_VALID(NG_HOOK_PEER(hook))) {
   TRAP_ERROR();
   NG_NODE_UNREF(node);
   TOPOLOGY_WUNLOCK();
   return (ENOENT);
  }
  oldnode = node;
  if ((node = NG_PEER_NODE(hook)))
   NG_NODE_REF(node);
  NG_NODE_UNREF(oldnode);
  if (NG_NODE_NOT_VALID(node)) {
   NG_NODE_UNREF(node);
   TOPOLOGY_WUNLOCK();
   TRAP_ERROR();
   return (ENXIO);
  }

  if (*path == '\0') {
   if (lasthook != ((void*)0)) {
    if (hook != ((void*)0)) {
     *lasthook = NG_HOOK_PEER(hook);
     NG_HOOK_REF(*lasthook);
    } else
     *lasthook = ((void*)0);
   }
   TOPOLOGY_WUNLOCK();
   *destp = node;
   return (0);
  }
  TOPOLOGY_WUNLOCK();
 }
}
