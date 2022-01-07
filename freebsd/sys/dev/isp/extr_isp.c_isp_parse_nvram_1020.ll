; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_1020.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_1020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@ISP_CFG_OWNLOOPID = common dso_local global i32 0, align 4
@ISP_HA_SCSI_1040 = common dso_local global i64 0, align 8
@MAX_TARGETS = common dso_local global i32 0, align 4
@DPARM_RENEG = common dso_local global i32 0, align 4
@DPARM_ARQ = common dso_local global i32 0, align 4
@DPARM_TQING = common dso_local global i32 0, align 4
@DPARM_SYNC = common dso_local global i32 0, align 4
@DPARM_WIDE = common dso_local global i32 0, align 4
@DPARM_PARITY = common dso_local global i32 0, align 4
@DPARM_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32*)* @isp_parse_nvram_1020 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_parse_nvram_1020(%struct.TYPE_9__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %8 = call %struct.TYPE_8__* @SDPARAM(%struct.TYPE_9__* %7, i32 0)
  store %struct.TYPE_8__* %8, %struct.TYPE_8__** %5, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = call i32 @ISP_NVRAM_FIFO_THRESHOLD(i32* %9)
  %11 = load i32*, i32** %4, align 8
  %12 = call i32 @ISP_NVRAM_FIFO_THRESHOLD_128(i32* %11)
  %13 = shl i32 %12, 2
  %14 = or i32 %10, %13
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @ISP_CFG_OWNLOOPID, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @ISP_NVRAM_INITIATOR_ID(i32* %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 14
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %23, %2
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @ISP_NVRAM_BUS_RESET_DELAY(i32* %29)
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 13
  store i32 %30, i32* %32, align 8
  %33 = load i32*, i32** %4, align 8
  %34 = call i32 @ISP_NVRAM_BUS_RETRY_COUNT(i32* %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 12
  store i32 %34, i32* %36, align 4
  %37 = load i32*, i32** %4, align 8
  %38 = call i32 @ISP_NVRAM_BUS_RETRY_DELAY(i32* %37)
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 11
  store i32 %38, i32* %40, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @ISP_NVRAM_ASYNC_DATA_SETUP_TIME(i32* %41)
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ISP_HA_SCSI_1040, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %59

50:                                               ; preds = %28
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp slt i32 %53, 9
  br i1 %54, label %55, label %58

55:                                               ; preds = %50
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 1
  store i32 9, i32* %57, align 4
  br label %58

58:                                               ; preds = %55, %50
  br label %68

59:                                               ; preds = %28
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 6
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 1
  store i32 6, i32* %66, align 4
  br label %67

67:                                               ; preds = %64, %59
  br label %68

68:                                               ; preds = %67, %58
  %69 = load i32*, i32** %4, align 8
  %70 = call i32 @ISP_NVRAM_REQ_ACK_ACTIVE_NEGATION(i32* %69)
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 10
  store i32 %70, i32* %72, align 4
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @ISP_NVRAM_DATA_LINE_ACTIVE_NEGATION(i32* %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 9
  store i32 %74, i32* %76, align 8
  %77 = load i32*, i32** %4, align 8
  %78 = call i32 @ISP_NVRAM_DATA_DMA_BURST_ENABLE(i32* %77)
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = call i32 @ISP_NVRAM_CMD_DMA_BURST_ENABLE(i32* %81)
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load i32*, i32** %4, align 8
  %86 = call i32 @ISP_NVRAM_TAG_AGE_LIMIT(i32* %85)
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 6
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %4, align 8
  %90 = call i32 @ISP_NVRAM_SELECTION_TIMEOUT(i32* %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = call i32 @ISP_NVRAM_MAX_QUEUE_DEPTH(i32* %93)
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 4
  store i32 %94, i32* %96, align 4
  %97 = load i32*, i32** %4, align 8
  %98 = call i32 @ISP_NVRAM_FAST_MTTR_ENABLE(i32* %97)
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 3
  store i32 %98, i32* %100, align 8
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %373, %68
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* @MAX_TARGETS, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %376

105:                                              ; preds = %101
  %106 = load i32*, i32** %4, align 8
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @ISP_NVRAM_TGT_DEVICE_ENABLE(i32* %106, i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 2
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 8
  store i32 %108, i32* %115, align 4
  %116 = load i32*, i32** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @ISP_NVRAM_TGT_EXEC_THROTTLE(i32* %116, i32 %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 2
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i32, i32* %6, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 7
  store i32 %118, i32* %125, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @ISP_NVRAM_TGT_SYNC_OFFSET(i32* %126, i32 %127)
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = load i32, i32* %6, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 0
  store i32 %128, i32* %135, align 8
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @ISP_NVRAM_TGT_SYNC_PERIOD(i32* %136, i32 %137)
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 2
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %140, align 8
  %142 = load i32, i32* %6, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  store i32 %138, i32* %145, align 4
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ISP_HA_SCSI_1040, align 8
  %150 = icmp slt i64 %148, %149
  br i1 %150, label %151, label %188

151:                                              ; preds = %105
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i32 0, i32 2
  %154 = load %struct.TYPE_7__*, %struct.TYPE_7__** %153, align 8
  %155 = load i32, i32* %6, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %159, 25
  br i1 %160, label %161, label %169

161:                                              ; preds = %151
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 2
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %163, align 8
  %165 = load i32, i32* %6, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i64 %166
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 1
  store i32 25, i32* %168, align 4
  br label %169

169:                                              ; preds = %161, %151
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = icmp sgt i32 %177, 12
  br i1 %178, label %179, label %187

179:                                              ; preds = %169
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 2
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i64 %184
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 12, i32* %186, align 8
  br label %187

187:                                              ; preds = %179, %169
  br label %207

188:                                              ; preds = %105
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i64 %193
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = icmp sgt i32 %196, 8
  br i1 %197, label %198, label %206

198:                                              ; preds = %188
  %199 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 2
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  store i32 8, i32* %205, align 8
  br label %206

206:                                              ; preds = %198, %188
  br label %207

207:                                              ; preds = %206, %187
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 2
  %210 = load %struct.TYPE_7__*, %struct.TYPE_7__** %209, align 8
  %211 = load i32, i32* %6, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %210, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 4
  store i32 0, i32* %214, align 8
  %215 = load i32*, i32** %4, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i64 @ISP_NVRAM_TGT_RENEG(i32* %215, i32 %216)
  %218 = icmp ne i64 %217, 0
  br i1 %218, label %219, label %230

219:                                              ; preds = %207
  %220 = load i32, i32* @DPARM_RENEG, align 4
  %221 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %222 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %221, i32 0, i32 2
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i32, i32* %6, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %226, i32 0, i32 4
  %228 = load i32, i32* %227, align 8
  %229 = or i32 %228, %220
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %219, %207
  %231 = load i32, i32* @DPARM_ARQ, align 4
  %232 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %232, i32 0, i32 2
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %233, align 8
  %235 = load i32, i32* %6, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 8
  %240 = or i32 %239, %231
  store i32 %240, i32* %238, align 8
  %241 = load i32*, i32** %4, align 8
  %242 = load i32, i32* %6, align 4
  %243 = call i64 @ISP_NVRAM_TGT_TQING(i32* %241, i32 %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %256

245:                                              ; preds = %230
  %246 = load i32, i32* @DPARM_TQING, align 4
  %247 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 2
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %248, align 8
  %250 = load i32, i32* %6, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i64 %251
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 8
  %255 = or i32 %254, %246
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %245, %230
  %257 = load i32*, i32** %4, align 8
  %258 = load i32, i32* %6, align 4
  %259 = call i64 @ISP_NVRAM_TGT_SYNC(i32* %257, i32 %258)
  %260 = icmp ne i64 %259, 0
  br i1 %260, label %261, label %272

261:                                              ; preds = %256
  %262 = load i32, i32* @DPARM_SYNC, align 4
  %263 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %263, i32 0, i32 2
  %265 = load %struct.TYPE_7__*, %struct.TYPE_7__** %264, align 8
  %266 = load i32, i32* %6, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i64 %267
  %269 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 8
  %271 = or i32 %270, %262
  store i32 %271, i32* %269, align 8
  br label %272

272:                                              ; preds = %261, %256
  %273 = load i32*, i32** %4, align 8
  %274 = load i32, i32* %6, align 4
  %275 = call i64 @ISP_NVRAM_TGT_WIDE(i32* %273, i32 %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load i32, i32* @DPARM_WIDE, align 4
  %279 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %280 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %279, i32 0, i32 2
  %281 = load %struct.TYPE_7__*, %struct.TYPE_7__** %280, align 8
  %282 = load i32, i32* %6, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %281, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i32 0, i32 4
  %286 = load i32, i32* %285, align 8
  %287 = or i32 %286, %278
  store i32 %287, i32* %285, align 8
  br label %288

288:                                              ; preds = %277, %272
  %289 = load i32*, i32** %4, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i64 @ISP_NVRAM_TGT_PARITY(i32* %289, i32 %290)
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %304

293:                                              ; preds = %288
  %294 = load i32, i32* @DPARM_PARITY, align 4
  %295 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 2
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %296, align 8
  %298 = load i32, i32* %6, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %300, i32 0, i32 4
  %302 = load i32, i32* %301, align 8
  %303 = or i32 %302, %294
  store i32 %303, i32* %301, align 8
  br label %304

304:                                              ; preds = %293, %288
  %305 = load i32*, i32** %4, align 8
  %306 = load i32, i32* %6, align 4
  %307 = call i64 @ISP_NVRAM_TGT_DISC(i32* %305, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %304
  %310 = load i32, i32* @DPARM_DISC, align 4
  %311 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 2
  %313 = load %struct.TYPE_7__*, %struct.TYPE_7__** %312, align 8
  %314 = load i32, i32* %6, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %313, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = or i32 %318, %310
  store i32 %319, i32* %317, align 8
  br label %320

320:                                              ; preds = %309, %304
  %321 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %321, i32 0, i32 2
  %323 = load %struct.TYPE_7__*, %struct.TYPE_7__** %322, align 8
  %324 = load i32, i32* %6, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %323, i64 %325
  %327 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %326, i32 0, i32 6
  store i64 0, i64* %327, align 8
  %328 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %329 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %328, i32 0, i32 2
  %330 = load %struct.TYPE_7__*, %struct.TYPE_7__** %329, align 8
  %331 = load i32, i32* %6, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %330, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 0
  %335 = load i32, i32* %334, align 8
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 2
  %338 = load %struct.TYPE_7__*, %struct.TYPE_7__** %337, align 8
  %339 = load i32, i32* %6, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %338, i64 %340
  %342 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %341, i32 0, i32 2
  store i32 %335, i32* %342, align 8
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 2
  %345 = load %struct.TYPE_7__*, %struct.TYPE_7__** %344, align 8
  %346 = load i32, i32* %6, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %345, i64 %347
  %349 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %348, i32 0, i32 1
  %350 = load i32, i32* %349, align 4
  %351 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %352 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %351, i32 0, i32 2
  %353 = load %struct.TYPE_7__*, %struct.TYPE_7__** %352, align 8
  %354 = load i32, i32* %6, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %353, i64 %355
  %357 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %356, i32 0, i32 3
  store i32 %350, i32* %357, align 4
  %358 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %359 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %358, i32 0, i32 2
  %360 = load %struct.TYPE_7__*, %struct.TYPE_7__** %359, align 8
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %360, i64 %362
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 4
  %365 = load i32, i32* %364, align 8
  %366 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %367 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %366, i32 0, i32 2
  %368 = load %struct.TYPE_7__*, %struct.TYPE_7__** %367, align 8
  %369 = load i32, i32* %6, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %368, i64 %370
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 5
  store i32 %365, i32* %372, align 4
  br label %373

373:                                              ; preds = %320
  %374 = load i32, i32* %6, align 4
  %375 = add nsw i32 %374, 1
  store i32 %375, i32* %6, align 4
  br label %101

376:                                              ; preds = %101
  ret void
}

declare dso_local %struct.TYPE_8__* @SDPARAM(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ISP_NVRAM_FIFO_THRESHOLD(i32*) #1

declare dso_local i32 @ISP_NVRAM_FIFO_THRESHOLD_128(i32*) #1

declare dso_local i32 @ISP_NVRAM_INITIATOR_ID(i32*) #1

declare dso_local i32 @ISP_NVRAM_BUS_RESET_DELAY(i32*) #1

declare dso_local i32 @ISP_NVRAM_BUS_RETRY_COUNT(i32*) #1

declare dso_local i32 @ISP_NVRAM_BUS_RETRY_DELAY(i32*) #1

declare dso_local i32 @ISP_NVRAM_ASYNC_DATA_SETUP_TIME(i32*) #1

declare dso_local i32 @ISP_NVRAM_REQ_ACK_ACTIVE_NEGATION(i32*) #1

declare dso_local i32 @ISP_NVRAM_DATA_LINE_ACTIVE_NEGATION(i32*) #1

declare dso_local i32 @ISP_NVRAM_DATA_DMA_BURST_ENABLE(i32*) #1

declare dso_local i32 @ISP_NVRAM_CMD_DMA_BURST_ENABLE(i32*) #1

declare dso_local i32 @ISP_NVRAM_TAG_AGE_LIMIT(i32*) #1

declare dso_local i32 @ISP_NVRAM_SELECTION_TIMEOUT(i32*) #1

declare dso_local i32 @ISP_NVRAM_MAX_QUEUE_DEPTH(i32*) #1

declare dso_local i32 @ISP_NVRAM_FAST_MTTR_ENABLE(i32*) #1

declare dso_local i32 @ISP_NVRAM_TGT_DEVICE_ENABLE(i32*, i32) #1

declare dso_local i32 @ISP_NVRAM_TGT_EXEC_THROTTLE(i32*, i32) #1

declare dso_local i32 @ISP_NVRAM_TGT_SYNC_OFFSET(i32*, i32) #1

declare dso_local i32 @ISP_NVRAM_TGT_SYNC_PERIOD(i32*, i32) #1

declare dso_local i64 @ISP_NVRAM_TGT_RENEG(i32*, i32) #1

declare dso_local i64 @ISP_NVRAM_TGT_TQING(i32*, i32) #1

declare dso_local i64 @ISP_NVRAM_TGT_SYNC(i32*, i32) #1

declare dso_local i64 @ISP_NVRAM_TGT_WIDE(i32*, i32) #1

declare dso_local i64 @ISP_NVRAM_TGT_PARITY(i32*, i32) #1

declare dso_local i64 @ISP_NVRAM_TGT_DISC(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
