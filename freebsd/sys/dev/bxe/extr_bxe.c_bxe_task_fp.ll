; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_task_fp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_task_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { i32, i32, i32, i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"---> FP TASK ISR (%d) <---\0A\00", align 1
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_fastpath*)* @bxe_task_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_task_fp(%struct.bxe_fastpath* %0) #0 {
  %2 = alloca %struct.bxe_fastpath*, align 8
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.bxe_fastpath* %0, %struct.bxe_fastpath** %2, align 8
  %6 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %7 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %6, i32 0, i32 5
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  store %struct.bxe_softc* %8, %struct.bxe_softc** %3, align 8
  %9 = load i64, i64* @FALSE, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* @FALSE, align 8
  store i64 %10, i64* %5, align 8
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %12 = load i32, i32* @DBG_INTR, align 4
  %13 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %14 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @BLOGD(%struct.bxe_softc* %11, i32 %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %18 = call i32 @bxe_update_fp_sb_idx(%struct.bxe_fastpath* %17)
  %19 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %20 = call i64 @bxe_has_tx_work(%struct.bxe_fastpath* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %1
  %23 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %24 = call i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath* %23)
  %25 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %26 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %27 = call i64 @bxe_txeof(%struct.bxe_softc* %25, %struct.bxe_fastpath* %26)
  store i64 %27, i64* %4, align 8
  %28 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %29 = call i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath* %28)
  br label %30

30:                                               ; preds = %22, %1
  %31 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %32 = call i64 @bxe_has_rx_work(%struct.bxe_fastpath* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %36 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %37 = call i64 @bxe_rxeof(%struct.bxe_softc* %35, %struct.bxe_fastpath* %36)
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i64, i64* %5, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %38
  %42 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %43 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %46 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %45, i32 0, i32 2
  %47 = call i32 @taskqueue_enqueue(i32 %44, i32* %46)
  br label %60

48:                                               ; preds = %38
  %49 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %50 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %51 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @USTORM_ID, align 4
  %54 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %2, align 8
  %55 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @le16toh(i32 %56)
  %58 = load i32, i32* @IGU_INT_ENABLE, align 4
  %59 = call i32 @bxe_ack_sb(%struct.bxe_softc* %49, i32 %52, i32 %53, i32 %57, i32 %58, i32 1)
  br label %60

60:                                               ; preds = %48, %41
  ret void
}

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32) #1

declare dso_local i32 @bxe_update_fp_sb_idx(%struct.bxe_fastpath*) #1

declare dso_local i64 @bxe_has_tx_work(%struct.bxe_fastpath*) #1

declare dso_local i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath*) #1

declare dso_local i64 @bxe_txeof(%struct.bxe_softc*, %struct.bxe_fastpath*) #1

declare dso_local i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath*) #1

declare dso_local i64 @bxe_has_rx_work(%struct.bxe_fastpath*) #1

declare dso_local i64 @bxe_rxeof(%struct.bxe_softc*, %struct.bxe_fastpath*) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

declare dso_local i32 @bxe_ack_sb(%struct.bxe_softc*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16toh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
