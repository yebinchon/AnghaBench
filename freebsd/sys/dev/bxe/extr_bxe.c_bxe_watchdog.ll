; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }
%struct.bxe_fastpath = type { i64, i32 }

@.str = private unnamed_addr constant [45 x i8] c"TX watchdog timeout on fp[%02d], resetting!\0A\00", align 1
@BXE_ERR_TXQ_STUCK = common dso_local global i32 0, align 4
@taskqueue_thread = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, %struct.bxe_fastpath*)* @bxe_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_watchdog(%struct.bxe_softc* %0, %struct.bxe_fastpath* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca %struct.bxe_fastpath*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store %struct.bxe_fastpath* %1, %struct.bxe_fastpath** %5, align 8
  %6 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %7 = call i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath* %6)
  %8 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %9 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %14 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %14, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12, %2
  %19 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %20 = call i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath* %19)
  store i32 0, i32* %3, align 4
  br label %38

21:                                               ; preds = %12
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %24 = getelementptr inbounds %struct.bxe_fastpath, %struct.bxe_fastpath* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @BLOGE(%struct.bxe_softc* %22, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load %struct.bxe_fastpath*, %struct.bxe_fastpath** %5, align 8
  %28 = call i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath* %27)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %30 = load i32, i32* @BXE_ERR_TXQ_STUCK, align 4
  %31 = call i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc* %29, i32 %30)
  %32 = load i32, i32* @taskqueue_thread, align 4
  %33 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %34 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %33, i32 0, i32 0
  %35 = load i32, i32* @hz, align 4
  %36 = sdiv i32 %35, 10
  %37 = call i32 @taskqueue_enqueue_timeout(i32 %32, i32* %34, i32 %36)
  store i32 -1, i32* %3, align 4
  br label %38

38:                                               ; preds = %21, %18
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @BXE_FP_TX_LOCK(%struct.bxe_fastpath*) #1

declare dso_local i32 @BXE_FP_TX_UNLOCK(%struct.bxe_fastpath*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @BXE_SET_ERROR_BIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @taskqueue_enqueue_timeout(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
