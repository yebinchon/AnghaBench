; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_initiator_io_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ocs_fc/extr_ocs_cam.c_ocs_scsi_initiator_io_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i64, i64, i64, i32 }
%union.ccb = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i64, i64, i64, i64, i64, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.ocs_softc*, i32*, i32, i32 }
%struct.ocs_softc = type { i32 }
%struct.TYPE_11__ = type { i64, i32 }

@CAM_DIR_MASK = common dso_local global i64 0, align 8
@CAM_REQ_CMP_ERR = common dso_local global i32 0, align 4
@CAM_DIR_NONE = common dso_local global i64 0, align 8
@CAM_DIR_IN = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@OCS_CAM_IO_F_DMAPPED = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_CHECK_RESPONSE = common dso_local global i64 0, align 8
@SCSI_STATUS_OK = common dso_local global i64 0, align 8
@CAM_SCSI_STATUS_ERROR = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@CAM_DATA_RUN_ERR = common dso_local global i32 0, align 4
@CAM_SENSE_PHYS = common dso_local global i32 0, align 4
@CAM_SENSE_PTR = common dso_local global i32 0, align 4
@CAM_AUTOSNS_VALID = common dso_local global i32 0, align 4
@OCS_SCSI_STATUS_GOOD = common dso_local global i64 0, align 8
@CAM_DEV_QFRZN = common dso_local global i32 0, align 4
@CAM_SIM_QUEUED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, i64, %struct.TYPE_12__*, i64, i8*)* @ocs_scsi_initiator_io_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocs_scsi_initiator_io_cb(%struct.TYPE_13__* %0, i64 %1, %struct.TYPE_12__* %2, i64 %3, i8* %4) #0 {
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca %struct.ccb_scsiio*, align 8
  %13 = alloca %struct.ocs_softc*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_12__* %2, %struct.TYPE_12__** %8, align 8
  store i64 %3, i64* %9, align 8
  store i8* %4, i8** %10, align 8
  %19 = load i8*, i8** %10, align 8
  %20 = bitcast i8* %19 to %union.ccb*
  store %union.ccb* %20, %union.ccb** %11, align 8
  %21 = load %union.ccb*, %union.ccb** %11, align 8
  %22 = bitcast %union.ccb* %21 to %struct.ccb_scsiio*
  store %struct.ccb_scsiio* %22, %struct.ccb_scsiio** %12, align 8
  %23 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %24 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.ocs_softc*, %struct.ocs_softc** %25, align 8
  store %struct.ocs_softc* %26, %struct.ocs_softc** %13, align 8
  %27 = load %union.ccb*, %union.ccb** %11, align 8
  %28 = bitcast %union.ccb* %27 to %struct.TYPE_11__*
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @CAM_DIR_MASK, align 8
  %32 = and i64 %30, %31
  store i64 %32, i64* %14, align 8
  %33 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %33, i32* %15, align 4
  %34 = load i64, i64* @CAM_DIR_NONE, align 8
  %35 = load i64, i64* %14, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %72

37:                                               ; preds = %5
  %38 = load i64, i64* @CAM_DIR_IN, align 8
  %39 = load i64, i64* %14, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  store i32 %42, i32* %16, align 4
  br label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  store i32 %44, i32* %16, align 4
  br label %45

