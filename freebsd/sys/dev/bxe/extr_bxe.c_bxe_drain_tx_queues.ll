; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_drain_tx_queues.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_drain_tx_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.bxe_fastpath* }
%struct.bxe_fastpath = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Timeout waiting for fp[%d] transmits to complete!\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"tx drain failure\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_drain_tx_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_drain_tx_queues(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.bxe_fastpath*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %45, %1
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp slt i32 %7, %10
  br i1 %11, label %12, label %48

12:                                               ; preds = %6
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %14 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %13, i32 0, i32 1
  %15 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %15, i64 %17
  store %struct.bxe_fastpath* %18, %struct.bxe_fastpath** %3, align 8
  store i32 1000, i32* %5, align 4
  br label %19

19:                                               ; preds = %39, %12
  %20 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %21 = call i64 @bxe_has_tx_work(%struct.bxe_fastpath* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %44

23:                                               ; preds = %19
  %24 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %25 = call i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath* %24)
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %28 = call i32 @bxe_txeof(%struct.bxe_softc* %26, %struct.bxe_fastpath* %27)
  %29 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %3, align 8
  %30 = call i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath* %29)
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %23
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @BLOGE(%struct.bxe_softc* %34, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %38 = call i32 @bxe_panic(%struct.bxe_softc* %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %49

39:                                               ; preds = %23
  %40 = load i32, i32* %5, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %5, align 4
  %42 = call i32 @DELAY(i32 1000)
  %43 = call i32 (...) @rmb()
  br label %19

44:                                               ; preds = %19
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %6

48:                                               ; preds = %6
  br label %49

49:                                               ; preds = %48, %33
  ret void
}

declare dso_local i64 @bxe_has_tx_work(%struct.bxe_fastpath*) #1

declare dso_local i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath*) #1

declare dso_local i32 @bxe_txeof(%struct.bxe_softc*, %struct.bxe_fastpath*) #1

declare dso_local i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @bxe_panic(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @rmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
