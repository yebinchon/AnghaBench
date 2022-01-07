; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/adb/extr_adb_mouse.c_ams_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.thread = type { i32 }
%struct.adb_mouse_softc = type { i64, i64, i64, i64, i64, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@POLLRDNORM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.thread*)* @ams_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ams_poll(%struct.cdev* %0, i32 %1, %struct.thread* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cdev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.adb_mouse_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.thread* %2, %struct.thread** %7, align 8
  %9 = load %struct.cdev*, %struct.cdev** %5, align 8
  %10 = call %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev* %9)
  store %struct.adb_mouse_softc* %10, %struct.adb_mouse_softc** %8, align 8
  %11 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %12 = icmp eq %struct.adb_mouse_softc* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EIO, align 4
  store i32 %14, i32* %4, align 4
  br label %65

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @POLLIN, align 4
  %18 = load i32, i32* @POLLRDNORM, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %63

22:                                               ; preds = %15
  %23 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %24 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %23, i32 0, i32 5
  %25 = call i32 @mtx_lock(i32* %24)
  %26 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %27 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %53

30:                                               ; preds = %22
  %31 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %32 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %53

35:                                               ; preds = %30
  %36 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %37 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %40 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %53

43:                                               ; preds = %35
  %44 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %45 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %44, i32 0, i32 4
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.thread*, %struct.thread** %7, align 8
  %50 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %51 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %50, i32 0, i32 6
  %52 = call i32 @selrecord(%struct.thread* %49, i32* %51)
  store i32 0, i32* %6, align 4
  br label %59

53:                                               ; preds = %43, %35, %30, %22
  %54 = load i32, i32* @POLLIN, align 4
  %55 = load i32, i32* @POLLRDNORM, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* %6, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %53, %48
  %60 = load %struct.adb_mouse_softc*, %struct.adb_mouse_softc** %8, align 8
  %61 = getelementptr inbounds %struct.adb_mouse_softc, %struct.adb_mouse_softc* %60, i32 0, i32 5
  %62 = call i32 @mtx_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %15
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %13
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.adb_mouse_softc* @CDEV_GET_SOFTC(%struct.cdev*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @selrecord(%struct.thread*, i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
