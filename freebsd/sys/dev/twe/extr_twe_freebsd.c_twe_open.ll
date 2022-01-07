; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i64 }
%struct.thread = type { i32 }
%struct.twe_softc = type { i32 }

@TWE_STATE_DETACHING = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@TWE_STATE_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, i32, %struct.thread*)* @twe_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_open(%struct.cdev* %0, i32 %1, i32 %2, %struct.thread* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cdev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.thread*, align 8
  %10 = alloca %struct.twe_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.thread* %3, %struct.thread** %9, align 8
  %11 = load %struct.cdev*, %struct.cdev** %6, align 8
  %12 = getelementptr inbounds %struct.cdev, %struct.cdev* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.twe_softc*
  store %struct.twe_softc* %14, %struct.twe_softc** %10, align 8
  %15 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %16 = call i32 @TWE_IO_LOCK(%struct.twe_softc* %15)
  %17 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %18 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @TWE_STATE_DETACHING, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %4
  %24 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %25 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %24)
  %26 = load i32, i32* @ENXIO, align 4
  store i32 %26, i32* %5, align 4
  br label %35

27:                                               ; preds = %4
  %28 = load i32, i32* @TWE_STATE_OPEN, align 4
  %29 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %30 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load %struct.twe_softc*, %struct.twe_softc** %10, align 8
  %34 = call i32 @TWE_IO_UNLOCK(%struct.twe_softc* %33)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %27, %23
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @TWE_IO_LOCK(%struct.twe_softc*) #1

declare dso_local i32 @TWE_IO_UNLOCK(%struct.twe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
