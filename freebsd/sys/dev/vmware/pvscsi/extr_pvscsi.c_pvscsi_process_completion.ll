; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_process_completion.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_process_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i64, i32, i32 }
%struct.pvscsi_ring_cmp_desc = type { i64, i64, i64, i32, i64 }
%struct.pvscsi_hcb = type { i32, i32, %union.ccb*, i32 }
%union.ccb = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32*, i32* }
%struct.TYPE_3__ = type { i32, i32, i64, i64, i64 }

@CAM_DIR_MASK = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i32 0, align 4
@CAM_DIR_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"completing command context %llx success\0A\00", align 1
@CAM_REQ_CMP = common dso_local global i64 0, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i64 0, align 8
@CAM_AUTOSNS_VALID = common dso_local global i64 0, align 8
@CAM_REQUEUE_REQ = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"ccb: %p sdstat=0x%x\0A\00", align 1
@CAM_SEL_TIMEOUT = common dso_local global i64 0, align 8
@CAM_DATA_RUN_ERR = common dso_local global i64 0, align 8
@CAM_SCSI_BUS_RESET = common dso_local global i64 0, align 8
@CAM_UNCOR_PARITY = common dso_local global i64 0, align 8
@CAM_UNEXP_BUSFREE = common dso_local global i64 0, align 8
@CAM_SEQUENCE_FAIL = common dso_local global i64 0, align 8
@CAM_AUTOSENSE_FAIL = common dso_local global i64 0, align 8
@CAM_REQ_CMP_ERR = common dso_local global i64 0, align 8
@CAM_NO_HBA = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"unknown hba status: 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [65 x i8] c"completing command context %llx btstat %x sdstat %x - status %x\0A\00", align 1
@CAM_STATUS_MASK = common dso_local global i64 0, align 8
@CAM_SIM_QUEUED = common dso_local global i64 0, align 8
@CAM_RELEASE_SIMQ = common dso_local global i64 0, align 8
@CAM_DEV_QFRZN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*, %struct.pvscsi_ring_cmp_desc*)* @pvscsi_process_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_process_completion(%struct.pvscsi_softc* %0, %struct.pvscsi_ring_cmp_desc* %1) #0 {
  %3 = alloca %struct.pvscsi_softc*, align 8
  %4 = alloca %struct.pvscsi_ring_cmp_desc*, align 8
  %5 = alloca %struct.pvscsi_hcb*, align 8
  %6 = alloca %union.ccb*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %3, align 8
  store %struct.pvscsi_ring_cmp_desc* %1, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %11 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %12 = load %struct.pvscsi_ring_cmp_desc*, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %13 = getelementptr inbounds %struct.pvscsi_ring_cmp_desc, %struct.pvscsi_ring_cmp_desc* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call %struct.pvscsi_hcb* @pvscsi_context_to_hcb(%struct.pvscsi_softc* %11, i64 %14)
  store %struct.pvscsi_hcb* %15, %struct.pvscsi_hcb** %5, align 8
  %16 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %17 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %16, i32 0, i32 3
  %18 = call i32 @callout_stop(i32* %17)
  %19 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %20 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %19, i32 0, i32 2
  %21 = load %union.ccb*, %union.ccb** %20, align 8
  store %union.ccb* %21, %union.ccb** %6, align 8
  %22 = load %struct.pvscsi_ring_cmp_desc*, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %23 = getelementptr inbounds %struct.pvscsi_ring_cmp_desc, %struct.pvscsi_ring_cmp_desc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  store i64 %24, i64* %8, align 8
  %25 = load %struct.pvscsi_ring_cmp_desc*, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %26 = getelementptr inbounds %struct.pvscsi_ring_cmp_desc, %struct.pvscsi_ring_cmp_desc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %9, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load %union.ccb*, %union.ccb** %6, align 8
  %30 = bitcast %union.ccb* %29 to %struct.TYPE_3__*
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store i64 %28, i64* %31, align 8
  %32 = load %union.ccb*, %union.ccb** %6, align 8
  %33 = bitcast %union.ccb* %32 to %struct.TYPE_3__*
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.pvscsi_ring_cmp_desc*, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %37 = getelementptr inbounds %struct.pvscsi_ring_cmp_desc, %struct.pvscsi_ring_cmp_desc* %36, i32 0, i32 4
  %38 = load i64, i64* %37, align 8
  %39 = sub nsw i64 %35, %38
  %40 = load %union.ccb*, %union.ccb** %6, align 8
  %41 = bitcast %union.ccb* %40 to %struct.TYPE_3__*
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 2
  store i64 %39, i64* %42, align 8
  %43 = load %union.ccb*, %union.ccb** %6, align 8
  %44 = bitcast %union.ccb* %43 to %struct.TYPE_4__*
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @CAM_DIR_MASK, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @CAM_DIR_NONE, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %51, label %80

