; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_execute_transaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/siis/extr_siis.c_siis_execute_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siis_slot = type { i32, i32, i32, %union.ccb*, i32 }
%union.ccb = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i32, i32 }
%struct.siis_channel = type { i32, i32, %struct.TYPE_7__, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.siis_cmd = type { i32, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@SIIS_CT_OFFSET = common dso_local global i32 0, align 4
@SIIS_CT_SIZE = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_ATAIO_CONTROL = common dso_local global i32 0, align 4
@SIIS_PRB_SOFT_RESET = common dso_local global i32 0, align 4
@SIIS_PRB_PROTOCOL_OVERRIDE = common dso_local global i32 0, align 4
@CAM_ATAIO_FPDMA = common dso_local global i32 0, align 4
@SIIS_PRB_PROTO_NCQ = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@SIIS_PRB_PROTO_READ = common dso_local global i32 0, align 4
@CAM_DIR_OUT = common dso_local global i32 0, align 4
@SIIS_PRB_PROTO_WRITE = common dso_local global i32 0, align 4
@XPT_SCSI_IO = common dso_local global i64 0, align 8
@SIIS_PRB_PACKET_READ = common dso_local global i32 0, align 4
@SIIS_PRB_PACKET_WRITE = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Setting up SATA FIS failed\0A\00", align 1
@SIIS_ERR_INVALID = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@SIIS_SLOT_RUNNING = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@siis_timeout = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.siis_slot*)* @siis_execute_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @siis_execute_transaction(%struct.siis_slot* %0) #0 {
  %2 = alloca %struct.siis_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.siis_channel*, align 8
  %5 = alloca %struct.siis_cmd*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i32, align 4
  store %struct.siis_slot* %0, %struct.siis_slot** %2, align 8
  %8 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %9 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %3, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.siis_channel* @device_get_softc(i32 %11)
  store %struct.siis_channel* %12, %struct.siis_channel** %4, align 8
  %13 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %14 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %13, i32 0, i32 3
  %15 = load %union.ccb*, %union.ccb** %14, align 8
  store %union.ccb* %15, %union.ccb** %6, align 8
  %16 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %17 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %16, i32 0, i32 6
  %18 = load i32, i32* @MA_OWNED, align 4
  %19 = call i32 @mtx_assert(i32* %17, i32 %18)
  %20 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %21 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @SIIS_CT_OFFSET, align 4
  %25 = add nsw i32 %23, %24
  %26 = load i32, i32* @SIIS_CT_SIZE, align 4
  %27 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %28 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = mul nsw i32 %26, %29
  %31 = add nsw i32 %25, %30
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to %struct.siis_cmd*
  store %struct.siis_cmd* %33, %struct.siis_cmd** %5, align 8
  %34 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %39 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %38, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = load %union.ccb*, %union.ccb** %6, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_8__*
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @XPT_ATA_IO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %119

46:                                               ; preds = %1
  %47 = load %union.ccb*, %union.ccb** %6, align 8
  %48 = bitcast %union.ccb* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %46
  %56 = load i32, i32* @SIIS_PRB_SOFT_RESET, align 4
  %57 = call i32 @htole16(i32 %56)
  %58 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %59 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 8
  br label %118

62:                                               ; preds = %46
  %63 = load i32, i32* @SIIS_PRB_PROTOCOL_OVERRIDE, align 4
  %64 = call i32 @htole16(i32 %63)
  %65 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %66 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  %69 = load %union.ccb*, %union.ccb** %6, align 8
  %70 = bitcast %union.ccb* %69 to %struct.TYPE_6__*
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @CAM_ATAIO_FPDMA, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %62
  %78 = load i32, i32* @SIIS_PRB_PROTO_NCQ, align 4
  %79 = call i32 @htole16(i32 %78)
  %80 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %81 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %77, %62
  %85 = load %union.ccb*, %union.ccb** %6, align 8
  %86 = bitcast %union.ccb* %85 to %struct.TYPE_8__*
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @CAM_DIR_MASK, align 4
  %90 = and i32 %88, %89
  %91 = load i32, i32* @CAM_DIR_IN, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %100

93:                                               ; preds = %84
  %94 = load i32, i32* @SIIS_PRB_PROTO_READ, align 4
  %95 = call i32 @htole16(i32 %94)
  %96 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %97 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %98, %95
  store i32 %99, i32* %97, align 4
  br label %117

100:                                              ; preds = %84
  %101 = load %union.ccb*, %union.ccb** %6, align 8
  %102 = bitcast %union.ccb* %101 to %struct.TYPE_8__*
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @CAM_DIR_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @CAM_DIR_OUT, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %116

109:                                              ; preds = %100
  %110 = load i32, i32* @SIIS_PRB_PROTO_WRITE, align 4
  %111 = call i32 @htole16(i32 %110)
  %112 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %113 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %109, %100
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %117, %55
  br label %161

119:                                              ; preds = %1
  %120 = load %union.ccb*, %union.ccb** %6, align 8
  %121 = bitcast %union.ccb* %120 to %struct.TYPE_8__*
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @XPT_SCSI_IO, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %119
  %127 = load %union.ccb*, %union.ccb** %6, align 8
  %128 = bitcast %union.ccb* %127 to %struct.TYPE_8__*
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @CAM_DIR_MASK, align 4
  %132 = and i32 %130, %131
  %133 = load i32, i32* @CAM_DIR_IN, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %142

135:                                              ; preds = %126
  %136 = load i32, i32* @SIIS_PRB_PACKET_READ, align 4
  %137 = call i32 @htole16(i32 %136)
  %138 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %139 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = or i32 %140, %137
  store i32 %141, i32* %139, align 8
  br label %159

142:                                              ; preds = %126
  %143 = load %union.ccb*, %union.ccb** %6, align 8
  %144 = bitcast %union.ccb* %143 to %struct.TYPE_8__*
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @CAM_DIR_MASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @CAM_DIR_OUT, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %142
  %152 = load i32, i32* @SIIS_PRB_PACKET_WRITE, align 4
  %153 = call i32 @htole16(i32 %152)
  %154 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %155 = getelementptr inbounds %struct.siis_cmd, %struct.siis_cmd* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = or i32 %156, %153
  store i32 %157, i32* %155, align 8
  br label %158

158:                                              ; preds = %151, %142
  br label %159

159:                                              ; preds = %158, %135
  br label %160

160:                                              ; preds = %159, %119
  br label %161

161:                                              ; preds = %160, %118
  %162 = load %union.ccb*, %union.ccb** %6, align 8
  %163 = bitcast %union.ccb* %162 to %struct.TYPE_8__*
  %164 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @XPT_ATA_IO, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %189

168:                                              ; preds = %161
  %169 = load %union.ccb*, %union.ccb** %6, align 8
  %170 = bitcast %union.ccb* %169 to %struct.TYPE_6__*
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @CAM_ATAIO_CONTROL, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %189

177:                                              ; preds = %168
  %178 = load %union.ccb*, %union.ccb** %6, align 8
  %179 = bitcast %union.ccb* %178 to %struct.TYPE_6__*
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ATA_A_RESET, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %189

186:                                              ; preds = %177
  %187 = load i32, i32* %3, align 4
  %188 = call i32 @siis_portinit(i32 %187)
  br label %189

189:                                              ; preds = %186, %177, %168, %161
  %190 = load i32, i32* %3, align 4
  %191 = load %struct.siis_cmd*, %struct.siis_cmd** %5, align 8
  %192 = load %union.ccb*, %union.ccb** %6, align 8
  %193 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %194 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @siis_setup_fis(i32 %190, %struct.siis_cmd* %191, %union.ccb* %192, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %216, label %198

198:                                              ; preds = %189
  %199 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %200 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %199, i32 0, i32 5
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @device_printf(i32 %201, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %203 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %204 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %203, i32 0, i32 4
  %205 = load i32, i32* %204, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %212, label %207

207:                                              ; preds = %198
  %208 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %209 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @xpt_freeze_simq(i32 %210, i32 1)
  br label %212

212:                                              ; preds = %207, %198
  %213 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %214 = load i32, i32* @SIIS_ERR_INVALID, align 4
  %215 = call i32 @siis_end_transaction(%struct.siis_slot* %213, i32 %214)
  br label %281

216:                                              ; preds = %189
  %217 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %218 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %222 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %221, i32 0, i32 2
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  %225 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %226 = call i32 @bus_dmamap_sync(i32 %220, i32 %224, i32 %225)
  %227 = load i32, i32* @SIIS_SLOT_RUNNING, align 4
  %228 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %229 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %228, i32 0, i32 2
  store i32 %227, i32* %229, align 8
  %230 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %231 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = shl i32 1, %232
  %234 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %235 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 4
  %238 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %239 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %238, i32 0, i32 2
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32, i32* @SIIS_CT_OFFSET, align 4
  %243 = add nsw i32 %241, %242
  %244 = load i32, i32* @SIIS_CT_SIZE, align 4
  %245 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %246 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 8
  %248 = mul nsw i32 %244, %247
  %249 = add nsw i32 %243, %248
  store i32 %249, i32* %7, align 4
  %250 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %251 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %254 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = call i32 @SIIS_P_CACTL(i32 %255)
  %257 = load i32, i32* %7, align 4
  %258 = call i32 @ATA_OUTL(i32 %252, i32 %256, i32 %257)
  %259 = load %struct.siis_channel*, %struct.siis_channel** %4, align 8
  %260 = getelementptr inbounds %struct.siis_channel, %struct.siis_channel* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %263 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = call i32 @SIIS_P_CACTH(i32 %264)
  %266 = load i32, i32* %7, align 4
  %267 = ashr i32 %266, 32
  %268 = call i32 @ATA_OUTL(i32 %261, i32 %265, i32 %267)
  %269 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %270 = getelementptr inbounds %struct.siis_slot, %struct.siis_slot* %269, i32 0, i32 1
  %271 = load i32, i32* @SBT_1MS, align 4
  %272 = load %union.ccb*, %union.ccb** %6, align 8
  %273 = bitcast %union.ccb* %272 to %struct.TYPE_8__*
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 2
  %275 = load i32, i32* %274, align 4
  %276 = mul nsw i32 %271, %275
  %277 = load i64, i64* @siis_timeout, align 8
  %278 = inttoptr i64 %277 to i32*
  %279 = load %struct.siis_slot*, %struct.siis_slot** %2, align 8
  %280 = call i32 @callout_reset_sbt(i32* %270, i32 %276, i32 0, i32* %278, %struct.siis_slot* %279, i32 0)
  br label %281

281:                                              ; preds = %216, %212
  ret void
}

declare dso_local %struct.siis_channel* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @htole16(i32) #1

declare dso_local i32 @siis_portinit(i32) #1

declare dso_local i32 @siis_setup_fis(i32, %struct.siis_cmd*, %union.ccb*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @siis_end_transaction(%struct.siis_slot*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @SIIS_P_CACTL(i32) #1

declare dso_local i32 @SIIS_P_CACTH(i32) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32*, %struct.siis_slot*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
