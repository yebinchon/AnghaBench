; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_attach_sim.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/storage/extr_umass.c_umass_cam_attach_sim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.umass_softc = type { i32, i32, i32, i32* }
%struct.cam_devq = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@umass_cam_action = common dso_local global i32 0, align 4
@umass_cam_poll = common dso_local global i32 0, align 4
@DEVNAME_SIM = common dso_local global i32 0, align 4
@CAM_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.umass_softc*)* @umass_cam_attach_sim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @umass_cam_attach_sim(%struct.umass_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.umass_softc*, align 8
  %4 = alloca %struct.cam_devq*, align 8
  store %struct.umass_softc* %0, %struct.umass_softc** %3, align 8
  %5 = call %struct.cam_devq* @cam_simq_alloc(i32 1)
  store %struct.cam_devq* %5, %struct.cam_devq** %4, align 8
  %6 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %7 = icmp eq %struct.cam_devq* %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @ENOMEM, align 4
  store i32 %9, i32* %2, align 4
  br label %55

10:                                               ; preds = %1
  %11 = load i32, i32* @DEVNAME_SIM, align 4
  %12 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %13 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %14 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %17 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %16, i32 0, i32 0
  %18 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %19 = call i32* @cam_sim_alloc(i32* @umass_cam_action, i32* @umass_cam_poll, i32 %11, %struct.umass_softc* %12, i32 %15, i32* %17, i32 1, i32 0, %struct.cam_devq* %18)
  %20 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %21 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %20, i32 0, i32 3
  store i32* %19, i32** %21, align 8
  %22 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %23 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %30

26:                                               ; preds = %10
  %27 = load %struct.cam_devq*, %struct.cam_devq** %4, align 8
  %28 = call i32 @cam_simq_free(%struct.cam_devq* %27)
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %2, align 4
  br label %55

30:                                               ; preds = %10
  %31 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %32 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %31, i32 0, i32 0
  %33 = call i32 @mtx_lock(i32* %32)
  %34 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %35 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %38 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %41 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @xpt_bus_register(i32* %36, i32 %39, i32 %42)
  %44 = load i64, i64* @CAM_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %51

46:                                               ; preds = %30
  %47 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %48 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %47, i32 0, i32 0
  %49 = call i32 @mtx_unlock(i32* %48)
  %50 = load i32, i32* @ENOMEM, align 4
  store i32 %50, i32* %2, align 4
  br label %55

51:                                               ; preds = %30
  %52 = load %struct.umass_softc*, %struct.umass_softc** %3, align 8
  %53 = getelementptr inbounds %struct.umass_softc, %struct.umass_softc* %52, i32 0, i32 0
  %54 = call i32 @mtx_unlock(i32* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %51, %46, %26, %8
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.cam_devq* @cam_simq_alloc(i32) #1

declare dso_local i32* @cam_sim_alloc(i32*, i32*, i32, %struct.umass_softc*, i32, i32*, i32, i32, %struct.cam_devq*) #1

declare dso_local i32 @cam_simq_free(%struct.cam_devq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @xpt_bus_register(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
