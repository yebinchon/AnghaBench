; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_action.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_cam_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i32 }
%union.ccb = type { %struct.ccb_hdr }
%struct.ccb_hdr = type { i32, i32 }
%struct.vtscsi_softc = type { i32 }

@VTSCSI_FLAG_DETACH = common dso_local global i32 0, align 4
@CAM_NO_HBA = common dso_local global i32 0, align 4
@CAM_FUNC_NOTAVAIL = common dso_local global i32 0, align 4
@VTSCSI_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"invalid ccb=%p func=%#x\0A\00", align 1
@CAM_REQ_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*, %union.ccb*)* @vtscsi_cam_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtscsi_cam_action(%struct.cam_sim* %0, %union.ccb* %1) #0 {
  %3 = alloca %struct.cam_sim*, align 8
  %4 = alloca %union.ccb*, align 8
  %5 = alloca %struct.vtscsi_softc*, align 8
  %6 = alloca %struct.ccb_hdr*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %3, align 8
  store %union.ccb* %1, %union.ccb** %4, align 8
  %7 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %8 = call %struct.vtscsi_softc* @cam_sim_softc(%struct.cam_sim* %7)
  store %struct.vtscsi_softc* %8, %struct.vtscsi_softc** %5, align 8
  %9 = load %union.ccb*, %union.ccb** %4, align 8
  %10 = bitcast %union.ccb* %9 to %struct.ccb_hdr*
  store %struct.ccb_hdr* %10, %struct.ccb_hdr** %6, align 8
  %11 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %12 = call i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc* %11)
  %13 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %14 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VTSCSI_FLAG_DETACH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @CAM_NO_HBA, align 4
  %21 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %union.ccb*, %union.ccb** %4, align 8
  %24 = call i32 @xpt_done(%union.ccb* %23)
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %27 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %67 [
    i32 129, label %29
    i32 128, label %34
    i32 133, label %40
    i32 131, label %44
    i32 130, label %48
    i32 135, label %52
    i32 134, label %56
    i32 132, label %62
  ]

29:                                               ; preds = %25
  %30 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %31 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %32 = load %union.ccb*, %union.ccb** %4, align 8
  %33 = call i32 @vtscsi_cam_scsi_io(%struct.vtscsi_softc* %30, %struct.cam_sim* %31, %union.ccb* %32)
  br label %80

34:                                               ; preds = %25
  %35 = load i32, i32* @CAM_FUNC_NOTAVAIL, align 4
  %36 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %37 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %union.ccb*, %union.ccb** %4, align 8
  %39 = call i32 @xpt_done(%union.ccb* %38)
  br label %80

40:                                               ; preds = %25
  %41 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %42 = load %union.ccb*, %union.ccb** %4, align 8
  %43 = call i32 @vtscsi_cam_get_tran_settings(%struct.vtscsi_softc* %41, %union.ccb* %42)
  br label %80

44:                                               ; preds = %25
  %45 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %46 = load %union.ccb*, %union.ccb** %4, align 8
  %47 = call i32 @vtscsi_cam_reset_bus(%struct.vtscsi_softc* %45, %union.ccb* %46)
  br label %80

48:                                               ; preds = %25
  %49 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %50 = load %union.ccb*, %union.ccb** %4, align 8
  %51 = call i32 @vtscsi_cam_reset_dev(%struct.vtscsi_softc* %49, %union.ccb* %50)
  br label %80

52:                                               ; preds = %25
  %53 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %54 = load %union.ccb*, %union.ccb** %4, align 8
  %55 = call i32 @vtscsi_cam_abort(%struct.vtscsi_softc* %53, %union.ccb* %54)
  br label %80

56:                                               ; preds = %25
  %57 = load %union.ccb*, %union.ccb** %4, align 8
  %58 = bitcast %union.ccb* %57 to i32*
  %59 = call i32 @cam_calc_geometry(i32* %58, i32 1)
  %60 = load %union.ccb*, %union.ccb** %4, align 8
  %61 = call i32 @xpt_done(%union.ccb* %60)
  br label %80

62:                                               ; preds = %25
  %63 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %64 = load %struct.cam_sim*, %struct.cam_sim** %3, align 8
  %65 = load %union.ccb*, %union.ccb** %4, align 8
  %66 = call i32 @vtscsi_cam_path_inquiry(%struct.vtscsi_softc* %63, %struct.cam_sim* %64, %union.ccb* %65)
  br label %80

67:                                               ; preds = %25
  %68 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %5, align 8
  %69 = load i32, i32* @VTSCSI_ERROR, align 4
  %70 = load %union.ccb*, %union.ccb** %4, align 8
  %71 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %72 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @vtscsi_dprintf(%struct.vtscsi_softc* %68, i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %union.ccb* %70, i32 %73)
  %75 = load i32, i32* @CAM_REQ_INVALID, align 4
  %76 = load %struct.ccb_hdr*, %struct.ccb_hdr** %6, align 8
  %77 = getelementptr inbounds %struct.ccb_hdr, %struct.ccb_hdr* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %union.ccb*, %union.ccb** %4, align 8
  %79 = call i32 @xpt_done(%union.ccb* %78)
  br label %80

80:                                               ; preds = %19, %67, %62, %56, %52, %48, %44, %40, %34, %29
  ret void
}

declare dso_local %struct.vtscsi_softc* @cam_sim_softc(%struct.cam_sim*) #1

declare dso_local i32 @VTSCSI_LOCK_OWNED(%struct.vtscsi_softc*) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @vtscsi_cam_scsi_io(%struct.vtscsi_softc*, %struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @vtscsi_cam_get_tran_settings(%struct.vtscsi_softc*, %union.ccb*) #1

declare dso_local i32 @vtscsi_cam_reset_bus(%struct.vtscsi_softc*, %union.ccb*) #1

declare dso_local i32 @vtscsi_cam_reset_dev(%struct.vtscsi_softc*, %union.ccb*) #1

declare dso_local i32 @vtscsi_cam_abort(%struct.vtscsi_softc*, %union.ccb*) #1

declare dso_local i32 @cam_calc_geometry(i32*, i32) #1

declare dso_local i32 @vtscsi_cam_path_inquiry(%struct.vtscsi_softc*, %struct.cam_sim*, %union.ccb*) #1

declare dso_local i32 @vtscsi_dprintf(%struct.vtscsi_softc*, i32, i8*, %union.ccb*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
