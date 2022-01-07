; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_process_read_log.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/mpc85xx/extr_fsl_sata.c_fsl_sata_process_read_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_sata_channel = type { i32, i32, %struct.TYPE_10__**, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.ata_res }
%struct.ata_res = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.ccb = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_7__ = type { i32 }

@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@FSL_SATA_MAX_SLOTS = common dso_local global i32 0, align 4
@XPT_ATA_IO = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Error while READ LOG EXT\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Non-queued command error in READ LOG EXT\0A\00", align 1
@M_FSL_SATA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fsl_sata_channel*, %union.ccb*)* @fsl_sata_process_read_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fsl_sata_process_read_log(%struct.fsl_sata_channel* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.fsl_sata_channel*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ata_res*, align 8
  %7 = alloca i32, align 4
  store %struct.fsl_sata_channel* %0, %struct.fsl_sata_channel** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %8 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %8, i32 0, i32 4
  store i64 0, i64* %9, align 8
  %10 = load %union.ccb*, %union.ccb** %4, align 8
  %11 = bitcast %union.ccb* %10 to %struct.TYPE_9__*
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %5, align 8
  %14 = load %union.ccb*, %union.ccb** %4, align 8
  %15 = bitcast %union.ccb* %14 to %struct.TYPE_7__*
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CAM_STATUS_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load i32, i32* @CAM_REQ_CMP, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %179

22:                                               ; preds = %2
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, 128
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %179

28:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %29

29:                                               ; preds = %175, %28
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %178

33:                                               ; preds = %29
  %34 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %35 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %34, i32 0, i32 2
  %36 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %36, i64 %38
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %39, align 8
  %41 = icmp ne %struct.TYPE_10__* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %33
  br label %175

43:                                               ; preds = %33
  %44 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %45 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %44, i32 0, i32 2
  %46 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %45, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %46, i64 %48
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @XPT_ATA_IO, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %175

57:                                               ; preds = %43
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 31
  %62 = load i32, i32* %7, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %129

64:                                               ; preds = %57
  %65 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %66 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %65, i32 0, i32 2
  %67 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %67, i64 %69
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store %struct.ata_res* %73, %struct.ata_res** %6, align 8
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %78 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %83 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 4
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %88 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %87, i32 0, i32 2
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 5
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %93 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 6
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %98 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %97, i32 0, i32 4
  store i32 %96, i32* %98, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 7
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %103 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %102, i32 0, i32 5
  store i32 %101, i32* %103, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 8
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %108 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load i32*, i32** %5, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 9
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %113 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %112, i32 0, i32 7
  store i32 %111, i32* %113, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 10
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %118 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %117, i32 0, i32 8
  store i32 %116, i32* %118, align 4
  %119 = load i32*, i32** %5, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 12
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %123 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %122, i32 0, i32 9
  store i32 %121, i32* %123, align 4
  %124 = load i32*, i32** %5, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 13
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.ata_res*, %struct.ata_res** %6, align 8
  %128 = getelementptr inbounds %struct.ata_res, %struct.ata_res* %127, i32 0, i32 10
  store i32 %126, i32* %128, align 4
  br label %155

129:                                              ; preds = %57
  %130 = load i32, i32* @CAM_STATUS_MASK, align 4
  %131 = xor i32 %130, -1
  %132 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %133 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %132, i32 0, i32 2
  %134 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %133, align 8
  %135 = load i32, i32* %7, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %134, i64 %136
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %131
  store i32 %142, i32* %140, align 8
  %143 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %144 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %145 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %144, i32 0, i32 2
  %146 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %146, i64 %148
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %149, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 8
  %154 = or i32 %153, %143
  store i32 %154, i32* %152, align 8
  br label %155

155:                                              ; preds = %129, %64
  %156 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %157 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %158 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %157, i32 0, i32 2
  %159 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %158, align 8
  %160 = load i32, i32* %7, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %159, i64 %161
  %163 = load %struct.TYPE_10__*, %struct.TYPE_10__** %162, align 8
  %164 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %156, %struct.TYPE_10__* %163)
  %165 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %166 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %165, i32 0, i32 2
  %167 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %166, align 8
  %168 = load i32, i32* %7, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %167, i64 %169
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %170, align 8
  %171 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %172 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, -1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %155, %56, %42
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %29

