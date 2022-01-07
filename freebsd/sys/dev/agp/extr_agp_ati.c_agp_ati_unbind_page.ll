; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_unbind_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/agp/extr_agp_ati.c_agp_ati_unbind_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_ati_softc = type { i64, i64* }

@AGP_PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64)* @agp_ati_unbind_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @agp_ati_unbind_page(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.agp_ati_softc*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = call %struct.agp_ati_softc* @device_get_softc(i32 %7)
  store %struct.agp_ati_softc* %8, %struct.agp_ati_softc** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %6, align 8
  %11 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AGP_PAGE_SHIFT, align 8
  %14 = shl i64 %12, %13
  %15 = icmp uge i64 %9, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %2
  %19 = load %struct.agp_ati_softc*, %struct.agp_ati_softc** %6, align 8
  %20 = getelementptr inbounds %struct.agp_ati_softc, %struct.agp_ati_softc* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @AGP_PAGE_SHIFT, align 8
  %24 = lshr i64 %22, %23
  %25 = getelementptr inbounds i64, i64* %21, i64 %24
  store i64 0, i64* %25, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %18, %16
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.agp_ati_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
