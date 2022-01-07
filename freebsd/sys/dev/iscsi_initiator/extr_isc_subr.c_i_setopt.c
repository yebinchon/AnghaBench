
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ maxRecvDataSegmentLength; scalar_t__ maxXmitDataSegmentLength; scalar_t__ maxBurstLength; scalar_t__ maxluns; int * initiatorName; int * targetName; int * targetAddress; } ;
struct TYPE_7__ {int * dataDigest; int * hdrDigest; TYPE_1__ opt; } ;
typedef TYPE_2__ isc_session_t ;
struct TYPE_8__ {scalar_t__ maxRecvDataSegmentLength; scalar_t__ maxXmitDataSegmentLength; scalar_t__ maxBurstLength; scalar_t__ maxluns; int * dataDigest; int * headerDigest; int * initiatorName; int * targetName; int * targetAddress; } ;
typedef TYPE_3__ isc_opt_t ;
typedef int digest_t ;


 scalar_t__ ISCSI_MAX_LUNS ;
 int M_ISC ;
 int free (int *,int ) ;
 scalar_t__ i_crc32c ;
 void* i_strdupin (int *,int) ;
 int sdebug (int,char*,...) ;
 scalar_t__ strcmp (int *,char*) ;

int
i_setopt(isc_session_t *sp, isc_opt_t *opt)
{
     if(opt->maxRecvDataSegmentLength > 0) {
   sp->opt.maxRecvDataSegmentLength = opt->maxRecvDataSegmentLength;
   sdebug(2, "maxRecvDataSegmentLength=%d", sp->opt.maxRecvDataSegmentLength);
     }
     if(opt->maxXmitDataSegmentLength > 0) {

   sp->opt.maxXmitDataSegmentLength = opt->maxXmitDataSegmentLength;
   sdebug(2, "opt.maXmitDataSegmentLength=%d", sp->opt.maxXmitDataSegmentLength);
     }
     if(opt->maxBurstLength != 0) {
   sp->opt.maxBurstLength = opt->maxBurstLength;
   sdebug(2, "opt.maxBurstLength=%d", sp->opt.maxBurstLength);
     }

     if(opt->targetAddress != ((void*)0)) {
   if(sp->opt.targetAddress != ((void*)0))
        free(sp->opt.targetAddress, M_ISC);
   sp->opt.targetAddress = i_strdupin(opt->targetAddress, 128);
   sdebug(2, "opt.targetAddress='%s'", sp->opt.targetAddress);
     }
     if(opt->targetName != ((void*)0)) {
   if(sp->opt.targetName != ((void*)0))
        free(sp->opt.targetName, M_ISC);
   sp->opt.targetName = i_strdupin(opt->targetName, 128);
   sdebug(2, "opt.targetName='%s'", sp->opt.targetName);
     }
     if(opt->initiatorName != ((void*)0)) {
   if(sp->opt.initiatorName != ((void*)0))
        free(sp->opt.initiatorName, M_ISC);
   sp->opt.initiatorName = i_strdupin(opt->initiatorName, 128);
   sdebug(2, "opt.initiatorName='%s'", sp->opt.initiatorName);
     }

     if(opt->maxluns > 0) {
   if(opt->maxluns > ISCSI_MAX_LUNS)
        sp->opt.maxluns = ISCSI_MAX_LUNS;
   sp->opt.maxluns = opt->maxluns;
   sdebug(2, "opt.maxluns=%d", sp->opt.maxluns);
     }

     if(opt->headerDigest != ((void*)0)) {
   sdebug(2, "opt.headerDigest='%s'", opt->headerDigest);
   if(strcmp(opt->headerDigest, "CRC32C") == 0) {
        sp->hdrDigest = (digest_t *)i_crc32c;
        sdebug(2, "opt.headerDigest set");
   }
     }
     if(opt->dataDigest != ((void*)0)) {
   sdebug(2, "opt.dataDigest='%s'", opt->headerDigest);
   if(strcmp(opt->dataDigest, "CRC32C") == 0) {
        sp->dataDigest = (digest_t *)i_crc32c;
        sdebug(2, "opt.dataDigest set");
   }
     }

     return 0;
}
