
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct log_entry {int operation; int* args; } ;


 int LOGSIZE ;
 int badoff ;
 int logcount ;
 int logptr ;
 struct log_entry* oplog ;
 int prt (char*,...) ;

void
logdump(void)
{
 struct log_entry *lp;
 int i, count, down, opnum;

 prt("LOG DUMP (%d total operations):\n", logcount);
 if (logcount < LOGSIZE) {
  i = 0;
  count = logcount;
 } else {
  i = logptr;
  count = LOGSIZE;
 }

 opnum = i + 1 + (logcount/LOGSIZE)*LOGSIZE;
 for ( ; count > 0; count--) {
  lp = &oplog[i];

  if (lp->operation == 135 ||
      lp->operation == 134) {
   switch (lp->operation) {
   case 135:
    prt("\t\tCLOSE/OPEN\n");
    break;
   case 134:
    prt("\t\tMS_INVALIDATE\n");
    break;
   }
   i++;
   if (i == LOGSIZE)
    i = 0;
   continue;
  }

  prt("%d(%d mod 256): ", opnum, opnum%256);
  switch (lp->operation) {
  case 133:
   prt("MAPREAD\t0x%x thru 0x%x\t(0x%x bytes)",
       lp->args[0], lp->args[0] + lp->args[1] - 1,
       lp->args[1]);
   if (badoff >= lp->args[0] && badoff <
           lp->args[0] + lp->args[1])
    prt("\t***RRRR***");
   break;
  case 132:
   prt("MAPWRITE 0x%x thru 0x%x\t(0x%x bytes)",
       lp->args[0], lp->args[0] + lp->args[1] - 1,
       lp->args[1]);
   if (badoff >= lp->args[0] && badoff <
           lp->args[0] + lp->args[1])
    prt("\t******WWWW");
   break;
  case 131:
   prt("READ\t0x%x thru 0x%x\t(0x%x bytes)",
       lp->args[0], lp->args[0] + lp->args[1] - 1,
       lp->args[1]);
   if (badoff >= lp->args[0] &&
       badoff < lp->args[0] + lp->args[1])
    prt("\t***RRRR***");
   break;
  case 128:
   {
    int offset = lp->args[0];
    int len = lp->args[1];
    int oldlen = lp->args[2];

    prt("WRITE\t0x%x thru 0x%x\t(0x%x bytes)",
        offset, offset + len - 1,
        len);
    if (offset > oldlen)
     prt(" HOLE");
    else if (offset + len > oldlen)
     prt(" EXTEND");
    if ((badoff >= offset || badoff >=oldlen) &&
        badoff < offset + len)
     prt("\t***WWWW");
   }
   break;
  case 129:
   down = lp->args[0] < lp->args[1];
   prt("TRUNCATE %s\tfrom 0x%x to 0x%x",
       down ? "DOWN" : "UP", lp->args[1], lp->args[0]);
   if (badoff >= lp->args[!down] &&
       badoff < lp->args[!!down])
    prt("\t******WWWW");
   break;
  case 130:
   prt("SKIPPED (no operation)");
   break;
  default:
   prt("BOGUS LOG ENTRY (operation code = %d)!",
       lp->operation);
  }
  prt("\n");
  opnum++;
  i++;
  if (i == LOGSIZE)
   i = 0;
 }
}
