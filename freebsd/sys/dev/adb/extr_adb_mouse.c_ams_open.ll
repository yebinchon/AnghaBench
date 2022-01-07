; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.adb_mouse_softc = type { i32, i64, i64, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @ams_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.adb_mouse_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.cdev*, %struct.cdev** %6, align 8
  %12 = call %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev* %11)
  store %struct.adb_mouse_softc* %12, %struct.adb_mouse_softc** %10, align 8
  %13 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %10, align 8
  %14 = icmp eq %struct.adb_mouse_softc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %5, align 4
  br label %32

17:                                               ; preds = %4
  %18 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %10, align 8
  %19 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %18, i32 0, i32 0
  %20 = call i32 @mtx_lock(i32* %19)
  %21 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %10, align 8
  %22 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %21, i32 0, i32 4
  store i64 0, i64* %22, align 8
  %23 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %10, align 8
  %24 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %23, i32 0, i32 3
  store i64 0, i64* %24, align 8
  %25 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %10, align 8
  %26 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %10, align 8
  %28 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %10, align 8
  %30 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %29, i32 0, i32 0
  %31 = call i32 @mtx_unlock(i32* %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %17, %15
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