45:                                               ; preds = %43, %41
  %46 = load %struct.ocs_softc*, %struct.ocs_softc** %13, align 8
  %47 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @bus_dmamap_sync(i32 %48, i32 %52, i32 %53)
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @OCS_CAM_IO_F_DMAPPED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %45
  %63 = load %struct.ocs_softc*, %struct.ocs_softc** %13, align 8
  %64 = getelementptr inbounds %struct.ocs_softc, %struct.ocs_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @bus_dmamap_unload(i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %62, %45
  br label %72

72:                                               ; preds = %71, %5
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* @OCS_SCSI_STATUS_CHECK_RESPONSE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %181

76:                                               ; preds = %72
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %81 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %80, i32 0, i32 0
  store i64 %79, i64* %81, align 8
  %82 = load i64, i64* @SCSI_STATUS_OK, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %82, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %76
  %88 = load i32, i32* @CAM_SCSI_STATUS_ERROR, align 4
  store i32 %88, i32* %15, align 4
  br label %89

89:                                               ; preds = %87, %76
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %94 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %93, i32 0, i32 1
  store i64 %92, i64* %94, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %115

99:                                               ; preds = %89
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  store i64 %102, i64* %17, align 8
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %104 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %17, align 8
  %107 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %108 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = icmp eq i64 %105, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %99
  %113 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %113, i32* %15, align 4
  br label %114

114:                                              ; preds = %112, %99
  br label %123

115:                                              ; preds = %89
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp slt i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @CAM_DATA_RUN_ERR, align 4
  store i32 %121, i32* %15, align 4
  br label %122

122:                                              ; preds = %120, %115
  br label %123

123:                                              ; preds = %122, %114
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 3
  %126 = load i64, i64* %125, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %180

128:                                              ; preds = %123
  %129 = load %union.ccb*, %union.ccb** %11, align 8
  %130 = bitcast %union.ccb* %129 to %struct.TYPE_11__*
  %131 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i32, i32* @CAM_SENSE_PHYS, align 4
  %134 = load i32, i32* @CAM_SENSE_PTR, align 4
  %135 = or i32 %133, %134
  %136 = sext i32 %135 to i64
  %137 = and i64 %132, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %180, label %139

139:                                              ; preds = %128
  store i64 0, i64* %18, align 8
  %140 = load i32, i32* @CAM_AUTOSNS_VALID, align 4
  %141 = load %union.ccb*, %union.ccb** %11, align 8
  %142 = bitcast %union.ccb* %141 to %struct.TYPE_11__*
  %143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 8
  %146 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %150 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = icmp slt i64 %148, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %139
  %154 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %155 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %154, i32 0, i32 3
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 3
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %156, %159
  %161 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %162 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %161, i32 0, i32 4
  store i64 %160, i64* %162, align 8
  %163 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %164 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %163, i32 0, i32 3
  %165 = load i64, i64* %164, align 8
  store i64 %165, i64* %18, align 8
  br label %172

166:                                              ; preds = %139
  %167 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %168 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %167, i32 0, i32 4
  store i64 0, i64* %168, align 8
  %169 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %170 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %169, i32 0, i32 3
  %171 = load i64, i64* %170, align 8
  store i64 %171, i64* %18, align 8
  br label %172

172:                                              ; preds = %166, %153
  %173 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %174 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %173, i32 0, i32 6
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 4
  %177 = load i32, i32* %176, align 8
  %178 = load i64, i64* %18, align 8
  %179 = call i32 @ocs_memcpy(i32* %174, i32 %177, i64 %178)
  br label %180

180:                                              ; preds = %172, %128, %123
  br label %204

181:                                              ; preds = %72
  %182 = load i64, i64* %7, align 8
  %183 = load i64, i64* @OCS_SCSI_STATUS_GOOD, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %201

185:                                              ; preds = %181
  %186 = load i32, i32* @CAM_REQ_CMP_ERR, align 4
  store i32 %186, i32* %15, align 4
  %187 = load %union.ccb*, %union.ccb** %11, align 8
  %188 = load i32, i32* %15, align 4
  %189 = call i32 @ocs_set_ccb_status(%union.ccb* %187, i32 %188)
  %190 = load i32, i32* @CAM_DEV_QFRZN, align 4
  %191 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %192 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = or i32 %194, %190
  store i32 %195, i32* %193, align 4
  %196 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %197 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 8
  %200 = call i32 @xpt_freeze_devq(i32 %199, i32 1)
  br label %203

201:                                              ; preds = %181
  %202 = load i32, i32* @CAM_REQ_CMP, align 4
  store i32 %202, i32* %15, align 4
  br label %203

203:                                              ; preds = %201, %185
  br label %204

204:                                              ; preds = %203, %180
  %205 = load %union.ccb*, %union.ccb** %11, align 8
  %206 = load i32, i32* %15, align 4
  %207 = call i32 @ocs_set_ccb_status(%union.ccb* %205, i32 %206)
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %209 = call i32 @ocs_scsi_io_free(%struct.TYPE_13__* %208)
  %210 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %211 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 1
  store i32* null, i32** %212, align 8
  %213 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %12, align 8
  %214 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %213, i32 0, i32 5
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  store %struct.ocs_softc* null, %struct.ocs_softc** %215, align 8
  %216 = load i32, i32* @CAM_SIM_QUEUED, align 4
  %217 = xor i32 %216, -1
  %218 = load %union.ccb*, %union.ccb** %11, align 8
  %219 = bitcast %union.ccb* %218 to %struct.TYPE_11__*
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = and i32 %221, %217
  store i32 %222, i32* %220, align 8
  %223 = load %union.ccb*, %union.ccb** %11, align 8
  %224 = call i32 @xpt_done(%union.ccb* %223)
  ret i32 0
}

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @ocs_memcpy(i32*, i32, i64) #1

declare dso_local i32 @ocs_set_ccb_status(%union.ccb*, i32) #1

declare dso_local i32 @xpt_freeze_devq(i32, i32) #1

declare dso_local i32 @ocs_scsi_io_free(%struct.TYPE_13__*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
