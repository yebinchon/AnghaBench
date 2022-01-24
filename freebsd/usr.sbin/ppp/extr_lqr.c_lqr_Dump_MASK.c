#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lqrdata {char const* MagicNumber; char const* LastOutLQRs; char const* LastOutPackets; char const* LastOutOctets; char const* PeerInLQRs; char const* PeerInPackets; char const* PeerInDiscards; char const* PeerInErrors; char const* PeerInOctets; char const* PeerOutLQRs; char const* PeerOutPackets; char const* PeerOutOctets; } ;

/* Variables and functions */
 int /*<<< orphan*/  LogLQM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,char const*) ; 

void
FUNC2(const char *link, const char *message, const struct lqrdata *lqr)
{
  if (FUNC0(LogLQM)) {
    FUNC1(LogLQM, "%s: %s:\n", link, message);
    FUNC1(LogLQM, "  Magic:          %08x   LastOutLQRs:    %08x\n",
	      lqr->MagicNumber, lqr->LastOutLQRs);
    FUNC1(LogLQM, "  LastOutPackets: %08x   LastOutOctets:  %08x\n",
	      lqr->LastOutPackets, lqr->LastOutOctets);
    FUNC1(LogLQM, "  PeerInLQRs:     %08x   PeerInPackets:  %08x\n",
	      lqr->PeerInLQRs, lqr->PeerInPackets);
    FUNC1(LogLQM, "  PeerInDiscards: %08x   PeerInErrors:   %08x\n",
	      lqr->PeerInDiscards, lqr->PeerInErrors);
    FUNC1(LogLQM, "  PeerInOctets:   %08x   PeerOutLQRs:    %08x\n",
	      lqr->PeerInOctets, lqr->PeerOutLQRs);
    FUNC1(LogLQM, "  PeerOutPackets: %08x   PeerOutOctets:  %08x\n",
	      lqr->PeerOutPackets, lqr->PeerOutOctets);
  }
}