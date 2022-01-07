; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_execute_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_execute_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.pvscsi_hcb = type { i32, i32, i64, %struct.TYPE_5__*, %struct.pvscsi_ring_req_desc*, %union.ccb* }
%struct.TYPE_5__ = type { %struct.pvscsi_sg_element* }
%struct.pvscsi_sg_element = type { i64, i32, i64 }
%struct.pvscsi_ring_req_desc = type { i32*, i64, i32 }
%union.ccb = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.pvscsi_softc* }
%struct.pvscsi_softc = type { i32, i32, i32, %struct.pvscsi_rings_state* }
%struct.pvscsi_rings_state = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"pvscsi_execute_ccb error %d\0A\00", align 1
@EFBIG = common dso_local global i32 0, align 4
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@PVSCSI_FLAG_CMD_DIR_NONE = common dso_local global i32 0, align 4
@PVSCSI_FLAG_CMD_DIR_TOHOST = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i64 0, align 8
@PVSCSI_FLAG_CMD_DIR_TODEVICE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i64 0, align 8
@PVSCSI_MAX_SG_ENTRIES_PER_SEGMENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"too many sg segments\00", align 1
@PVSCSI_FLAG_CMD_WITH_SG_LIST = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_TIME_INFINITY = common dso_local global i32 0, align 4
@SBT_1MS = common dso_local global i32 0, align 4
@pvscsi_timeout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_7__*, i32, i32)* @pvscsi_execute_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_execute_ccb(i8* %0, %struct.TYPE_7__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pvscsi_hcb*, align 8
  %10 = alloca %struct.pvscsi_ring_req_desc*, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca %struct.pvscsi_softc*, align 8
  %13 = alloca %struct.pvscsi_rings_state*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.pvscsi_sg_element*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.pvscsi_hcb*
  store %struct.pvscsi_hcb* %19, %struct.pvscsi_hcb** %9, align 8
  %20 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %21 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %20, i32 0, i32 5
  %22 = load %union.ccb*, %union.ccb** %21, align 8
  store %union.ccb* %22, %union.ccb** %11, align 8
  %23 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %24 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %23, i32 0, i32 4
  %25 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %24, align 8
  store %struct.pvscsi_ring_req_desc* %25, %struct.pvscsi_ring_req_desc** %10, align 8
  %26 = load %union.ccb*, %union.ccb** %11, align 8
  %27 = bitcast %union.ccb* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 3
  %29 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %28, align 8
  store %struct.pvscsi_softc* %29, %struct.pvscsi_softc** %12, align 8
  %30 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %12, align 8
  %31 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %30, i32 0, i32 3
  %32 = load %struct.pvscsi_rings_state*, %struct.pvscsi_rings_state** %31, align 8
  store %struct.pvscsi_rings_state* %32, %struct.pvscsi_rings_state** %13, align 8
  %33 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %12, align 8
  %34 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %33, i32 0, i32 2
  %35 = load i32, i32* @MA_OWNED, align 4
  %36 = call i32 @mtx_assert(i32* %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %4
  %40 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %12, align 8
  %41 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @EFBIG, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %50 = load %union.ccb*, %union.ccb** %11, align 8
  %51 = bitcast %union.ccb* %50 to %struct.TYPE_6__*
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  br label %58

53:                                               ; preds = %39
  %54 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %55 = load %union.ccb*, %union.ccb** %11, align 8
  %56 = bitcast %union.ccb* %55 to %struct.TYPE_6__*
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  store i32 %54, i32* %57, align 8
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %12, align 8
  %60 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %61 = call i32 @pvscsi_hcb_put(%struct.pvscsi_softc* %59, %struct.pvscsi_hcb* %60)
  %62 = load %union.ccb*, %union.ccb** %11, align 8
  %63 = call i32 @xpt_done(%union.ccb* %62)
  br label %214

64:                                               ; preds = %4
  %65 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %66 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %65, i32 0, i32 2
  store i32 0, i32* %66, align 8
  store i64 0, i64* %15, align 8
  %67 = load %union.ccb*, %union.ccb** %11, align 8
  %68 = bitcast %union.ccb* %67 to %struct.TYPE_6__*
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @CAM_DIR_MASK, align 4
  %72 = and i32 %70, %71
  switch i32 %72, label %94 [
    i32 129, label %73
    i32 130, label %79
    i32 128, label %86
    i32 131, label %93
  ]

73:                                               ; preds = %64
  %74 = load i32, i32* @PVSCSI_FLAG_CMD_DIR_NONE, align 4
  %75 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %76 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 8
  br label %94

79:                                               ; preds = %64
  %80 = load i32, i32* @PVSCSI_FLAG_CMD_DIR_TOHOST, align 4
  %81 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %82 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load i64, i64* @BUS_DMASYNC_PREREAD, align 8
  store i64 %85, i64* %15, align 8
  br label %94

86:                                               ; preds = %64
  %87 = load i32, i32* @PVSCSI_FLAG_CMD_DIR_TODEVICE, align 4
  %88 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %89 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  %92 = load i64, i64* @BUS_DMASYNC_PREWRITE, align 8
  store i64 %92, i64* %15, align 8
  br label %94

93:                                               ; preds = %64
  br label %94

94:                                               ; preds = %64, %93, %86, %79, %73
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %172

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %100, label %157

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* @PVSCSI_MAX_SG_ENTRIES_PER_SEGMENT, align 4
  %103 = icmp sle i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i32 @KASSERT(i32 %104, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %106 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %107 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %106, i32 0, i32 3
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load %struct.pvscsi_sg_element*, %struct.pvscsi_sg_element** %109, align 8
  store %struct.pvscsi_sg_element* %110, %struct.pvscsi_sg_element** %17, align 8
  %111 = load i32, i32* @PVSCSI_FLAG_CMD_WITH_SG_LIST, align 4
  %112 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %113 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = or i32 %114, %111
  store i32 %115, i32* %113, align 8
  store i32 0, i32* %16, align 4
  br label %116

116:                                              ; preds = %148, %100
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %7, align 4
  %119 = icmp slt i32 %117, %118
  br i1 %119, label %120, label %151

120:                                              ; preds = %116
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %122 = load i32, i32* %16, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.pvscsi_sg_element*, %struct.pvscsi_sg_element** %17, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.pvscsi_sg_element, %struct.pvscsi_sg_element* %127, i64 %129
  %131 = getelementptr inbounds %struct.pvscsi_sg_element, %struct.pvscsi_sg_element* %130, i32 0, i32 2
  store i64 %126, i64* %131, align 8
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %133 = load i32, i32* %16, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.pvscsi_sg_element*, %struct.pvscsi_sg_element** %17, align 8
  %139 = load i32, i32* %16, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.pvscsi_sg_element, %struct.pvscsi_sg_element* %138, i64 %140
  %142 = getelementptr inbounds %struct.pvscsi_sg_element, %struct.pvscsi_sg_element* %141, i32 0, i32 1
  store i32 %137, i32* %142, align 8
  %143 = load %struct.pvscsi_sg_element*, %struct.pvscsi_sg_element** %17, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.pvscsi_sg_element, %struct.pvscsi_sg_element* %143, i64 %145
  %147 = getelementptr inbounds %struct.pvscsi_sg_element, %struct.pvscsi_sg_element* %146, i32 0, i32 0
  store i64 0, i64* %147, align 8
  br label %148

148:                                              ; preds = %120
  %149 = load i32, i32* %16, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %16, align 4
  br label %116

151:                                              ; preds = %116
  %152 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %153 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %156 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %155, i32 0, i32 1
  store i64 %154, i64* %156, align 8
  br label %163

157:                                              ; preds = %97
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %162 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %161, i32 0, i32 1
  store i64 %160, i64* %162, align 8
  br label %163

163:                                              ; preds = %157, %151
  %164 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %12, align 8
  %165 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %168 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load i64, i64* %15, align 8
  %171 = call i32 @bus_dmamap_sync(i32 %166, i32 %169, i64 %170)
  br label %175

172:                                              ; preds = %94
  %173 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %174 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %173, i32 0, i32 1
  store i64 0, i64* %174, align 8
  br label %175

175:                                              ; preds = %172, %163
  %176 = load %struct.pvscsi_ring_req_desc*, %struct.pvscsi_ring_req_desc** %10, align 8
  %177 = getelementptr inbounds %struct.pvscsi_ring_req_desc, %struct.pvscsi_ring_req_desc* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 0
  %180 = load i32, i32* %179, align 4
  store i32 %180, i32* %14, align 4
  %181 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %182 = load %union.ccb*, %union.ccb** %11, align 8
  %183 = bitcast %union.ccb* %182 to %struct.TYPE_6__*
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i32, i32* %184, align 8
  %186 = or i32 %185, %181
  store i32 %186, i32* %184, align 8
  %187 = load %union.ccb*, %union.ccb** %11, align 8
  %188 = bitcast %union.ccb* %187 to %struct.TYPE_6__*
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @CAM_TIME_INFINITY, align 4
  %192 = icmp ne i32 %190, %191
  br i1 %192, label %193, label %205

193:                                              ; preds = %175
  %194 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %195 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %194, i32 0, i32 0
  %196 = load %union.ccb*, %union.ccb** %11, align 8
  %197 = bitcast %union.ccb* %196 to %struct.TYPE_6__*
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* @SBT_1MS, align 4
  %201 = mul nsw i32 %199, %200
  %202 = load i32, i32* @pvscsi_timeout, align 4
  %203 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %9, align 8
  %204 = call i32 @callout_reset_sbt(i32* %195, i32 %201, i32 0, i32 %202, %struct.pvscsi_hcb* %203, i32 0)
  br label %205

205:                                              ; preds = %193, %175
  %206 = call i32 (...) @mb()
  %207 = load %struct.pvscsi_rings_state*, %struct.pvscsi_rings_state** %13, align 8
  %208 = getelementptr inbounds %struct.pvscsi_rings_state, %struct.pvscsi_rings_state* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 4
  %211 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %12, align 8
  %212 = load i32, i32* %14, align 4
  %213 = call i32 @pvscsi_kick_io(%struct.pvscsi_softc* %211, i32 %212)
  br label %214

214:                                              ; preds = %205, %58
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @pvscsi_hcb_put(%struct.pvscsi_softc*, %struct.pvscsi_hcb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i64) #1

declare dso_local i32 @callout_reset_sbt(i32*, i32, i32, i32, %struct.pvscsi_hcb*, i32) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @pvscsi_kick_io(%struct.pvscsi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
