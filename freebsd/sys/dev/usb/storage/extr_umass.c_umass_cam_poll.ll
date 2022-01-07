; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cam_sim = type { i64 }
%struct.umass_softc = type { i32 }

@UDMASS_SCSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"CAM poll\0A\00", align 1
@UMASS_T_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cam_sim*)* @umass_cam_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @umass_cam_poll(%struct.cam_sim* %0) #0 {
  %2 = alloca %struct.cam_sim*, align 8
  %3 = alloca %struct.umass_softc*, align 8
  store %struct.cam_sim* %0, %struct.cam_sim** %2, align 8
  %4 = load %struct.cam_sim*, %struct.cam_sim** %2, align 8
  %5 = getelementptr inbounds %struct.cam_sim, %struct.cam_sim* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = inttoptr i64 %6 to %struct.umass_softc*
  store %struct.umass_softc* %7, %struct.umass_softc** %3, align 8
  %8 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %9 = icmp eq %struct.umass_softc* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %20

11:                                               ; preds = %1
  %12 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %13 = load i32, i32* @UDMASS_SCSI, align 4
  %14 = call i32 @DPRINTF(%struct.umass_softc* %12, i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %16 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @UMASS_T_MAX, align 4
  %19 = call i32 @usbd_transfer_poll(i32 %17, i32 %18)
  br label %20

20:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @DPRINTF(%struct.umass_softc*, i32, i8*) #1

declare dso_local i32 @usbd_transfer_poll(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
