; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_clear_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bfe/extr_if_bfe.c_bfe_clear_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfe_softc = type { i32 }

@BFE_MIB_CTRL = common dso_local global i32 0, align 4
@BFE_MIB_CLR_ON_READ = common dso_local global i32 0, align 4
@BFE_TX_GOOD_O = common dso_local global i64 0, align 8
@BFE_TX_PAUSE = common dso_local global i64 0, align 8
@BFE_RX_GOOD_O = common dso_local global i64 0, align 8
@BFE_RX_NPAUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfe_softc*)* @bfe_clear_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfe_clear_stats(%struct.bfe_softc* %0) #0 {
  %2 = alloca %struct.bfe_softc*, align 8
  %3 = alloca i64, align 8
  store %struct.bfe_softc* %0, %struct.bfe_softc** %2, align 8
  %4 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %5 = call i32 @BFE_LOCK_ASSERT(%struct.bfe_softc* %4)
  %6 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %7 = load i32, i32* @BFE_MIB_CTRL, align 4
  %8 = load i32, i32* @BFE_MIB_CLR_ON_READ, align 4
  %9 = call i32 @CSR_WRITE_4(%struct.bfe_softc* %6, i32 %7, i32 %8)
  %10 = load i64, i64* @BFE_TX_GOOD_O, align 8
  store i64 %10, i64* %3, align 8
  br label %11

11:                                               ; preds = %19, %1
  %12 = load i64, i64* %3, align 8
  %13 = load i64, i64* @BFE_TX_PAUSE, align 8
  %14 = icmp sle i64 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %11
  %16 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @CSR_READ_4(%struct.bfe_softc* %16, i64 %17)
  br label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %3, align 8
  %21 = add nsw i64 %20, 4
  store i64 %21, i64* %3, align 8
  br label %11

22:                                               ; preds = %11
  %23 = load i64, i64* @BFE_RX_GOOD_O, align 8
  store i64 %23, i64* %3, align 8
  br label %24

24:                                               ; preds = %32, %22
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* @BFE_RX_NPAUSE, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %24
  %29 = load %struct.bfe_softc*, %struct.bfe_softc** %2, align 8
  %30 = load i64, i64* %3, align 8
  %31 = call i32 @CSR_READ_4(%struct.bfe_softc* %29, i64 %30)
  br label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %3, align 8
  %34 = add nsw i64 %33, 4
  store i64 %34, i64* %3, align 8
  br label %24

35:                                               ; preds = %24
  ret void
}

declare dso_local i32 @BFE_LOCK_ASSERT(%struct.bfe_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bfe_softc*, i32, i32) #1

declare dso_local i32 @CSR_READ_4(%struct.bfe_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
