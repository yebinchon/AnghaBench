; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_txq_flush_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_txq_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64, i64, i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.sfxge_evq**, %struct.sfxge_txq** }
%struct.sfxge_txq = type { i64, i64 }

@.str = private unnamed_addr constant [12 x i8] c"txq == NULL\00", align 1
@SFXGE_TXQ_INITIALIZED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"txq not initialized\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@SFXGE_SW_EV_TX_QFLUSH_DONE = common dso_local global i32 0, align 4
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"evq not started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @sfxge_ev_txq_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_txq_flush_done(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sfxge_evq*, align 8
  %7 = alloca %struct.sfxge_softc*, align 8
  %8 = alloca %struct.sfxge_txq*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %11, %struct.sfxge_evq** %6, align 8
  %12 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %13 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %12)
  %14 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %15 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %14, i32 0, i32 3
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %15, align 8
  store %struct.sfxge_softc* %16, %struct.sfxge_softc** %7, align 8
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %7, align 8
  %18 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %17, i32 0, i32 1
  %19 = load %struct.sfxge_txq**, %struct.sfxge_txq*** %18, align 8
  %20 = load i64, i64* %5, align 8
  %21 = getelementptr inbounds %struct.sfxge_txq*, %struct.sfxge_txq** %19, i64 %20
  %22 = load %struct.sfxge_txq*, %struct.sfxge_txq** %21, align 8
  store %struct.sfxge_txq* %22, %struct.sfxge_txq** %8, align 8
  %23 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %24 = icmp ne %struct.sfxge_txq* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %28 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @SFXGE_TXQ_INITIALIZED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i32 @KASSERT(i32 %32, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %35 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %38 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %43 = call i32 @sfxge_tx_qflush_done(%struct.sfxge_txq* %42)
  %44 = load i32, i32* @B_FALSE, align 4
  store i32 %44, i32* %3, align 4
  br label %70

45:                                               ; preds = %2
  %46 = load %struct.sfxge_softc*, %struct.sfxge_softc** %7, align 8
  %47 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %46, i32 0, i32 0
  %48 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %47, align 8
  %49 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %50 = getelementptr inbounds %struct.sfxge_txq, %struct.sfxge_txq* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %48, i64 %51
  %53 = load %struct.sfxge_evq*, %struct.sfxge_evq** %52, align 8
  store %struct.sfxge_evq* %53, %struct.sfxge_evq** %6, align 8
  %54 = load i32, i32* @SFXGE_SW_EV_TX_QFLUSH_DONE, align 4
  %55 = load %struct.sfxge_txq*, %struct.sfxge_txq** %8, align 8
  %56 = call i32 @sfxge_sw_ev_txq_magic(i32 %54, %struct.sfxge_txq* %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %58 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @KASSERT(i32 %62, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %65 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @efx_ev_qpost(i32 %66, i32 %67)
  %69 = load i32, i32* @B_FALSE, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %45, %41
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_tx_qflush_done(%struct.sfxge_txq*) #1

declare dso_local i32 @sfxge_sw_ev_txq_magic(i32, %struct.sfxge_txq*) #1

declare dso_local i32 @efx_ev_qpost(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
