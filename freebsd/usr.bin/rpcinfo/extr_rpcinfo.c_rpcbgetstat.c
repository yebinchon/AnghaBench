
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int xdrproc_t ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_6__ {int success; struct TYPE_6__* next; } ;
typedef TYPE_1__ rpcbs_rmtcalllist ;
struct TYPE_7__ {int success; struct TYPE_7__* next; } ;
typedef TYPE_2__ rpcbs_addrlist ;
typedef TYPE_3__* rpcb_stat_byvers ;
struct TYPE_8__ {int setinfo; int unsetinfo; int* info; TYPE_1__* rmtinfo; TYPE_2__* addrinfo; } ;
typedef int CLIENT ;


 scalar_t__ CLNT_CALL (int *,int ,int ,int *,int ,char*,struct timeval) ;
 int MAX (int,int) ;
 int MAXFIELD ;
 int MAXLINE ;




 int PMAPPROG ;


 size_t RPCBPROC_GETADDRLIST ;
 int RPCBPROC_GETSTAT ;
 size_t RPCBPROC_INDIRECT ;


 int RPCBVERS4 ;
 size_t RPCBVERS_2_STAT ;
 size_t RPCBVERS_3_STAT ;
 size_t RPCBVERS_4_STAT ;
 scalar_t__ RPC_SUCCESS ;
 int TABSTOP ;
 int clnt_destroy (int *) ;
 int clnt_pcreateerror (char*) ;
 int clnt_perror (int *,char*) ;
 int * clnt_rpcbind_create (char*,int ,int *) ;
 int exit (int) ;
 int * local_rpcb (int ,int ) ;
 int memset (char*,int ,int) ;
 int print_getaddrstat (size_t,TYPE_3__*) ;
 int print_rmtcallstat (size_t,TYPE_3__*) ;
 int printf (char*,...) ;
 int rpcb_highproc_2 ;
 int rpcb_highproc_3 ;
 int rpcb_highproc_4 ;
 int spaces (int) ;
 int sprintf (char*,char*,...) ;
 int strlen (char const*) ;
 scalar_t__ xdr_rpcb_stat_byvers ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
