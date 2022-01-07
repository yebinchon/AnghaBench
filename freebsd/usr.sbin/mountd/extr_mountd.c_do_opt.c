
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xucred {int dummy; } ;
struct TYPE_2__ {int gt_net; } ;
struct grouplist {scalar_t__ gr_type; TYPE_1__ gr_ptr; } ;
struct exportlist {int ex_indexfile; } ;


 scalar_t__ GT_NET ;
 scalar_t__ GT_NULL ;
 int LOG_ERR ;
 int MNT_EXPORTANON ;
 int MNT_EXPUBLIC ;
 int MNT_EXRDONLY ;
 int OP_ALLDIRS ;
 int OP_MAPALL ;
 int OP_MAPROOT ;
 int OP_MASK ;
 int OP_MASKLEN ;
 int OP_NET ;
 int OP_QUIET ;
 int OP_SEC ;
 scalar_t__ debug ;
 int fprintf (int ,char*) ;
 scalar_t__ get_net (char*,int *,int) ;
 int nextfield (char**,char**) ;
 int opt_flags ;
 int parsecred (char*,struct xucred*) ;
 scalar_t__ parsesec (char*,struct exportlist*) ;
 int stderr ;
 char* strchr (char*,char) ;
 int strcmp (char*,char*) ;
 int strdup (char*) ;
 int syslog (int ,char*,...) ;

__attribute__((used)) static int
do_opt(char **cpp, char **endcpp, struct exportlist *ep, struct grouplist *grp,
 int *has_hostp, int *exflagsp, struct xucred *cr)
{
 char *cpoptarg, *cpoptend;
 char *cp, *endcp, *cpopt, savedc, savedc2;
 int allflag, usedarg;

 savedc2 = '\0';
 cpopt = *cpp;
 cpopt++;
 cp = *endcpp;
 savedc = *cp;
 *cp = '\0';
 while (cpopt && *cpopt) {
  allflag = 1;
  usedarg = -2;
  if ((cpoptend = strchr(cpopt, ','))) {
   *cpoptend++ = '\0';
   if ((cpoptarg = strchr(cpopt, '=')))
    *cpoptarg++ = '\0';
  } else {
   if ((cpoptarg = strchr(cpopt, '=')))
    *cpoptarg++ = '\0';
   else {
    *cp = savedc;
    nextfield(&cp, &endcp);
    **endcpp = '\0';
    if (endcp > cp && *cp != '-') {
     cpoptarg = cp;
     savedc2 = *endcp;
     *endcp = '\0';
     usedarg = 0;
    }
   }
  }
  if (!strcmp(cpopt, "ro") || !strcmp(cpopt, "o")) {
   *exflagsp |= MNT_EXRDONLY;
  } else if (cpoptarg && (!strcmp(cpopt, "maproot") ||
      !(allflag = strcmp(cpopt, "mapall")) ||
      !strcmp(cpopt, "root") || !strcmp(cpopt, "r"))) {
   usedarg++;
   parsecred(cpoptarg, cr);
   if (allflag == 0) {
    *exflagsp |= MNT_EXPORTANON;
    opt_flags |= OP_MAPALL;
   } else
    opt_flags |= OP_MAPROOT;
  } else if (cpoptarg && (!strcmp(cpopt, "mask") ||
      !strcmp(cpopt, "m"))) {
   if (get_net(cpoptarg, &grp->gr_ptr.gt_net, 1)) {
    syslog(LOG_ERR, "bad mask: %s", cpoptarg);
    return (1);
   }
   usedarg++;
   opt_flags |= OP_MASK;
  } else if (cpoptarg && (!strcmp(cpopt, "network") ||
   !strcmp(cpopt, "n"))) {
   if (strchr(cpoptarg, '/') != ((void*)0)) {
    if (debug)
     fprintf(stderr, "setting OP_MASKLEN\n");
    opt_flags |= OP_MASKLEN;
   }
   if (grp->gr_type != GT_NULL) {
    syslog(LOG_ERR, "network/host conflict");
    return (1);
   } else if (get_net(cpoptarg, &grp->gr_ptr.gt_net, 0)) {
    syslog(LOG_ERR, "bad net: %s", cpoptarg);
    return (1);
   }
   grp->gr_type = GT_NET;
   *has_hostp = 1;
   usedarg++;
   opt_flags |= OP_NET;
  } else if (!strcmp(cpopt, "alldirs")) {
   opt_flags |= OP_ALLDIRS;
  } else if (!strcmp(cpopt, "public")) {
   *exflagsp |= MNT_EXPUBLIC;
  } else if (!strcmp(cpopt, "webnfs")) {
   *exflagsp |= (MNT_EXPUBLIC|MNT_EXRDONLY|MNT_EXPORTANON);
   opt_flags |= OP_MAPALL;
  } else if (cpoptarg && !strcmp(cpopt, "index")) {
   ep->ex_indexfile = strdup(cpoptarg);
  } else if (!strcmp(cpopt, "quiet")) {
   opt_flags |= OP_QUIET;
  } else if (cpoptarg && !strcmp(cpopt, "sec")) {
   if (parsesec(cpoptarg, ep))
    return (1);
   opt_flags |= OP_SEC;
   usedarg++;
  } else {
   syslog(LOG_ERR, "bad opt %s", cpopt);
   return (1);
  }
  if (usedarg >= 0) {
   *endcp = savedc2;
   **endcpp = savedc;
   if (usedarg > 0) {
    *cpp = cp;
    *endcpp = endcp;
   }
   return (0);
  }
  cpopt = cpoptend;
 }
 **endcpp = savedc;
 return (0);
}
