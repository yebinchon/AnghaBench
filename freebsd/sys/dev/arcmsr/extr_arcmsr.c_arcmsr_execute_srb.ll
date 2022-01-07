; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_execute_srb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/arcmsr/extr_arcmsr.c_arcmsr_execute_srb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CommandControlBlock = type { i32, i32, i32, %union.ccb*, i64 }
%union.ccb = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.AdapterControlBlock = type { i32, i32, i64**, i64, i64, i32, i32, i32 }

@EFBIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"arcmsr%d: unexpected error %x returned from 'bus_dmamap_load' \0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i32 0, align 4
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@ARCMSR_MAX_SG_ENTRIES = common dso_local global i32 0, align 4
@ACB_F_BUS_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"arcmsr%d: bus reset and return busy \0A\00", align 1
@CAM_SCSI_BUS_RESET = common dso_local global i32 0, align 4
@ARECA_RAID_GONE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [91 x i8] c"arcmsr%d:block 'read/write' command with gone raid volume Cmd=0x%2x, TargetId=%d, Lun=%d \0A\00", align 1
@CAM_DEV_NOT_THERE = common dso_local global i32 0, align 4
@ACB_F_CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_REQUEUE_REQ = common dso_local global i32 0, align 4
@CAM_TIME_INFINITY = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@ARCMSR_TIMEOUT_DELAY = common dso_local global i32 0, align 4
@arcmsr_srb_timeout = common dso_local global i32 0, align 4
@SRB_FLAG_TIMER_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @arcmsr_execute_srb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arcmsr_execute_srb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.CommandControlBlock*, align 8
  %10 = alloca %struct.AdapterControlBlock*, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.CommandControlBlock*
  store %struct.CommandControlBlock* %17, %struct.CommandControlBlock** %9, align 8
  %18 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %19 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.AdapterControlBlock*
  store %struct.AdapterControlBlock* %21, %struct.AdapterControlBlock** %10, align 8
  %22 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %23 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %22, i32 0, i32 3
  %24 = load %union.ccb*, %union.ccb** %23, align 8
  store %union.ccb* %24, %union.ccb** %11, align 8
  %25 = load %union.ccb*, %union.ccb** %11, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_2__*
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %12, align 4
  %29 = load %union.ccb*, %union.ccb** %11, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %34 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %33, i32 0, i32 7
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 8
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %68

39:                                               ; preds = %4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @EFBIG, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %45 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %8, align 4
  %48 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %39
  %50 = load %union.ccb*, %union.ccb** %11, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_2__*
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CAM_STATUS_MASK, align 4
  %55 = and i32 %53, %54
  %56 = load i32, i32* @CAM_REQ_INPROG, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %65

58:                                               ; preds = %49
  %59 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %60 = load %union.ccb*, %union.ccb** %11, align 8
  %61 = bitcast %union.ccb* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %59
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %58, %49
  %66 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %67 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %66, i32 0)
  br label %252

68:                                               ; preds = %4
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* @ARCMSR_MAX_SG_ENTRIES, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %68
  %73 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %74 = load %union.ccb*, %union.ccb** %11, align 8
  %75 = bitcast %union.ccb* %74 to %struct.TYPE_2__*
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %73
  store i32 %78, i32* %76, align 4
  %79 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %80 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %79, i32 0)
  br label %252

81:                                               ; preds = %68
  %82 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %83 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @ACB_F_BUS_RESET, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %101

88:                                               ; preds = %81
  %89 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %90 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @CAM_SCSI_BUS_RESET, align 4
  %94 = load %union.ccb*, %union.ccb** %11, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_2__*
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %93
  store i32 %98, i32* %96, align 4
  %99 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %100 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %99, i32 0)
  br label %252

101:                                              ; preds = %81
  %102 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %103 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %102, i32 0, i32 2
  %104 = load i64**, i64*** %103, align 8
  %105 = load i32, i32* %12, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64*, i64** %104, i64 %106
  %108 = load i64*, i64** %107, align 8
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i64, i64* %108, i64 %110
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @ARECA_RAID_GONE, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %145

115:                                              ; preds = %101
  %116 = load %union.ccb*, %union.ccb** %11, align 8
  %117 = bitcast %union.ccb* %116 to i32*
  %118 = call i32* @scsiio_cdb_ptr(i32* %117)
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %15, align 4
  %121 = load i32, i32* %15, align 4
  %122 = and i32 %121, 15
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp eq i32 %123, 8
  br i1 %124, label %128, label %125

125:                                              ; preds = %115
  %126 = load i32, i32* %14, align 4
  %127 = icmp eq i32 %126, 10
  br i1 %127, label %128, label %144

128:                                              ; preds = %125, %115
  %129 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %130 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %12, align 4
  %134 = load i32, i32* %13, align 4
  %135 = call i32 (i8*, i32, ...) @printf(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0), i32 %131, i32 %132, i32 %133, i32 %134)
  %136 = load i32, i32* @CAM_DEV_NOT_THERE, align 4
  %137 = load %union.ccb*, %union.ccb** %11, align 8
  %138 = bitcast %union.ccb* %137 to %struct.TYPE_2__*
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = or i32 %140, %136
  store i32 %141, i32* %139, align 4
  %142 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %143 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %142, i32 0)
  br label %252

