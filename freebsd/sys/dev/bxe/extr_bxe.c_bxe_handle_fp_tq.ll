; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_fp_tq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_handle_fp_tq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_fastpath = type { i32, i32, i32, i32, i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@DBG_INTR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"---> FP TASK QUEUE (%d) <---\0A\00", align 1
@USTORM_ID = common dso_local global i32 0, align 4
@IGU_INT_ENABLE = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bxe_handle_fp_tq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_handle_fp_tq(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_fastpath*, align 8
  %6 = alloca %struct.bxe_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i8*, i8** %3, align 8
  %10 = bitcast i8* %9 to %struct.bxe_fastpath*
  store %struct.bxe_fastpath* %10, %struct.bxe_fastpath** %5, align 8
  %11 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %12 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %11, i32 0, i32 5
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %12, align 8
  store %struct.bxe_softc* %13, %struct.bxe_softc** %6, align 8
  %14 = load i64, i64* @FALSE, align 8
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* @FALSE, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %17 = load i32, i32* @DBG_INTR, align 4
  %18 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %19 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @BLOGD(%struct.bxe_softc* %16, i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %23 = call i32 @bxe_update_fp_sb_idx(%struct.bxe_fastpath* %22)
  %24 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %25 = call i64 @bxe_has_tx_work(%struct.bxe_fastpath* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %29 = call i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath* %28)
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %31 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %32 = call i64 @bxe_txeof(%struct.bxe_softc* %30, %struct.bxe_fastpath* %31)
  store i64 %32, i64* %7, align 8
  %33 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %34 = call i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath* %33)
  br label %35

35:                                               ; preds = %27, %2
  %36 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %37 = call i64 @bxe_has_rx_work(%struct.bxe_fastpath* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %41 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %42 = call i64 @bxe_rxeof(%struct.bxe_softc* %40, %struct.bxe_fastpath* %41)
  store i64 %42, i64* %8, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i64, i64* %8, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %48 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %51 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %50, i32 0, i32 2
  %52 = call i32 @taskqueue_enqueue(i32 %49, i32* %51)
  br label %65

53:                                               ; preds = %43
  %54 = load %struct.bxe_softc*, %struct.bxe_softc** %6, align 8
  %55 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %56 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @USTORM_ID, align 4
  %59 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %60 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @le16toh(i32 %61)
  %63 = load i32, i32* @IGU_INT_ENABLE, align 4
  %64 = call i32 @bxe_ack_sb(%struct.bxe_softc* %54, i32 %57, i32 %58, i32 %62, i32 %63, i32 1)
  br label %65

65:                                               ; preds = %53, %46
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