rpcbgetstat(int argc, char **argv)
{
 rpcb_stat_byvers inf;
 struct timeval minutetimeout;
 register CLIENT *client;
 char *host;
 int i, j;
 rpcbs_addrlist *pa;
 rpcbs_rmtcalllist *pr;
 int cnt, flen;

 char fieldbuf[64];

 char linebuf[256];
 char *cp, *lp;
 const char *pmaphdr[] = {
  "NULL", "SET", "UNSET", "GETPORT",
  "DUMP", "CALLIT"
 };
 const char *rpcb3hdr[] = {
  "NULL", "SET", "UNSET", "GETADDR", "DUMP", "CALLIT", "TIME",
  "U2T", "T2U"
 };
 const char *rpcb4hdr[] = {
  "NULL", "SET", "UNSET", "GETADDR", "DUMP", "CALLIT", "TIME",
  "U2T", "T2U", "VERADDR", "INDRECT", "GETLIST", "GETSTAT"
 };



 if (argc >= 1) {
  host = argv[0];
  client = clnt_rpcbind_create(host, RPCBVERS4, ((void*)0));
 } else
  client = local_rpcb(PMAPPROG, RPCBVERS4);
 if (client == (CLIENT *)((void*)0)) {
  clnt_pcreateerror("rpcinfo: can't contact rpcbind");
  exit(1);
 }
 minutetimeout.tv_sec = 60;
 minutetimeout.tv_usec = 0;
 memset((char *)&inf, 0, sizeof (rpcb_stat_byvers));
 if (CLNT_CALL(client, RPCBPROC_GETSTAT, (xdrproc_t) xdr_void, ((void*)0),
  (xdrproc_t) xdr_rpcb_stat_byvers, (char *)&inf, minutetimeout)
   != RPC_SUCCESS) {
  clnt_perror(client, "rpcinfo: can't contact rpcbind: ");
  exit(1);
 }
 printf("PORTMAP (version 2) statistics\n");
 lp = linebuf;
 for (i = 0; i <= rpcb_highproc_2; i++) {
  fieldbuf[0] = '\0';
  switch (i) {
  case 133:
   sprintf(fieldbuf, "%d/", inf[RPCBVERS_2_STAT].setinfo);
   break;
  case 132:
   sprintf(fieldbuf, "%d/",
    inf[RPCBVERS_2_STAT].unsetinfo);
   break;
  case 134:
   cnt = 0;
   for (pa = inf[RPCBVERS_2_STAT].addrinfo; pa;
    pa = pa->next)
    cnt += pa->success;
   sprintf(fieldbuf, "%d/", cnt);
   break;
  case 135:
   cnt = 0;
   for (pr = inf[RPCBVERS_2_STAT].rmtinfo; pr;
    pr = pr->next)
    cnt += pr->success;
   sprintf(fieldbuf, "%d/", cnt);
   break;
  default: break;
  }
  cp = &fieldbuf[0] + strlen(fieldbuf);
  sprintf(cp, "%d", inf[RPCBVERS_2_STAT].info[i]);
  flen = strlen(fieldbuf);
  printf("%s%s", pmaphdr[i],
   spaces((8 * (1 + flen / 8))
   - strlen(pmaphdr[i])));
  sprintf(lp, "%s%s", fieldbuf,
   spaces(cnt = ((8 * (1 + flen / 8))
   - flen)));
  lp += (flen + cnt);
 }
 printf("\n%s\n\n", linebuf);

 if (inf[RPCBVERS_2_STAT].info[135]) {
  printf("PMAP_RMTCALL call statistics\n");
  print_rmtcallstat(RPCBVERS_2_STAT, &inf[RPCBVERS_2_STAT]);
  printf("\n");
 }

 if (inf[RPCBVERS_2_STAT].info[134]) {
  printf("PMAP_GETPORT call statistics\n");
  print_getaddrstat(RPCBVERS_2_STAT, &inf[RPCBVERS_2_STAT]);
  printf("\n");
 }

 printf("RPCBIND (version 3) statistics\n");
 lp = linebuf;
 for (i = 0; i <= rpcb_highproc_3; i++) {
  fieldbuf[0] = '\0';
  switch (i) {
  case 129:
   sprintf(fieldbuf, "%d/", inf[RPCBVERS_3_STAT].setinfo);
   break;
  case 128:
   sprintf(fieldbuf, "%d/",
    inf[RPCBVERS_3_STAT].unsetinfo);
   break;
  case 130:
   cnt = 0;
   for (pa = inf[RPCBVERS_3_STAT].addrinfo; pa;
    pa = pa->next)
    cnt += pa->success;
   sprintf(fieldbuf, "%d/", cnt);
   break;
  case 131:
   cnt = 0;
   for (pr = inf[RPCBVERS_3_STAT].rmtinfo; pr;
    pr = pr->next)
    cnt += pr->success;
   sprintf(fieldbuf, "%d/", cnt);
   break;
  default: break;
  }
  cp = &fieldbuf[0] + strlen(fieldbuf);
  sprintf(cp, "%d", inf[RPCBVERS_3_STAT].info[i]);
  flen = strlen(fieldbuf);
  printf("%s%s", rpcb3hdr[i],
   spaces((8 * (1 + flen / 8))
   - strlen(rpcb3hdr[i])));
  sprintf(lp, "%s%s", fieldbuf,
   spaces(cnt = ((8 * (1 + flen / 8))
   - flen)));
  lp += (flen + cnt);
 }
 printf("\n%s\n\n", linebuf);

 if (inf[RPCBVERS_3_STAT].info[131]) {
  printf("RPCB_RMTCALL (version 3) call statistics\n");
  print_rmtcallstat(RPCBVERS_3_STAT, &inf[RPCBVERS_3_STAT]);
  printf("\n");
 }

 if (inf[RPCBVERS_3_STAT].info[130]) {
  printf("RPCB_GETADDR (version 3) call statistics\n");
  print_getaddrstat(RPCBVERS_3_STAT, &inf[RPCBVERS_3_STAT]);
  printf("\n");
 }

 printf("RPCBIND (version 4) statistics\n");

 for (j = 0; j <= 9; j += 9) {
  lp = linebuf;
  for (i = j; i <= MAX(8, rpcb_highproc_4 - 9 + j); i++) {
   fieldbuf[0] = '\0';
   switch (i) {
   case 129:
    sprintf(fieldbuf, "%d/",
     inf[RPCBVERS_4_STAT].setinfo);
    break;
   case 128:
    sprintf(fieldbuf, "%d/",
     inf[RPCBVERS_4_STAT].unsetinfo);
    break;
   case 130:
    cnt = 0;
    for (pa = inf[RPCBVERS_4_STAT].addrinfo; pa;
     pa = pa->next)
     cnt += pa->success;
    sprintf(fieldbuf, "%d/", cnt);
    break;
   case 131:
    cnt = 0;
    for (pr = inf[RPCBVERS_4_STAT].rmtinfo; pr;
     pr = pr->next)
     cnt += pr->success;
    sprintf(fieldbuf, "%d/", cnt);
    break;
   default: break;
   }
   cp = &fieldbuf[0] + strlen(fieldbuf);





   if (i != 130)
       sprintf(cp, "%d", inf[RPCBVERS_4_STAT].info[i]);
   else
       sprintf(cp, "%d", inf[RPCBVERS_4_STAT].info[i] +
       inf[RPCBVERS_4_STAT].info[RPCBPROC_GETADDRLIST]);
   flen = strlen(fieldbuf);
   printf("%s%s", rpcb4hdr[i],
    spaces((8 * (1 + flen / 8))
    - strlen(rpcb4hdr[i])));
   sprintf(lp, "%s%s", fieldbuf,
    spaces(cnt = ((8 * (1 + flen / 8))
    - flen)));
   lp += (flen + cnt);
  }
  printf("\n%s\n", linebuf);
 }

 if (inf[RPCBVERS_4_STAT].info[131] ||
       inf[RPCBVERS_4_STAT].info[RPCBPROC_INDIRECT]) {
  printf("\n");
  printf("RPCB_RMTCALL (version 4) call statistics\n");
  print_rmtcallstat(RPCBVERS_4_STAT, &inf[RPCBVERS_4_STAT]);
 }

 if (inf[RPCBVERS_4_STAT].info[130]) {
  printf("\n");
  printf("RPCB_GETADDR (version 4) call statistics\n");
  print_getaddrstat(RPCBVERS_4_STAT, &inf[RPCBVERS_4_STAT]);
 }
 clnt_destroy(client);
}
