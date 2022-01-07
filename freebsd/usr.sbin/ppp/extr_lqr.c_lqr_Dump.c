
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lqrdata {char const* MagicNumber; char const* LastOutLQRs; char const* LastOutPackets; char const* LastOutOctets; char const* PeerInLQRs; char const* PeerInPackets; char const* PeerInDiscards; char const* PeerInErrors; char const* PeerInOctets; char const* PeerOutLQRs; char const* PeerOutPackets; char const* PeerOutOctets; } ;


 int LogLQM ;
 scalar_t__ log_IsKept (int ) ;
 int log_Printf (int ,char*,char const*,char const*) ;

void
lqr_Dump(const char *link, const char *message, const struct lqrdata *lqr)
{
  if (log_IsKept(LogLQM)) {
    log_Printf(LogLQM, "%s: %s:\n", link, message);
    log_Printf(LogLQM, "  Magic:          %08x   LastOutLQRs:    %08x\n",
       lqr->MagicNumber, lqr->LastOutLQRs);
    log_Printf(LogLQM, "  LastOutPackets: %08x   LastOutOctets:  %08x\n",
       lqr->LastOutPackets, lqr->LastOutOctets);
    log_Printf(LogLQM, "  PeerInLQRs:     %08x   PeerInPackets:  %08x\n",
       lqr->PeerInLQRs, lqr->PeerInPackets);
    log_Printf(LogLQM, "  PeerInDiscards: %08x   PeerInErrors:   %08x\n",
       lqr->PeerInDiscards, lqr->PeerInErrors);
    log_Printf(LogLQM, "  PeerInOctets:   %08x   PeerOutLQRs:    %08x\n",
       lqr->PeerInOctets, lqr->PeerOutLQRs);
    log_Printf(LogLQM, "  PeerOutPackets: %08x   PeerOutOctets:  %08x\n",
       lqr->PeerOutPackets, lqr->PeerOutOctets);
  }
}