178:                                              ; preds = %29
  br label %258

179:                                              ; preds = %22, %2
  %180 = load %union.ccb*, %union.ccb** %4, align 8
  %181 = bitcast %union.ccb* %180 to %struct.TYPE_7__*
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @CAM_STATUS_MASK, align 4
  %185 = and i32 %183, %184
  %186 = load i32, i32* @CAM_REQ_CMP, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %193

188:                                              ; preds = %179
  %189 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %190 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @device_printf(i32 %191, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %205

193:                                              ; preds = %179
  %194 = load i32*, i32** %5, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 0
  %196 = load i32, i32* %195, align 4
  %197 = and i32 %196, 128
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %204

199:                                              ; preds = %193
  %200 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %201 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @device_printf(i32 %202, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %204

204:                                              ; preds = %199, %193
  br label %205

205:                                              ; preds = %204, %188
  store i32 0, i32* %7, align 4
  br label %206

206:                                              ; preds = %254, %205
  %207 = load i32, i32* %7, align 4
  %208 = load i32, i32* @FSL_SATA_MAX_SLOTS, align 4
  %209 = icmp slt i32 %207, %208
  br i1 %209, label %210, label %257

210:                                              ; preds = %206
  %211 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %212 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %211, i32 0, i32 2
  %213 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %213, i64 %215
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %216, align 8
  %218 = icmp ne %struct.TYPE_10__* %217, null
  br i1 %218, label %220, label %219

219:                                              ; preds = %210
  br label %254

220:                                              ; preds = %210
  %221 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %222 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %221, i32 0, i32 2
  %223 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %222, align 8
  %224 = load i32, i32* %7, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %223, i64 %225
  %227 = load %struct.TYPE_10__*, %struct.TYPE_10__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = load i64, i64* @XPT_ATA_IO, align 8
  %232 = icmp ne i64 %230, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %220
  br label %254

234:                                              ; preds = %220
  %235 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %236 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %237 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %236, i32 0, i32 2
  %238 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %237, align 8
  %239 = load i32, i32* %7, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %238, i64 %240
  %242 = load %struct.TYPE_10__*, %struct.TYPE_10__** %241, align 8
  %243 = call i32 @fsl_sata_done(%struct.fsl_sata_channel* %235, %struct.TYPE_10__* %242)
  %244 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %245 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %244, i32 0, i32 2
  %246 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %245, align 8
  %247 = load i32, i32* %7, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %246, i64 %248
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %249, align 8
  %250 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %251 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = add nsw i32 %252, -1
  store i32 %253, i32* %251, align 4
  br label %254

254:                                              ; preds = %234, %233, %219
  %255 = load i32, i32* %7, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %7, align 4
  br label %206

257:                                              ; preds = %206
  br label %258

258:                                              ; preds = %257, %178
  %259 = load %union.ccb*, %union.ccb** %4, align 8
  %260 = bitcast %union.ccb* %259 to %struct.TYPE_9__*
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @M_FSL_SATA, align 4
  %264 = call i32 @free(i32* %262, i32 %263)
  %265 = load %union.ccb*, %union.ccb** %4, align 8
  %266 = call i32 @xpt_free_ccb(%union.ccb* %265)
  %267 = load %struct.fsl_sata_channel*, %struct.fsl_sata_channel** %3, align 8
  %268 = getelementptr inbounds %struct.fsl_sata_channel, %struct.fsl_sata_channel* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = load i32, i32* @TRUE, align 4
  %271 = call i32 @xpt_release_simq(i32 %269, i32 %270)
  ret void
}

declare dso_local i32 @fsl_sata_done(%struct.fsl_sata_channel*, %struct.TYPE_10__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @xpt_free_ccb(%union.ccb*) #1

declare dso_local i32 @xpt_release_simq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