144:                                              ; preds = %125
  br label %145

145:                                              ; preds = %144, %101
  %146 = load %union.ccb*, %union.ccb** %11, align 8
  %147 = bitcast %union.ccb* %146 to %struct.TYPE_2__*
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = load i32, i32* @CAM_STATUS_MASK, align 4
  %151 = and i32 %149, %150
  %152 = load i32, i32* @CAM_REQ_INPROG, align 4
  %153 = icmp ne i32 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %145
  %155 = load i32, i32* %7, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %154
  %158 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %159 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %158, i32 0, i32 6
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %162 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @bus_dmamap_unload(i32 %160, i32 %163)
  br label %165

165:                                              ; preds = %157, %154
  %166 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %167 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %166, i32 0)
  br label %252

168:                                              ; preds = %145
  %169 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %170 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %173 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %172, i32 0, i32 4
  %174 = load i64, i64* %173, align 8
  %175 = icmp sge i64 %171, %174
  br i1 %175, label %176, label %209

176:                                              ; preds = %168
  %177 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %178 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @ACB_F_CAM_DEV_QFRZN, align 4
  %181 = and i32 %179, %180
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %193

183:                                              ; preds = %176
  %184 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %185 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %184, i32 0, i32 5
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @xpt_freeze_simq(i32 %186, i32 1)
  %188 = load i32, i32* @ACB_F_CAM_DEV_QFRZN, align 4
  %189 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %190 = getelementptr inbounds %struct.AdapterControlBlock, %struct.AdapterControlBlock* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = or i32 %191, %188
  store i32 %192, i32* %190, align 4
  br label %193

193:                                              ; preds = %183, %176
  %194 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %195 = xor i32 %194, -1
  %196 = load %union.ccb*, %union.ccb** %11, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_2__*
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = and i32 %199, %195
  store i32 %200, i32* %198, align 4
  %201 = load i32, i32* @CAM_REQUEUE_REQ, align 4
  %202 = load %union.ccb*, %union.ccb** %11, align 8
  %203 = bitcast %union.ccb* %202 to %struct.TYPE_2__*
  %204 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 4
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 4
  %207 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %208 = call i32 @arcmsr_srb_complete(%struct.CommandControlBlock* %207, i32 0)
  br label %252

209:                                              ; preds = %168
  %210 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %211 = load %union.ccb*, %union.ccb** %11, align 8
  %212 = bitcast %union.ccb* %211 to %struct.TYPE_2__*
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 4
  %215 = or i32 %214, %210
  store i32 %215, i32* %213, align 4
  %216 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* %7, align 4
  %219 = call i32 @arcmsr_build_srb(%struct.CommandControlBlock* %216, i32* %217, i32 %218)
  %220 = load %struct.AdapterControlBlock*, %struct.AdapterControlBlock** %10, align 8
  %221 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %222 = call i32 @arcmsr_post_srb(%struct.AdapterControlBlock* %220, %struct.CommandControlBlock* %221)
  %223 = load %union.ccb*, %union.ccb** %11, align 8
  %224 = bitcast %union.ccb* %223 to %struct.TYPE_2__*
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* @CAM_TIME_INFINITY, align 4
  %228 = icmp ne i32 %226, %227
  br i1 %228, label %229, label %252

229:                                              ; preds = %209
  %230 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %231 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %230, i32 0, i32 1
  %232 = call i32 @arcmsr_callout_init(i32* %231)
  %233 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %234 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %233, i32 0, i32 1
  %235 = load i32, i32* @SBT_1MS, align 4
  %236 = load %union.ccb*, %union.ccb** %11, align 8
  %237 = bitcast %union.ccb* %236 to %struct.TYPE_2__*
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 3
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* @ARCMSR_TIMEOUT_DELAY, align 4
  %241 = mul nsw i32 %240, 1000
  %242 = add nsw i32 %239, %241
  %243 = mul nsw i32 %235, %242
  %244 = load i32, i32* @arcmsr_srb_timeout, align 4
  %245 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %246 = call i32 @callout_reset_sbt(i32* %234, i32 %243, i32 0, i32 %244, %struct.CommandControlBlock* %245, i32 0)
  %247 = load i32, i32* @SRB_FLAG_TIMER_START, align 4
  %248 = load %struct.CommandControlBlock*, %struct.CommandControlBlock** %9, align 8
  %249 = getelementptr inbounds %struct.CommandControlBlock, %struct.CommandControlBlock* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 8
  br label %252

252:                                              ; preds = %65, %72, %88, %128, %165, %193, %229, %209
  ret void
}

declare dso_local i32 @printf(i8*, i32, ...) #1

declare dso_local i32 @arcmsr_srb_complete(%struct.CommandControlBlock*, i32) #1

declare dso_local i32* @scsiio_cdb_ptr(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @xpt_freeze_simq(i32, i32) #1

declare dso_local i32 @arcmsr_build_srb(%struct.CommandControlBlock*, i32*, i32) #1

declare dso_local i32 @arcmsr_post_srb(%struct.AdapterControlBlock*, %struct.CommandControlBlock*) #1

declare dso_local i32 @arcmsr_callout_init(i32*) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.CommandControlBlock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
