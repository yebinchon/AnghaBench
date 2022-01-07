; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_pool_rx_depleted.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec_rm.c_dtsec_rm_pool_rx_depleted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32 }

@DTSEC_RM_POOL_RX_HIGH_MARK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dtsec_softc*, i32)* @dtsec_rm_pool_rx_depleted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtsec_rm_pool_rx_depleted(%struct.dtsec_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.dtsec_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dtsec_softc*, align 8
  %6 = alloca i32, align 4
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.dtsec_softc*, %struct.dtsec_softc** %3, align 8
  store %struct.dtsec_softc* %7, %struct.dtsec_softc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %27

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %11, %21
  %13 = load %struct.dtsec_softc*, %struct.dtsec_softc** %5, align 8
  %14 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @bman_count(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @DTSEC_RM_POOL_RX_HIGH_MARK, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  br label %27

21:                                               ; preds = %12
  %22 = load %struct.dtsec_softc*, %struct.dtsec_softc** %5, align 8
  %23 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @DTSEC_RM_POOL_RX_HIGH_MARK, align 4
  %26 = call i32 @bman_pool_fill(i32 %24, i32 %25)
  br label %12

27:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32 @bman_count(i32) #1

declare dso_local i32 @bman_pool_fill(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
