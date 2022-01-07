; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_setup_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aic7xxx/extr_aic7xxx_osm.c_ahc_setup_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }
%struct.cam_sim = type { i32 }
%struct.ccb_scsiio = type { i32, %struct.TYPE_6__, i64, i64, %struct.ccb_hdr }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ccb_hdr = type { i64, i32 }
%struct.scb = type { %struct.TYPE_8__*, i32, i32, %struct.hardware_scb* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.hardware_scb = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }
%union.ccb = type { i32 }

@XPT_SCSI_IO = common dso_local global i64 0, align 8
@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_CDB_PHYS = common dso_local global i32 0, align 4
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@SCB_CDB32_PTR = common dso_local global i32 0, align 4
@ahc_execute_scb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@CAM_RELEASE_SIMQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ahc_softc*, %struct.cam_sim*, %struct.ccb_scsiio*, %struct.scb*)* @ahc_setup_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ahc_setup_data(%struct.ahc_softc* %0, %struct.cam_sim* %1, %struct.ccb_scsiio* %2, %struct.scb* %3) #0 {
  %5 = alloca %struct.ahc_softc*, align 8
  %6 = alloca %struct.cam_sim*, align 8
  %7 = alloca %struct.ccb_scsiio*, align 8
  %8 = alloca %struct.scb*, align 8
  %9 = alloca %struct.hardware_scb*, align 8
  %10 = alloca %struct.ccb_hdr*, align 8
  %11 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %5, align 8
  store %struct.cam_sim* %1, %struct.cam_sim** %6, align 8
  store %struct.ccb_scsiio* %2, %struct.ccb_scsiio** %7, align 8
  store %struct.scb* %3, %struct.scb** %8, align 8
  %12 = load %struct.scb*, %struct.scb** %8, align 8
  %13 = getelementptr inbounds %struct.scb, %struct.scb* %12, i32 0, i32 3
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
  br i1 %25, label %26, label %134

26:                                               ; preds = %4
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 0
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
  br i1 %37, label %38, label %97

38:                                               ; preds = %26
  %39 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %40 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %42, 4
  br i1 %43, label %51, label %44

44:                                               ; preds = %38
  %45 = load %struct.ccb_hdr*, %struct.ccb_hdr** %10, align 8
  %46 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @CAM_CDB_PHYS, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44, %38
  %52 = load %struct.scb*, %struct.scb** %8, align 8
  %53 = load i32, i32* @CAM_REQ_INVALID, align 4
  %54 = call i32 @aic_set_transaction_status(%struct.scb* %52, i32 %53)
  %55 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %56 = load %struct.scb*, %struct.scb** %8, align 8
  %57 = call i32 @ahc_free_scb(%struct.ahc_softc* %55, %struct.scb* %56)
  %58 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %59 = bitcast %struct.ccb_scsiio* %58 to %union.ccb*
  %60 = call i32 @xpt_done(%union.ccb* %59)
  br label %160

61:                                               ; preds = %44
  %62 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %63 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp sgt i32 %64, 12
  br i1 %65, label %66, label %83

66:                                               ; preds = %61
  %67 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %68 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %71 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %75 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @memcpy(i32 %69, i32 %73, i32 %76)
  %78 = load i32, i32* @SCB_CDB32_PTR, align 4
  %79 = load %struct.scb*, %struct.scb** %8, align 8
  %80 = getelementptr inbounds %struct.scb, %struct.scb* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %96

83:                                               ; preds = %61
  %84 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %85 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %89 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %93 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @memcpy(i32 %87, i32 %91, i32 %94)
  br label %96

96:                                               ; preds = %83, %66
  br label %133

97:                                               ; preds = %26
  %98 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %99 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp sgt i32 %100, 12
  br i1 %101, label %102, label %119

102:                                              ; preds = %97
  %103 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %104 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %107 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %111 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @memcpy(i32 %105, i32 %109, i32 %112)
  %114 = load i32, i32* @SCB_CDB32_PTR, align 4
  %115 = load %struct.scb*, %struct.scb** %8, align 8
  %116 = getelementptr inbounds %struct.scb, %struct.scb* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 4
  br label %132

119:                                              ; preds = %97
  %120 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %121 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %125 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.hardware_scb*, %struct.hardware_scb** %9, align 8
  %129 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @memcpy(i32 %123, i32 %127, i32 %130)
  br label %132

132:                                              ; preds = %119, %102
  br label %133

133:                                              ; preds = %132, %96
  br label %134

134:                                              ; preds = %133, %4
  %135 = load %struct.ahc_softc*, %struct.ahc_softc** %5, align 8
  %136 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.scb*, %struct.scb** %8, align 8
  %139 = getelementptr inbounds %struct.scb, %struct.scb* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %7, align 8
  %142 = bitcast %struct.ccb_scsiio* %141 to %union.ccb*
  %143 = load i32, i32* @ahc_execute_scb, align 4
  %144 = load %struct.scb*, %struct.scb** %8, align 8
  %145 = call i32 @bus_dmamap_load_ccb(i32 %137, i32 %140, %union.ccb* %142, i32 %143, %struct.scb* %144, i32 0)
  store i32 %145, i32* %11, align 4
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* @EINPROGRESS, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %160

149:                                              ; preds = %134
  %150 = load %struct.cam_sim*, %struct.cam_sim** %6, align 8
  %151 = call i32 @xpt_freeze_simq(%struct.cam_sim* %150, i32 1)
  %152 = load i32, i32* @CAM_RELEASE_SIMQ, align 4
  %153 = load %struct.scb*, %struct.scb** %8, align 8
  %154 = getelementptr inbounds %struct.scb, %struct.scb* %153, i32 0, i32 0
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = or i32 %158, %152
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %51, %149, %134
  ret void
}

declare dso_local i32 @aic_set_transaction_status(%struct.scb*, i32) #1

declare dso_local i32 @ahc_free_scb(%struct.ahc_softc*, %struct.scb*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_load_ccb(i32, i32, %union.ccb*, i32, %struct.scb*, i32) #1

declare dso_local i32 @xpt_freeze_simq(%struct.cam_sim*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
