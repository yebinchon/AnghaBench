; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_get_wol_settings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bnxt/extr_if_bnxt.c_bnxt_get_wol_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt_softc = type { i32 }

@BNXT_NO_MORE_WOL_FILTERS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnxt_softc*)* @bnxt_get_wol_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnxt_get_wol_settings(%struct.bnxt_softc* %0) #0 {
  %2 = alloca %struct.bnxt_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.bnxt_softc* %0, %struct.bnxt_softc** %2, align 8
  store i64 0, i64* %3, align 8
  %4 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %5 = call i32 @bnxt_wol_supported(%struct.bnxt_softc* %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %22

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %20, %8
  %10 = load %struct.bnxt_softc*, %struct.bnxt_softc** %2, align 8
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @bnxt_hwrm_get_wol_fltrs(%struct.bnxt_softc* %10, i64 %11)
  store i64 %12, i64* %3, align 8
  br label %13

13:                                               ; preds = %9
  %14 = load i64, i64* %3, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %13
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @BNXT_NO_MORE_WOL_FILTERS, align 8
  %19 = icmp ne i64 %17, %18
  br label %20

20:                                               ; preds = %16, %13
  %21 = phi i1 [ false, %13 ], [ %19, %16 ]
  br i1 %21, label %9, label %22

22:                                               ; preds = %7, %20
  ret void
}

declare dso_local i32 @bnxt_wol_supported(%struct.bnxt_softc*) #1

declare dso_local i64 @bnxt_hwrm_get_wol_fltrs(%struct.bnxt_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
