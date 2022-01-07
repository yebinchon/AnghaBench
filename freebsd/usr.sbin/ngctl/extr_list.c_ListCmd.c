
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* u_long ;
struct nodeinfo {int id; char* name; char* type; int hooks; } ;
struct ng_mesg {scalar_t__ data; } ;
struct namelist {int numnames; struct nodeinfo* nodeinfo; } ;
typedef int path ;
struct TYPE_2__ {int (* func ) (int,char**) ;} ;


 int CMDRTN_ERROR ;
 int CMDRTN_OK ;
 int CMDRTN_USAGE ;
 int NGM_GENERIC_COOKIE ;
 int NGM_LISTNAMES ;
 int NGM_LISTNODES ;
 int NG_PATHSIZ ;
 scalar_t__ NgAllocRecvMsg (int ,struct ng_mesg**,int *) ;
 scalar_t__ NgSendMsg (int ,char*,int ,int ,int *,int ) ;
 char* UNNAMED ;
 int csock ;
 int free (struct ng_mesg*) ;
 int getopt (int,char**,char*) ;
 int optind ;
 int printf (char*,...) ;
 TYPE_1__ show_cmd ;
 int snprintf (char*,int,char*,char*) ;
 int stub1 (int,char**) ;
 int warn (char*) ;

__attribute__((used)) static int
ListCmd(int ac, char **av)
{
 struct ng_mesg *resp;
 struct namelist *nlist;
 struct nodeinfo *ninfo;
 int list_hooks = 0;
 int named_only = 0;
 int ch, rtn = CMDRTN_OK;


 optind = 1;
 while ((ch = getopt(ac, av, "ln")) != -1) {
  switch (ch) {
  case 'l':
   list_hooks = 1;
   break;
  case 'n':
   named_only = 1;
   break;
  case '?':
  default:
   return (CMDRTN_USAGE);
   break;
  }
 }
 ac -= optind;
 av += optind;


 switch (ac) {
 case 0:
  break;
 default:
  return (CMDRTN_USAGE);
 }


 if (NgSendMsg(csock, ".", NGM_GENERIC_COOKIE,
     named_only ? NGM_LISTNAMES : NGM_LISTNODES, ((void*)0), 0) < 0) {
  warn("send msg");
  return (CMDRTN_ERROR);
 }
 if (NgAllocRecvMsg(csock, &resp, ((void*)0)) < 0) {
  warn("recv msg");
  return (CMDRTN_ERROR);
 }


 nlist = (struct namelist *) resp->data;
 printf("There are %d total %snodes:\n",
     nlist->numnames, named_only ? "named " : "");
 ninfo = nlist->nodeinfo;
 if (list_hooks) {
  char path[NG_PATHSIZ];
  char *argv[2] = { "show", path };

  while (nlist->numnames > 0) {
   snprintf(path, sizeof(path),
       "[%lx]:", (u_long)ninfo->id);
   if ((rtn = (*show_cmd.func)(2, argv)) != CMDRTN_OK)
    break;
   ninfo++;
   nlist->numnames--;
   if (nlist->numnames > 0)
    printf("\n");
  }
 } else {
  while (nlist->numnames > 0) {
   if (!*ninfo->name)
    snprintf(ninfo->name, sizeof(ninfo->name),
        "%s", UNNAMED);
   printf("  Name: %-15s Type: %-15s ID: %08x   "
       "Num hooks: %d\n",
       ninfo->name, ninfo->type, ninfo->id, ninfo->hooks);
   ninfo++;
   nlist->numnames--;
  }
 }


 free(resp);
 return (rtn);
}