51:                                               ; preds = %2
  %52 = load %union.ccb*, %union.ccb** %6, align 8
  %53 = bitcast %union.ccb* %52 to %struct.TYPE_4__*
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @CAM_DIR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @CAM_DIR_IN, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %61, i32* %10, align 4
  br label %64

62:                                               ; preds = %51
  %63 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %66 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %69 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @bus_dmamap_sync(i32 %67, i32 %70, i32 %71)
  %73 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %74 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %77 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bus_dmamap_unload(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %64, %2
  %81 = load i64, i64* %8, align 8
  %82 = icmp eq i64 %81, 135
  br i1 %82, label %83, label %98

83:                                               ; preds = %80
  %84 = load i64, i64* %9, align 8
  %85 = icmp eq i64 %84, 130
  br i1 %85, label %86, label %98

86:                                               ; preds = %83
  %87 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %88 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.pvscsi_ring_cmp_desc*, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %91 = getelementptr inbounds %struct.pvscsi_ring_cmp_desc, %struct.pvscsi_ring_cmp_desc* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32, i32, i8*, ...) @DEBUG_PRINTF(i32 3, i32 %89, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %92)
  %94 = load %union.ccb*, %union.ccb** %6, align 8
  %95 = bitcast %union.ccb* %94 to %struct.TYPE_3__*
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 2
  store i64 0, i64* %96, align 8
  %97 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %97, i64* %7, align 8
  br label %189

98:                                               ; preds = %83, %80
  %99 = load i64, i64* %8, align 8
  switch i64 %99, label %171 [
    i64 135, label %100
    i64 144, label %100
    i64 143, label %100
    i64 138, label %151
    i64 152, label %153
    i64 151, label %153
    i64 156, label %155
    i64 147, label %155
    i64 141, label %157
    i64 136, label %157
    i64 140, label %157
    i64 153, label %157
    i64 139, label %159
    i64 154, label %161
    i64 145, label %163
    i64 137, label %165
    i64 142, label %167
    i64 134, label %167
    i64 150, label %167
    i64 155, label %167
    i64 146, label %167
    i64 148, label %169
    i64 149, label %169
  ]

100:                                              ; preds = %98, %98, %98
  %101 = load i64, i64* %9, align 8
  switch i64 %101, label %142 [
    i64 130, label %102
    i64 132, label %107
    i64 133, label %138
    i64 129, label %138
    i64 131, label %140
    i64 128, label %140
  ]

102:                                              ; preds = %100
  %103 = load %union.ccb*, %union.ccb** %6, align 8
  %104 = bitcast %union.ccb* %103 to %struct.TYPE_3__*
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load i64, i64* @CAM_REQ_CMP, align 8
  store i64 %106, i64* %7, align 8
  br label %150

107:                                              ; preds = %100
  %108 = load i64, i64* @CAM_SCSI_STATUS_ERROR, align 8
  store i64 %108, i64* %7, align 8
  %109 = load %union.ccb*, %union.ccb** %6, align 8
  %110 = bitcast %union.ccb* %109 to %struct.TYPE_3__*
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %137

