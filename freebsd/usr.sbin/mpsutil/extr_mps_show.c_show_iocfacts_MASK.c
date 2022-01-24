#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmpbuf ;
struct TYPE_5__ {int Word; } ;
struct TYPE_6__ {int IOCCapabilities; int MsgVersion; int MsgLength; int Function; int HeaderVersion; int IOCNumber; int MsgFlags; int VP_ID; int VF_ID; int IOCExceptions; int IOCStatus; int IOCLogInfo; int MaxChainDepth; int WhoInit; int NumberOfPorts; int MaxMSIxVectors; int RequestCredit; int ProductID; int IOCRequestFrameSize; int MaxInitiators; int MaxTargets; int MaxSasExpanders; int MaxEnclosures; int ProtocolFlags; int HighPriorityCredit; int MaxReplyDescriptorPostQueueDepth; int ReplyFrameSize; int MaxVolumes; int MaxDevHandle; int MaxPersistentEntries; int MinDevHandle; TYPE_1__ FWVersion; } ;
typedef  TYPE_2__ MPI2_IOC_FACTS_REPLY ;

/* Variables and functions */
 char* IOCCAP ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,char*,int) ; 
 int /*<<< orphan*/  mps_unit ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(int ac, char **av)
{
	MPI2_IOC_FACTS_REPLY *facts;
	char tmpbuf[128];
	int error, fd;

	fd = FUNC4(mps_unit);
	if (fd < 0) {
		error = errno;
		FUNC7("mps_open");
		return (error);
	}

	if ((facts = FUNC3(fd)) == NULL) {
		FUNC6("could not get controller IOCFacts\n");
		FUNC1(fd);
		return (errno);
	}

#define IOCCAP "\3ScsiTaskFull" "\4DiagTrace" "\5SnapBuf" "\6ExtBuf" \
    "\7EEDP" "\10BiDirTarg" "\11Multicast" "\14TransRetry" "\15IR" \
    "\16EventReplay" "\17RaidAccel" "\20MSIXIndex" "\21HostDisc" \
    "\22FastPath" "\23RDPQArray" "\24AtomicReqDesc" "\25PCIeSRIOV"

	FUNC0(tmpbuf, sizeof(tmpbuf));
	FUNC5(facts->IOCCapabilities, IOCCAP, tmpbuf, sizeof(tmpbuf));

	FUNC6("          MsgVersion: %02d.%02d\n",
	    facts->MsgVersion >> 8, facts->MsgVersion & 0xff);
	FUNC6("           MsgLength: %d\n", facts->MsgLength);
	FUNC6("            Function: 0x%x\n", facts->Function);
	FUNC6("       HeaderVersion: %02d,%02d\n",
	    facts->HeaderVersion >> 8, facts->HeaderVersion & 0xff);
	FUNC6("           IOCNumber: %d\n", facts->IOCNumber);
	FUNC6("            MsgFlags: 0x%x\n", facts->MsgFlags);
	FUNC6("               VP_ID: %d\n", facts->VP_ID);
	FUNC6("               VF_ID: %d\n", facts->VF_ID);
	FUNC6("       IOCExceptions: %d\n", facts->IOCExceptions);
	FUNC6("           IOCStatus: %d\n", facts->IOCStatus);
	FUNC6("          IOCLogInfo: 0x%x\n", facts->IOCLogInfo);
	FUNC6("       MaxChainDepth: %d\n", facts->MaxChainDepth);
	FUNC6("             WhoInit: 0x%x\n", facts->WhoInit);
	FUNC6("       NumberOfPorts: %d\n", facts->NumberOfPorts);
	FUNC6("      MaxMSIxVectors: %d\n", facts->MaxMSIxVectors);
	FUNC6("       RequestCredit: %d\n", facts->RequestCredit);
	FUNC6("           ProductID: 0x%x\n", facts->ProductID);
	FUNC6("     IOCCapabilities: 0x%x %s\n", facts->IOCCapabilities,
	    tmpbuf);
	FUNC6("           FWVersion: 0x%08x\n", facts->FWVersion.Word);
	FUNC6(" IOCRequestFrameSize: %d\n", facts->IOCRequestFrameSize);
	FUNC6("       MaxInitiators: %d\n", facts->MaxInitiators);
	FUNC6("          MaxTargets: %d\n", facts->MaxTargets);
	FUNC6("     MaxSasExpanders: %d\n", facts->MaxSasExpanders);
	FUNC6("       MaxEnclosures: %d\n", facts->MaxEnclosures);

	FUNC0(tmpbuf, sizeof(tmpbuf));
	FUNC5(facts->ProtocolFlags,
	    "\4NvmeDevices\2ScsiTarget\1ScsiInitiator", tmpbuf, sizeof(tmpbuf));
	FUNC6("       ProtocolFlags: 0x%x %s\n", facts->ProtocolFlags, tmpbuf);
	FUNC6("  HighPriorityCredit: %d\n", facts->HighPriorityCredit);
	FUNC6("MaxRepDescPostQDepth: %d\n",
	    facts->MaxReplyDescriptorPostQueueDepth);
	FUNC6("      ReplyFrameSize: %d\n", facts->ReplyFrameSize);
	FUNC6("          MaxVolumes: %d\n", facts->MaxVolumes);
	FUNC6("        MaxDevHandle: %d\n", facts->MaxDevHandle);
	FUNC6("MaxPersistentEntries: %d\n", facts->MaxPersistentEntries);
	FUNC6("        MinDevHandle: %d\n", facts->MinDevHandle);

	FUNC2(facts);
	return (0);
}