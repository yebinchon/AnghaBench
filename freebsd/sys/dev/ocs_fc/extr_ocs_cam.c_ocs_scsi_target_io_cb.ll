; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_target_io_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_target_io_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__, i64, i64 }
%struct.TYPE_13__ = type { i32, i32, i64, i32 }
%union.ccb = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64, i32 }
%struct.ccb_scsiio = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.ocs_softc* }
%struct.ocs_softc = type { i32 }
%struct.TYPE_14__ = type { i32, i64, i32, i32*, i32 }

@CAM_DIR_MASK = common dso_local global i64 0, align 8
@CAM_SEND_STATUS = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i64 0, align 8
@CAM_DIR_IN = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@OCS_CAM_IO_F_DMAPPED = common dso_local global i32 0, align 4
@OCS_CAM_IO_RESP = common dso_local global i32 0, align 4
@CAM_SEND_SENSE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@OCS_CAM_IO_F_ABORT_NOTIFY = common dso_local global i32 0, align 4
@OCS_CAM_IO_DATA_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32, i64, i8*)* @ocs_scsi_target_io_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_scsi_target_io_cb(%struct.TYPE_15__* %0, i32 %1, i64 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %union.ccb*, align 8
  %11 = alloca %struct.ccb_scsiio*, align 8
  %12 = alloca %struct.ocs_softc*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_14__, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  %17 = load i8*, i8** %9, align 8
  %18 = bitcast i8* %17 to %union.ccb*
  store %union.ccb* %18, %union.ccb** %10, align 8
  %19 = load %union.ccb*, %union.ccb** %10, align 8
  %20 = bitcast %union.ccb* %19 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %20, %struct.ccb_scsiio** %11, align 8
  %21 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %22 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load %struct.ocs_softc*, %struct.ocs_softc** %23, align 8
  store %struct.ocs_softc* %24, %struct.ocs_softc** %12, align 8
  %25 = load %union.ccb*, %union.ccb** %10, align 8
  %26 = bitcast %union.ccb* %25 to %struct.TYPE_12__*
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @CAM_DIR_MASK, align 8
  %30 = and i64 %28, %29
  store i64 %30, i64* %13, align 8
  %31 = load %union.ccb*, %union.ccb** %10, align 8
  %32 = bitcast %union.ccb* %31 to %struct.TYPE_12__*
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @CAM_SEND_STATUS, align 4
  %36 = sext i32 %35 to i64
  %37 = and i64 %34, %36
  %38 = load i32, i32* @CAM_SEND_STATUS, align 4
  %39 = sext i32 %38 to i64
  %40 = icmp eq i64 %37, %39
  %41 = zext i1 %40 to i32
  %42 = sext i32 %41 to i64
  store i64 %42, i64* %14, align 8
  %43 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %44 = xor i32 %43, -1
  %45 = load %union.ccb*, %union.ccb** %10, align 8
  %46 = bitcast %union.ccb* %45 to %struct.TYPE_12__*
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = and i32 %48, %44
  store i32 %49, i32* %47, align 8
  %50 = load i64, i64* @CAM_DIR_NONE, align 8
  %51 = load i64, i64* %13, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %88

53:                                               ; preds = %4
  %54 = load i64, i64* @CAM_DIR_IN, align 8
  %55 = load i64, i64* %13, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %58, i32* %15, align 4
  br label %61

59:                                               ; preds = %53
  %60 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %60, i32* %15, align 4
  br label %61

61:                                               ; preds = %59, %57
  %62 = load %struct.ocs_softc*, %struct.ocs_softc** %12, align 8
  %63 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %15, align 4
  %70 = call i32 @bus_dmamap_sync(i32 %64, i32 %68, i32 %69)
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @OCS_CAM_IO_F_DMAPPED, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %61
  %79 = load %struct.ocs_softc*, %struct.ocs_softc** %12, align 8
  %80 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @bus_dmamap_unload(i32 %81, i32 %85)
  br label %87

87:                                               ; preds = %78, %61
  br label %88

88:                                               ; preds = %87, %4
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %133

94:                                               ; preds = %88
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = bitcast %struct.TYPE_14__* %16 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %98, i8 0, i64 40, i1 false)
  %99 = load i32, i32* @OCS_CAM_IO_RESP, align 4
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* %7, align 4
  %104 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load %union.ccb*, %union.ccb** %10, align 8
  %106 = bitcast %union.ccb* %105 to %struct.TYPE_12__*
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @CAM_SEND_SENSE, align 4
  %110 = sext i32 %109 to i64
  %111 = and i64 %108, %110
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %94
  %114 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %115 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 3
  store i32* %115, i32** %116, align 8
  %117 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %11, align 8
  %118 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 2
  store i32 %119, i32* %120, align 8
  br label %121

121:                                              ; preds = %113, %94
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 %124, %127
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 1
  store i64 %128, i64* %129, align 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %131 = load %union.ccb*, %union.ccb** %10, align 8
  %132 = call i32 @ocs_scsi_send_resp(%struct.TYPE_15__* %130, i32 0, %struct.TYPE_14__* %16, i32 (%struct.TYPE_15__*, i32, i64, i8*)* @ocs_scsi_target_io_cb, %union.ccb* %131)
  store i32 %132, i32* %5, align 4
  br label %170

133:                                              ; preds = %88
  %134 = load i32, i32* %7, align 4
  switch i32 %134, label %143 [
    i32 128, label %135
    i32 129, label %139
  ]

135:                                              ; preds = %133
  %136 = load %union.ccb*, %union.ccb** %10, align 8
  %137 = load i32, i32* @CAM_REQ_CMP, align 4
  %138 = call i32 @ocs_set_ccb_status(%union.ccb* %136, i32 %137)
  br label %147

139:                                              ; preds = %133
  %140 = load %union.ccb*, %union.ccb** %10, align 8
  %141 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %142 = call i32 @ocs_set_ccb_status(%union.ccb* %140, i32 %141)
  br label %147

143:                                              ; preds = %133
  %144 = load %union.ccb*, %union.ccb** %10, align 8
  %145 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  %146 = call i32 @ocs_set_ccb_status(%union.ccb* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %139, %135
  %148 = load i64, i64* %14, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %162

150:                                              ; preds = %147
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @OCS_CAM_IO_F_ABORT_NOTIFY, align 4
  %156 = and i32 %154, %155
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %161

158:                                              ; preds = %150
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = call i32 @ocs_target_io_free(%struct.TYPE_15__* %159)
  br label %161

161:                                              ; preds = %158, %150
  br label %167

162:                                              ; preds = %147
  %163 = load i32, i32* @OCS_CAM_IO_DATA_DONE, align 4
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 1
  store i32 %163, i32* %166, align 4
  br label %167

167:                                              ; preds = %162, %161
  %168 = load %union.ccb*, %union.ccb** %10, align 8
  %169 = call i32 @xpt_done(%union.ccb* %168)
  store i32 0, i32* %5, align 4
  br label %170

170:                                              ; preds = %167, %121
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ocs_scsi_send_resp(%struct.TYPE_15__*, i32, %struct.TYPE_14__*, i32 (%struct.TYPE_15__*, i32, i64, i8*)*, %union.ccb*) #1

declare dso_local i32 @ocs_set_ccb_status(%union.ccb*, i32) #1

declare dso_local i32 @ocs_target_io_free(%struct.TYPE_15__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