114:                                              ; preds = %107
  %115 = load i64, i64* @CAM_AUTOSNS_VALID, align 8
  %116 = load i64, i64* %7, align 8
  %117 = or i64 %116, %115
  store i64 %117, i64* %7, align 8
  %118 = load %union.ccb*, %union.ccb** %6, align 8
  %119 = bitcast %union.ccb* %118 to %struct.TYPE_3__*
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = call i32 @memset(i32* %120, i32 0, i32 4)
  %122 = load %union.ccb*, %union.ccb** %6, align 8
  %123 = bitcast %union.ccb* %122 to %struct.TYPE_3__*
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 1
  %125 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %126 = getelementptr inbounds %struct.pvscsi_hcb, %struct.pvscsi_hcb* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load %union.ccb*, %union.ccb** %6, align 8
  %129 = bitcast %union.ccb* %128 to %struct.TYPE_3__*
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.pvscsi_ring_cmp_desc*, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %133 = getelementptr inbounds %struct.pvscsi_ring_cmp_desc, %struct.pvscsi_ring_cmp_desc* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @MIN(i32 %131, i32 %134)
  %136 = call i32 @memcpy(i32* %124, i32 %127, i32 %135)
  br label %137

137:                                              ; preds = %114, %107
  br label %150

138:                                              ; preds = %100, %100
  %139 = load i64, i64* @CAM_REQUEUE_REQ, align 8
  store i64 %139, i64* %7, align 8
  br label %150

140:                                              ; preds = %100, %100
  %141 = load i64, i64* @CAM_REQ_ABORTED, align 8
  store i64 %141, i64* %7, align 8
  br label %150

142:                                              ; preds = %100
  %143 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %144 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %union.ccb*, %union.ccb** %6, align 8
  %147 = load i64, i64* %9, align 8
  %148 = call i32 (i32, i32, i8*, ...) @DEBUG_PRINTF(i32 1, i32 %145, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %union.ccb* %146, i64 %147)
  %149 = load i64, i64* @CAM_SCSI_STATUS_ERROR, align 8
  store i64 %149, i64* %7, align 8
  br label %150

150:                                              ; preds = %142, %140, %138, %137, %102
  br label %178

151:                                              ; preds = %98
  %152 = load i64, i64* @CAM_SEL_TIMEOUT, align 8
  store i64 %152, i64* %7, align 8
  br label %178

153:                                              ; preds = %98, %98
  %154 = load i64, i64* @CAM_DATA_RUN_ERR, align 8
  store i64 %154, i64* %7, align 8
  br label %178

155:                                              ; preds = %98, %98
  %156 = load i64, i64* @CAM_REQUEUE_REQ, align 8
  store i64 %156, i64* %7, align 8
  br label %178

157:                                              ; preds = %98, %98, %98, %98
  %158 = load i64, i64* @CAM_SCSI_BUS_RESET, align 8
  store i64 %158, i64* %7, align 8
  br label %178

159:                                              ; preds = %98
  %160 = load i64, i64* @CAM_UNCOR_PARITY, align 8
  store i64 %160, i64* %7, align 8
  br label %178

161:                                              ; preds = %98
  %162 = load i64, i64* @CAM_UNEXP_BUSFREE, align 8
  store i64 %162, i64* %7, align 8
  br label %178

163:                                              ; preds = %98
  %164 = load i64, i64* @CAM_SEQUENCE_FAIL, align 8
  store i64 %164, i64* %7, align 8
  br label %178

165:                                              ; preds = %98
  %166 = load i64, i64* @CAM_AUTOSENSE_FAIL, align 8
  store i64 %166, i64* %7, align 8
  br label %178

167:                                              ; preds = %98, %98, %98, %98, %98
  %168 = load i64, i64* @CAM_REQ_CMP_ERR, align 8
  store i64 %168, i64* %7, align 8
  br label %178

169:                                              ; preds = %98, %98
  %170 = load i64, i64* @CAM_NO_HBA, align 8
  store i64 %170, i64* %7, align 8
  br label %178

171:                                              ; preds = %98
  %172 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %173 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = call i32 @device_printf(i32 %174, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i64 %175)
  %177 = load i64, i64* @CAM_NO_HBA, align 8
  store i64 %177, i64* %7, align 8
  br label %178

