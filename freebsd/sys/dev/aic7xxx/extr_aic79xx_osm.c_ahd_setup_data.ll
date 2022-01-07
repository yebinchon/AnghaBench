; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_setup_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic79xx_osm.c_ahd_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahd_softc = type { i32 }
%struct.cam_sim = type { i32 }
%struct.ccb_scsiio = type { %struct.TYPE_10__, i32, i64, i64, %struct.ccb_hdr }
%struct.TYPE_10__ = type { i64, i64 }
%struct.ccb_hdr = type { i64, i32 }
%struct.scb = type { %struct.TYPE_12__*, i32, %struct.hardware_scb* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.hardware_scb = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }
%union.ccb = type { i32 }

@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@MAX_CDB_LEN = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@SCB_CDB_LEN_PTR = common dso_local global i32 0, align 4
@ahd_execute_scb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahd_softc*, %struct.cam_sim*, %struct.ccb_scsiio*, %struct.scb*)* @ahd_setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahd_setup_data(%struct.ahd_softc* %0, %struct.cam_sim* %1, %struct.ccb_scsiio* %2, %struct.scb* %3) #0 {
  %5 = alloca %struct.ahd_softc*, align 8
  %6 = alloca %struct.cam_sim*, align 8
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca %struct.scb*, align 8
  %9 = alloca %struct.hardware_scb*, align 8
  %10 = alloca %struct.ccb_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.ahd_softc* %0, %struct.ahd_softc** %5, align 8
  store %struct.cam_sim* %1, %struct.cam_sim** %6, align 8
  store %struct.ccb_scsiio* %2, %struct.ccb_scsiio** %7, align 8
  store %struct.scb* %3, %struct.scb** %8, align 8
  %12 = load %struct.scb*, %struct.scb** %8, align 8
  %13 = getelementptr inbounds %struct.scb, %struct.scb* %12, i32 0, i32 2
  %14 = load %struct.hardware_scb*, %struct.hardware_scb** %13, align 8
  store %struct.hardware_scb* %14, %struct.hardware_scb** %9, align 8
  %15 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %16 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %15, i32 0, i32 4
  store %struct.ccb_hdr* %16, %struct.ccb_hdr** %10, align 8
  %17 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %18 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  %19 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %20 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %19, i32 0, i32 2
  store i64 0, i64* %20, align 8
  %21 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %22 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @XPT_SCSI_IO, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %138

26:                                               ; preds = %4
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %31 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %33 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @CAM_CDB_POINTER, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %107

38:                                               ; preds = %26
  %39 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %40 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MAX_CDB_LEN, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %38
  %45 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %46 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CAM_CDB_PHYS, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.scb*, %struct.scb** %8, align 8
  %53 = load i32, i32* @CAM_REQ_INVALID, align 4
  %54 = call i32 @aic_set_transaction_status(%struct.scb* %52, i32 %53)
  %55 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %56 = load %struct.scb*, %struct.scb** %8, align 8
  %57 = call i32 @ahd_free_scb(%struct.ahd_softc* %55, %struct.scb* %56)
  %58 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %59 = bitcast %struct.ccb_scsiio* %58 to %union.ccb*
  %60 = call i32 @xpt_done(%union.ccb* %59)
  br label %164

61:                                               ; preds = %44, %38
  %62 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %63 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @CAM_CDB_PHYS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %92

68:                                               ; preds = %61
  %69 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %70 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @aic_htole64(i64 %72)
  %74 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %75 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 1
  store i32 %73, i32* %78, align 4
  %79 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %80 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %83 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* @SCB_CDB_LEN_PTR, align 4
  %88 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %89 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %106

92:                                               ; preds = %61
  %93 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %94 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %99 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %103 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @memcpy(i32 %97, i64 %101, i32 %104)
  br label %106

106:                                              ; preds = %92, %68
  br label %137

107:                                              ; preds = %26
  %108 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %109 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @MAX_CDB_LEN, align 4
  %112 = icmp sgt i32 %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %107
  %114 = load %struct.scb*, %struct.scb** %8, align 8
  %115 = load i32, i32* @CAM_REQ_INVALID, align 4
  %116 = call i32 @aic_set_transaction_status(%struct.scb* %114, i32 %115)
  %117 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %118 = load %struct.scb*, %struct.scb** %8, align 8
  %119 = call i32 @ahd_free_scb(%struct.ahd_softc* %117, %struct.scb* %118)
  %120 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %121 = bitcast %struct.ccb_scsiio* %120 to %union.ccb*
  %122 = call i32 @xpt_done(%union.ccb* %121)
  br label %164

123:                                              ; preds = %107
  %124 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %125 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %130 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %134 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @memcpy(i32 %128, i64 %132, i32 %135)
  br label %137

137:                                              ; preds = %123, %106
  br label %138

138:                                              ; preds = %137, %4
  %139 = load %struct.ahd_softc*, %struct.ahd_softc** %5, align 8
  %140 = getelementptr inbounds %struct.ahd_softc, %struct.ahd_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.scb*, %struct.scb** %8, align 8
  %143 = getelementptr inbounds %struct.scb, %struct.scb* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %146 = bitcast %struct.ccb_scsiio* %145 to %union.ccb*
  %147 = load i32, i32* @ahd_execute_scb, align 4
  %148 = load %struct.scb*, %struct.scb** %8, align 8
  %149 = call i32 @bus_dmamap_load_ccb(i32 %141, i32 %144, %union.ccb* %146, i32 %147, %struct.scb* %148, i32 0)
  store i32 %149, i32* %11, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* @EINPROGRESS, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %164

153:                                              ; preds = %138
  %154 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %155 = call i32 @xpt_freeze_simq(%struct.cam_sim* %154, i32 1)
  %156 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %157 = load %struct.scb*, %struct.scb** %8, align 8
  %158 = getelementptr inbounds %struct.scb, %struct.scb* %157, i32 0, i32 0
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %162, %156
  store i32 %163, i32* %161, align 4
  br label %164

164:                                              ; preds = %51, %113, %153, %138
  ret void
}

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahd_free_scb(%struct.ahd_softc*, %struct.scb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @aic_htole64(i64) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.scb*, i32) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
