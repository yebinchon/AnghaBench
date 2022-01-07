; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_unbind_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_nvidia.c_agp_nvidia_unbind_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_nvidia_softc = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64* }

@AGP_PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @agp_nvidia_unbind_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_nvidia_unbind_page(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.agp_nvidia_softc*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = call %struct.agp_nvidia_softc* @device_get_softc(i32 %8)
  store %struct.agp_nvidia_softc* %9, %struct.agp_nvidia_softc** %6, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %6, align 8
  %12 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @AGP_PAGE_SHIFT, align 8
  %17 = shl i64 %15, %16
  %18 = icmp uge i64 %10, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %6, align 8
  %23 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %5, align 8
  %26 = add i64 %24, %25
  %27 = load i64, i64* @AGP_PAGE_SHIFT, align 8
  %28 = lshr i64 %26, %27
  store i64 %28, i64* %7, align 8
  %29 = load %struct.agp_nvidia_softc*, %struct.agp_nvidia_softc** %6, align 8
  %30 = getelementptr inbounds %struct.agp_nvidia_softc, %struct.agp_nvidia_softc* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %7, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  store i64 0, i64* %35, align 8
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %21, %19
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.agp_nvidia_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
