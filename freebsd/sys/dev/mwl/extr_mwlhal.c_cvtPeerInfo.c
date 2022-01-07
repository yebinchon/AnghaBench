
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int stbc; int OpMode; int AddChan; int ControlChan; } ;
struct TYPE_10__ {TYPE_2__ AddHtInfo; int MacHTParamInfo; int HTCapabilitiesInfo; int CapInfo; int HTRateBitMap; int LegacyRateBitMap; } ;
struct TYPE_7__ {void* stbc; void* OpMode; int AddChan; int ControlChan; } ;
struct TYPE_9__ {TYPE_1__ AddHtInfo; int MacHTParamInfo; void* HTCapabilitiesInfo; void* CapInfo; void* HTRateBitMap; void* LegacyRateBitMap; } ;
typedef TYPE_3__ PeerInfo_t ;
typedef TYPE_4__ MWL_HAL_PEERINFO ;


 void* htole16 (int ) ;
 void* htole32 (int ) ;

__attribute__((used)) static void
cvtPeerInfo(PeerInfo_t *to, const MWL_HAL_PEERINFO *from)
{
 to->LegacyRateBitMap = htole32(from->LegacyRateBitMap);
 to->HTRateBitMap = htole32(from->HTRateBitMap);
 to->CapInfo = htole16(from->CapInfo);
 to->HTCapabilitiesInfo = htole16(from->HTCapabilitiesInfo);
 to->MacHTParamInfo = from->MacHTParamInfo;
 to->AddHtInfo.ControlChan = from->AddHtInfo.ControlChan;
 to->AddHtInfo.AddChan = from->AddHtInfo.AddChan;
 to->AddHtInfo.OpMode = htole16(from->AddHtInfo.OpMode);
 to->AddHtInfo.stbc = htole16(from->AddHtInfo.stbc);
}
