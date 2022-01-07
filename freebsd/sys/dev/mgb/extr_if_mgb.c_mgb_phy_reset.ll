; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_phy_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_phy_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32 }

@MGB_PMT_CTL = common dso_local global i32 0, align 4
@MGB_PHY_RESET = common dso_local global i32 0, align 4
@MGB_STS_TIMEOUT = common dso_local global i64 0, align 8
@MGB_PHY_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mgb_softc*)* @mgb_phy_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_phy_reset(%struct.mgb_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mgb_softc*, align 8
  store %struct.mgb_softc* %0, %struct.mgb_softc** %3, align 8
  %4 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %5 = load i32, i32* @MGB_PMT_CTL, align 4
  %6 = load i32, i32* @MGB_PHY_RESET, align 4
  %7 = call i32 @CSR_UPDATE_BYTE(%struct.mgb_softc* %4, i32 %5, i32 %6)
  %8 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %9 = load i32, i32* @MGB_PMT_CTL, align 4
  %10 = load i32, i32* @MGB_PHY_RESET, align 4
  %11 = call i32 @mgb_wait_for_bits(%struct.mgb_softc* %8, i32 %9, i32 0, i32 %10)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @MGB_STS_TIMEOUT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i64, i64* @MGB_STS_TIMEOUT, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %2, align 4
  br label %23

18:                                               ; preds = %1
  %19 = load %struct.mgb_softc*, %struct.mgb_softc** %3, align 8
  %20 = load i32, i32* @MGB_PMT_CTL, align 4
  %21 = load i32, i32* @MGB_PHY_READY, align 4
  %22 = call i32 @mgb_wait_for_bits(%struct.mgb_softc* %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %18, %15
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @CSR_UPDATE_BYTE(%struct.mgb_softc*, i32, i32) #1

declare dso_local i32 @mgb_wait_for_bits(%struct.mgb_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
