#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ maxRecvDataSegmentLength; scalar_t__ maxXmitDataSegmentLength; scalar_t__ maxBurstLength; scalar_t__ maxluns; int /*<<< orphan*/ * initiatorName; int /*<<< orphan*/ * targetName; int /*<<< orphan*/ * targetAddress; } ;
struct TYPE_7__ {int /*<<< orphan*/ * dataDigest; int /*<<< orphan*/ * hdrDigest; TYPE_1__ opt; } ;
typedef  TYPE_2__ isc_session_t ;
struct TYPE_8__ {scalar_t__ maxRecvDataSegmentLength; scalar_t__ maxXmitDataSegmentLength; scalar_t__ maxBurstLength; scalar_t__ maxluns; int /*<<< orphan*/ * dataDigest; int /*<<< orphan*/ * headerDigest; int /*<<< orphan*/ * initiatorName; int /*<<< orphan*/ * targetName; int /*<<< orphan*/ * targetAddress; } ;
typedef  TYPE_3__ isc_opt_t ;
typedef  int /*<<< orphan*/  digest_t ;

/* Variables and functions */
 scalar_t__ ISCSI_MAX_LUNS ; 
 int /*<<< orphan*/  M_ISC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ i_crc32c ; 
 void* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 

int
FUNC4(isc_session_t *sp, isc_opt_t *opt)
{
     if(opt->maxRecvDataSegmentLength > 0) {
	  sp->opt.maxRecvDataSegmentLength = opt->maxRecvDataSegmentLength;
	  FUNC2(2, "maxRecvDataSegmentLength=%d", sp->opt.maxRecvDataSegmentLength);
     }
     if(opt->maxXmitDataSegmentLength > 0) {
	  // danny's RFC
	  sp->opt.maxXmitDataSegmentLength = opt->maxXmitDataSegmentLength;
	  FUNC2(2, "opt.maXmitDataSegmentLength=%d", sp->opt.maxXmitDataSegmentLength);
     }
     if(opt->maxBurstLength != 0) {
	  sp->opt.maxBurstLength = opt->maxBurstLength;
	  FUNC2(2, "opt.maxBurstLength=%d", sp->opt.maxBurstLength);
     }

     if(opt->targetAddress != NULL) {
	  if(sp->opt.targetAddress != NULL)
	       FUNC0(sp->opt.targetAddress, M_ISC);
	  sp->opt.targetAddress = FUNC1(opt->targetAddress, 128);
	  FUNC2(2, "opt.targetAddress='%s'", sp->opt.targetAddress);
     }
     if(opt->targetName != NULL) {
	  if(sp->opt.targetName != NULL)
	       FUNC0(sp->opt.targetName, M_ISC);
	  sp->opt.targetName = FUNC1(opt->targetName, 128);
	  FUNC2(2, "opt.targetName='%s'", sp->opt.targetName);
     }
     if(opt->initiatorName != NULL) {
	  if(sp->opt.initiatorName != NULL)
	       FUNC0(sp->opt.initiatorName, M_ISC);
	  sp->opt.initiatorName = FUNC1(opt->initiatorName, 128);
	  FUNC2(2, "opt.initiatorName='%s'", sp->opt.initiatorName);
     }

     if(opt->maxluns > 0) {
	  if(opt->maxluns > ISCSI_MAX_LUNS)
	       sp->opt.maxluns = ISCSI_MAX_LUNS; // silently chop it down ...
	  sp->opt.maxluns = opt->maxluns;
	  FUNC2(2, "opt.maxluns=%d", sp->opt.maxluns);
     }

     if(opt->headerDigest != NULL) {
	  FUNC2(2, "opt.headerDigest='%s'", opt->headerDigest);
	  if(FUNC3(opt->headerDigest, "CRC32C") == 0) {
	       sp->hdrDigest = (digest_t *)i_crc32c;
	       FUNC2(2, "opt.headerDigest set");
	  }
     }
     if(opt->dataDigest != NULL) {
	  FUNC2(2, "opt.dataDigest='%s'", opt->headerDigest);
	  if(FUNC3(opt->dataDigest, "CRC32C") == 0) {
	       sp->dataDigest = (digest_t *)i_crc32c;
	       FUNC2(2, "opt.dataDigest set");
	  }
     }

     return 0;
}