178:                                              ; preds = %171, %169, %167, %165, %163, %161, %159, %157, %155, %153, %151, %150
  %179 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %180 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load %struct.pvscsi_ring_cmp_desc*, %struct.pvscsi_ring_cmp_desc** %4, align 8
  %183 = getelementptr inbounds %struct.pvscsi_ring_cmp_desc, %struct.pvscsi_ring_cmp_desc* %182, i32 0, i32 2
  %184 = load i64, i64* %183, align 8
  %185 = load i64, i64* %8, align 8
  %186 = load i64, i64* %9, align 8
  %187 = load i64, i64* %7, align 8
  %188 = call i32 (i32, i32, i8*, ...) @DEBUG_PRINTF(i32 3, i32 %181, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i64 %184, i64 %185, i64 %186, i64 %187)
  br label %189

189:                                              ; preds = %178, %86
  %190 = load %union.ccb*, %union.ccb** %6, align 8
  %191 = bitcast %union.ccb* %190 to %struct.TYPE_4__*
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 4
  store i32* null, i32** %192, align 8
  %193 = load %union.ccb*, %union.ccb** %6, align 8
  %194 = bitcast %union.ccb* %193 to %struct.TYPE_4__*
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 3
  store i32* null, i32** %195, align 8
  %196 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %197 = load %struct.pvscsi_hcb*, %struct.pvscsi_hcb** %5, align 8
  %198 = call i32 @pvscsi_hcb_put(%struct.pvscsi_softc* %196, %struct.pvscsi_hcb* %197)
  %199 = load i64, i64* %7, align 8
  %200 = load %union.ccb*, %union.ccb** %6, align 8
  %201 = bitcast %union.ccb* %200 to %struct.TYPE_4__*
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @CAM_STATUS_MASK, align 8
  %205 = load i64, i64* @CAM_SIM_QUEUED, align 8
  %206 = or i64 %204, %205
  %207 = xor i64 %206, -1
  %208 = and i64 %203, %207
  %209 = or i64 %199, %208
  %210 = load %union.ccb*, %union.ccb** %6, align 8
  %211 = bitcast %union.ccb* %210 to %struct.TYPE_4__*
  %212 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %211, i32 0, i32 1
  store i64 %209, i64* %212, align 8
  %213 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %214 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %226

217:                                              ; preds = %189
  %218 = load i64, i64* @CAM_RELEASE_SIMQ, align 8
  %219 = load %union.ccb*, %union.ccb** %6, align 8
  %220 = bitcast %union.ccb* %219 to %struct.TYPE_4__*
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 1
  %222 = load i64, i64* %221, align 8
  %223 = or i64 %222, %218
  store i64 %223, i64* %221, align 8
  %224 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %3, align 8
  %225 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %224, i32 0, i32 0
  store i64 0, i64* %225, align 8
  br label %226

226:                                              ; preds = %217, %189
  %227 = load i64, i64* %7, align 8
  %228 = load i64, i64* @CAM_REQ_CMP, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %242

230:                                              ; preds = %226
  %231 = load i64, i64* @CAM_DEV_QFRZN, align 8
  %232 = load %union.ccb*, %union.ccb** %6, align 8
  %233 = bitcast %union.ccb* %232 to %struct.TYPE_4__*
  %234 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = or i64 %235, %231
  store i64 %236, i64* %234, align 8
  %237 = load %union.ccb*, %union.ccb** %6, align 8
  %238 = bitcast %union.ccb* %237 to %struct.TYPE_4__*
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 2
  %240 = load i32, i32* %239, align 8
  %241 = call i32 @xpt_freeze_devq(i32 %240, i32 1)
  br label %242

242:                                              ; preds = %230, %226
  %243 = load %union.ccb*, %union.ccb** %6, align 8
  %244 = call i32 @xpt_done(%union.ccb* %243)
  ret void
}

declare dso_local %struct.pvscsi_hcb* @pvscsi_context_to_hcb(%struct.pvscsi_softc*, i64) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @DEBUG_PRINTF(i32, i32, i8*, ...) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i32 @pvscsi_hcb_put(%struct.pvscsi_softc*, %struct.pvscsi_hcb*) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
