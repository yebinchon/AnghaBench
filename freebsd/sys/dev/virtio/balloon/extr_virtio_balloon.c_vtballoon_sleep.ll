; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_sleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/virtio/balloon/extr_virtio_balloon.c_vtballoon_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vtballoon_softc = type { i64, i32, i32, i64 }

@VTBALLOON_FLAG_DETACH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vtbslp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vtballoon_softc*)* @vtballoon_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vtballoon_sleep(%struct.vtballoon_softc* %0) #0 {
  %2 = alloca %struct.vtballoon_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vtballoon_softc* %0, %struct.vtballoon_softc** %2, align 8
  store i32 0, i32* %3, align 4
  %7 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %11 = call i32 @VTBALLOON_LOCK(%struct.vtballoon_softc* %10)
  br label %12

12:                                               ; preds = %43, %1
  %13 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %14 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @VTBALLOON_FLAG_DETACH, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %49

20:                                               ; preds = %12
  %21 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %22 = call i64 @vtballoon_desired_size(%struct.vtballoon_softc* %21)
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %25 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %24, i32 0, i32 3
  store i64 %23, i64* %25, align 8
  %26 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %4, align 4
  %29 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vtballoon_softc, %struct.vtballoon_softc* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp sgt i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %49

35:                                               ; preds = %20
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %6, align 8
  %38 = icmp slt i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %49

43:                                               ; preds = %39, %35
  %44 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %45 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %46 = call i32 @VTBALLOON_MTX(%struct.vtballoon_softc* %45)
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @msleep(%struct.vtballoon_softc* %44, i32 %46, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %47)
  br label %12

49:                                               ; preds = %42, %34, %19
  %50 = load %struct.vtballoon_softc*, %struct.vtballoon_softc** %2, align 8
  %51 = call i32 @VTBALLOON_UNLOCK(%struct.vtballoon_softc* %50)
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @VTBALLOON_LOCK(%struct.vtballoon_softc*) #1

declare dso_local i64 @vtballoon_desired_size(%struct.vtballoon_softc*) #1

declare dso_local i32 @msleep(%struct.vtballoon_softc*, i32, i32, i8*, i32) #1

declare dso_local i32 @VTBALLOON_MTX(%struct.vtballoon_softc*) #1

declare dso_local i32 @VTBALLOON_UNLOCK(%struct.vtballoon_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
