; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_alloc_cam.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/scsi/extr_virtio_scsi.c_vtscsi_alloc_cam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtscsi_softc = type { i32, i32*, i32 }
%struct.cam_devq = type { i32 }

@VTSCSI_RESERVED_REQUESTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot allocate SIM queue\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@vtscsi_cam_action = common dso_local global i32 0, align 4
@vtscsi_cam_poll = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"vtscsi\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot allocate SIM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtscsi_softc*)* @vtscsi_alloc_cam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtscsi_alloc_cam(%struct.vtscsi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vtscsi_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cam_devq*, align 8
  %6 = alloca i32, align 4
  store %struct.vtscsi_softc* %0, %struct.vtscsi_softc** %3, align 8
  %7 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %8 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %11 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @VTSCSI_RESERVED_REQUESTS, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.cam_devq* @cam_simq_alloc(i32 %15)
  store %struct.cam_devq* %16, %struct.cam_devq** %5, align 8
  %17 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %18 = icmp eq %struct.cam_devq* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @device_printf(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  store i32 %22, i32* %2, align 4
  br label %47

23:                                               ; preds = %1
  %24 = load i32, i32* @vtscsi_cam_action, align 4
  %25 = load i32, i32* @vtscsi_cam_poll, align 4
  %26 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @device_get_unit(i32 %27)
  %29 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %30 = call i32 @VTSCSI_MTX(%struct.vtscsi_softc* %29)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %33 = call i32* @cam_sim_alloc(i32 %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), %struct.vtscsi_softc* %26, i32 %28, i32 %30, i32 1, i32 %31, %struct.cam_devq* %32)
  %34 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %35 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %34, i32 0, i32 1
  store i32* %33, i32** %35, align 8
  %36 = load %struct.vtscsi_softc*, %struct.vtscsi_softc** %3, align 8
  %37 = getelementptr inbounds %struct.vtscsi_softc, %struct.vtscsi_softc* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %46

40:                                               ; preds = %23
  %41 = load %struct.cam_devq*, %struct.cam_devq** %5, align 8
  %42 = call i32 @cam_simq_free(%struct.cam_devq* %41)
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %47

46:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %40, %19
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32* @cam_sim_alloc(i32, i32, i8*, %struct.vtscsi_softc*, i32, i32, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @VTSCSI_MTX(%struct.vtscsi_softc*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
