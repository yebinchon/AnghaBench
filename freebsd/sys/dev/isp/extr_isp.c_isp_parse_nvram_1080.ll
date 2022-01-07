; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_1080.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/isp/extr_isp.c_isp_parse_nvram_1080.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, i32, i8*, i8*, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i32 }

@ISP_CFG_OWNLOOPID = common dso_local global i32 0, align 4
@MAX_TARGETS = common dso_local global i32 0, align 4
@DPARM_RENEG = common dso_local global i32 0, align 4
@DPARM_ARQ = common dso_local global i32 0, align 4
@DPARM_TQING = common dso_local global i32 0, align 4
@DPARM_SYNC = common dso_local global i32 0, align 4
@DPARM_WIDE = common dso_local global i32 0, align 4
@DPARM_PARITY = common dso_local global i32 0, align 4
@DPARM_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, i32, i32*)* @isp_parse_nvram_1080 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp_parse_nvram_1080(%struct.TYPE_9__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.TYPE_8__* @SDPARAM(%struct.TYPE_9__* %9, i32 %10)
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %7, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @ISP1080_NVRAM_FIFO_THRESHOLD(i32* %12)
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 12
  store i32 %13, i32* %15, align 4
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ISP_CFG_OWNLOOPID, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load i32*, i32** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @ISP1080_NVRAM_INITIATOR_ID(i32* %23, i32 %24)
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 11
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %22, %3
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @ISP1080_NVRAM_BUS_RESET_DELAY(i32* %29, i32 %30)
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 10
  store i32 %31, i32* %33, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @ISP1080_NVRAM_BUS_RETRY_COUNT(i32* %34, i32 %35)
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 9
  store i32 %36, i32* %38, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @ISP1080_NVRAM_BUS_RETRY_DELAY(i32* %39, i32 %40)
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 8
  store i32 %41, i32* %43, align 4
  %44 = load i32*, i32** %6, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @ISP1080_NVRAM_ASYNC_DATA_SETUP_TIME(i32* %44, i32 %45)
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ISP1080_NVRAM_REQ_ACK_ACTIVE_NEGATION(i32* %49, i32 %50)
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 6
  store i32 %51, i32* %53, align 4
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ISP1080_NVRAM_DATA_LINE_ACTIVE_NEGATION(i32* %54, i32 %55)
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 5
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = call i8* @ISP1080_NVRAM_BURST_ENABLE(i32* %59)
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 4
  store i8* %60, i8** %62, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = call i8* @ISP1080_NVRAM_BURST_ENABLE(i32* %63)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ISP1080_NVRAM_SELECTION_TIMEOUT(i32* %67, i32 %68)
  %70 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @ISP1080_NVRAM_MAX_QUEUE_DEPTH(i32* %72, i32 %73)
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 8
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %297, %28
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* @MAX_TARGETS, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %300

81:                                               ; preds = %77
  %82 = load i32*, i32** %6, align 8
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @ISP1080_NVRAM_TGT_DEVICE_ENABLE(i32* %82, i32 %83, i32 %84)
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 8
  store i32 %85, i32* %92, align 4
  %93 = load i32*, i32** %6, align 8
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* %5, align 4
  %96 = call i32 @ISP1080_NVRAM_TGT_EXEC_THROTTLE(i32* %93, i32 %94, i32 %95)
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 7
  store i32 %96, i32* %103, align 8
  %104 = load i32*, i32** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %5, align 4
  %107 = call i32 @ISP1080_NVRAM_TGT_SYNC_OFFSET(i32* %104, i32 %105, i32 %106)
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = load i32, i32* %8, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i64 %112
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 4
  store i32 %107, i32* %114, align 8
  %115 = load i32*, i32** %6, align 8
  %116 = load i32, i32* %8, align 4
  %117 = load i32, i32* %5, align 4
  %118 = call i32 @ISP1080_NVRAM_TGT_SYNC_PERIOD(i32* %115, i32 %116, i32 %117)
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  store i32 %118, i32* %125, align 8
  %126 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = load i32, i32* %8, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  store i32 0, i32* %132, align 8
  %133 = load i32*, i32** %6, align 8
  %134 = load i32, i32* %8, align 4
  %135 = load i32, i32* %5, align 4
  %136 = call i64 @ISP1080_NVRAM_TGT_RENEG(i32* %133, i32 %134, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %81
  %139 = load i32, i32* @DPARM_RENEG, align 4
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %141 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_7__*, %struct.TYPE_7__** %141, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %139
  store i32 %148, i32* %146, align 8
  br label %149

149:                                              ; preds = %138, %81
  %150 = load i32, i32* @DPARM_ARQ, align 4
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %152, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %150
  store i32 %159, i32* %157, align 8
  %160 = load i32*, i32** %6, align 8
  %161 = load i32, i32* %8, align 4
  %162 = load i32, i32* %5, align 4
  %163 = call i64 @ISP1080_NVRAM_TGT_TQING(i32* %160, i32 %161, i32 %162)
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %149
  %166 = load i32, i32* @DPARM_TQING, align 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_7__*, %struct.TYPE_7__** %168, align 8
  %170 = load i32, i32* %8, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = or i32 %174, %166
  store i32 %175, i32* %173, align 8
  br label %176

176:                                              ; preds = %165, %149
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* %8, align 4
  %179 = load i32, i32* %5, align 4
  %180 = call i64 @ISP1080_NVRAM_TGT_SYNC(i32* %177, i32 %178, i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %193

182:                                              ; preds = %176
  %183 = load i32, i32* @DPARM_SYNC, align 4
  %184 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = load i32, i32* %8, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i64 %188
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = or i32 %191, %183
  store i32 %192, i32* %190, align 8
  br label %193

193:                                              ; preds = %182, %176
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* %5, align 4
  %197 = call i64 @ISP1080_NVRAM_TGT_WIDE(i32* %194, i32 %195, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %210

199:                                              ; preds = %193
  %200 = load i32, i32* @DPARM_WIDE, align 4
  %201 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_7__*, %struct.TYPE_7__** %202, align 8
  %204 = load i32, i32* %8, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i64 %205
  %207 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = or i32 %208, %200
  store i32 %209, i32* %207, align 8
  br label %210

210:                                              ; preds = %199, %193
  %211 = load i32*, i32** %6, align 8
  %212 = load i32, i32* %8, align 4
  %213 = load i32, i32* %5, align 4
  %214 = call i64 @ISP1080_NVRAM_TGT_PARITY(i32* %211, i32 %212, i32 %213)
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %227

216:                                              ; preds = %210
  %217 = load i32, i32* @DPARM_PARITY, align 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %219 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %218, i32 0, i32 0
  %220 = load %struct.TYPE_7__*, %struct.TYPE_7__** %219, align 8
  %221 = load i32, i32* %8, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = or i32 %225, %217
  store i32 %226, i32* %224, align 8
  br label %227

227:                                              ; preds = %216, %210
  %228 = load i32*, i32** %6, align 8
  %229 = load i32, i32* %8, align 4
  %230 = load i32, i32* %5, align 4
  %231 = call i64 @ISP1080_NVRAM_TGT_DISC(i32* %228, i32 %229, i32 %230)
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %227
  %234 = load i32, i32* @DPARM_DISC, align 4
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_7__*, %struct.TYPE_7__** %236, align 8
  %238 = load i32, i32* %8, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %237, i64 %239
  %241 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = or i32 %242, %234
  store i32 %243, i32* %241, align 8
  br label %244

244:                                              ; preds = %233, %227
  %245 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %246, align 8
  %248 = load i32, i32* %8, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %250, i32 0, i32 6
  store i64 0, i64* %251, align 8
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %253 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %252, i32 0, i32 0
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %253, align 8
  %255 = load i32, i32* %8, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %254, i64 %256
  %258 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %260, i32 0, i32 0
  %262 = load %struct.TYPE_7__*, %struct.TYPE_7__** %261, align 8
  %263 = load i32, i32* %8, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %262, i64 %264
  %266 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %265, i32 0, i32 5
  store i32 %259, i32* %266, align 4
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load %struct.TYPE_7__*, %struct.TYPE_7__** %268, align 8
  %270 = load i32, i32* %8, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %269, i64 %271
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 2
  %274 = load i32, i32* %273, align 8
  %275 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %276 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %275, i32 0, i32 0
  %277 = load %struct.TYPE_7__*, %struct.TYPE_7__** %276, align 8
  %278 = load i32, i32* %8, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %277, i64 %279
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 3
  store i32 %274, i32* %281, align 4
  %282 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %283 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_7__*, %struct.TYPE_7__** %283, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %284, i64 %286
  %288 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %291 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** %291, align 8
  %293 = load i32, i32* %8, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %295, i32 0, i32 1
  store i32 %289, i32* %296, align 4
  br label %297

297:                                              ; preds = %244
  %298 = load i32, i32* %8, align 4
  %299 = add nsw i32 %298, 1
  store i32 %299, i32* %8, align 4
  br label %77

300:                                              ; preds = %77
  ret void
}

declare dso_local %struct.TYPE_8__* @SDPARAM(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_FIFO_THRESHOLD(i32*) #1

declare dso_local i32 @ISP1080_NVRAM_INITIATOR_ID(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_BUS_RESET_DELAY(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_BUS_RETRY_COUNT(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_BUS_RETRY_DELAY(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_ASYNC_DATA_SETUP_TIME(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_REQ_ACK_ACTIVE_NEGATION(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_DATA_LINE_ACTIVE_NEGATION(i32*, i32) #1

declare dso_local i8* @ISP1080_NVRAM_BURST_ENABLE(i32*) #1

declare dso_local i32 @ISP1080_NVRAM_SELECTION_TIMEOUT(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_MAX_QUEUE_DEPTH(i32*, i32) #1

declare dso_local i32 @ISP1080_NVRAM_TGT_DEVICE_ENABLE(i32*, i32, i32) #1

declare dso_local i32 @ISP1080_NVRAM_TGT_EXEC_THROTTLE(i32*, i32, i32) #1

declare dso_local i32 @ISP1080_NVRAM_TGT_SYNC_OFFSET(i32*, i32, i32) #1

declare dso_local i32 @ISP1080_NVRAM_TGT_SYNC_PERIOD(i32*, i32, i32) #1

declare dso_local i64 @ISP1080_NVRAM_TGT_RENEG(i32*, i32, i32) #1

declare dso_local i64 @ISP1080_NVRAM_TGT_TQING(i32*, i32, i32) #1

declare dso_local i64 @ISP1080_NVRAM_TGT_SYNC(i32*, i32, i32) #1

declare dso_local i64 @ISP1080_NVRAM_TGT_WIDE(i32*, i32, i32) #1

declare dso_local i64 @ISP1080_NVRAM_TGT_PARITY(i32*, i32, i32) #1

declare dso_local i64 @ISP1080_NVRAM_TGT_DISC(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
