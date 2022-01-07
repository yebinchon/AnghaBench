; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_detect_max_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_intel.c_intel_ntb_detect_max_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_softc = type { i64, i32 }

@NTB_ATOM = common dso_local global i64 0, align 8
@ATOM_MW_COUNT = common dso_local global i32 0, align 4
@NTB_SPLIT_BAR = common dso_local global i32 0, align 4
@XEON_HSX_SPLIT_MW_COUNT = common dso_local global i32 0, align 4
@XEON_SNB_MW_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ntb_softc*)* @intel_ntb_detect_max_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @intel_ntb_detect_max_mw(%struct.ntb_softc* %0) #0 {
  %2 = alloca %struct.ntb_softc*, align 8
  store %struct.ntb_softc* %0, %struct.ntb_softc** %2, align 8
  %3 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %4 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @NTB_ATOM, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %1
  %9 = load i32, i32* @ATOM_MW_COUNT, align 4
  %10 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %14 = load i32, i32* @NTB_SPLIT_BAR, align 4
  %15 = call i64 @HAS_FEATURE(%struct.ntb_softc* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load i32, i32* @XEON_HSX_SPLIT_MW_COUNT, align 4
  %19 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %20 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %25

21:                                               ; preds = %12
  %22 = load i32, i32* @XEON_SNB_MW_COUNT, align 4
  %23 = load %struct.ntb_softc*, %struct.ntb_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ntb_softc, %struct.ntb_softc* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  br label %25

25:                                               ; preds = %8, %21, %17
  ret void
}

declare dso_local i64 @HAS_FEATURE(%struct.ntb_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
