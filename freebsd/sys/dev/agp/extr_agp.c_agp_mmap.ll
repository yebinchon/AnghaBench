; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_mmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp.c_agp_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { i32 }
%struct.agp_softc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i64, i64*, i32, i32*)* @agp_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_mmap(%struct.cdev* %0, i64 %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.agp_softc*, align 8
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64* %2, i64** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %14 = load %struct.cdev*, %struct.cdev** %7, align 8
  %15 = getelementptr inbounds %struct.cdev, %struct.cdev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call %struct.agp_softc* @device_get_softc(i32 %17)
  store %struct.agp_softc* %18, %struct.agp_softc** %13, align 8
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %12, align 4
  %21 = call i64 @AGP_GET_APERTURE(i32 %20)
  %22 = icmp sgt i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %38

24:                                               ; preds = %5
  %25 = load %struct.agp_softc*, %struct.agp_softc** %13, align 8
  %26 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 -1, i32* %6, align 4
  br label %38

30:                                               ; preds = %24
  %31 = load %struct.agp_softc*, %struct.agp_softc** %13, align 8
  %32 = getelementptr inbounds %struct.agp_softc, %struct.agp_softc* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = call i64 @rman_get_start(i32* %33)
  %35 = load i64, i64* %8, align 8
  %36 = add nsw i64 %34, %35
  %37 = load i64*, i64** %9, align 8
  store i64 %36, i64* %37, align 8
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %30, %29, %23
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.agp_softc* @device_get_softc(i32) #1

declare dso_local i64 @AGP_GET_APERTURE(i32) #1

declare dso_local i64 @rman_get_start(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
