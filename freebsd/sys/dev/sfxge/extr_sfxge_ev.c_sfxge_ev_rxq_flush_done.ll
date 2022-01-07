; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_rxq_flush_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_rxq_flush_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i32, i64, i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.sfxge_evq**, %struct.sfxge_rxq** }
%struct.sfxge_rxq = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"rxq == NULL\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@SFXGE_SW_EV_RX_QFLUSH_DONE = common dso_local global i32 0, align 4
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"evq not started\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @sfxge_ev_rxq_flush_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_rxq_flush_done(i8* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.sfxge_evq*, align 8
  %7 = alloca %struct.sfxge_softc*, align 8
  %8 = alloca %struct.sfxge_rxq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %12, %struct.sfxge_evq** %6, align 8
  %13 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %14 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %13)
  %15 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %16 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %15, i32 0, i32 3
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %16, align 8
  store %struct.sfxge_softc* %17, %struct.sfxge_softc** %7, align 8
  %18 = load %struct.sfxge_softc*, %struct.sfxge_softc** %7, align 8
  %19 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %18, i32 0, i32 1
  %20 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %20, i64 %21
  %23 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %22, align 8
  store %struct.sfxge_rxq* %23, %struct.sfxge_rxq** %8, align 8
  %24 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %8, align 8
  %25 = icmp ne %struct.sfxge_rxq* %24, null
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %8, align 8
  %29 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %33 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %2
  %37 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %8, align 8
  %38 = call i32 @sfxge_rx_qflush_done(%struct.sfxge_rxq* %37)
  %39 = load i32, i32* @B_FALSE, align 4
  store i32 %39, i32* %3, align 4
  br label %64

40:                                               ; preds = %2
  %41 = load %struct.sfxge_softc*, %struct.sfxge_softc** %7, align 8
  %42 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %41, i32 0, i32 0
  %43 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %43, i64 %45
  %47 = load %struct.sfxge_evq*, %struct.sfxge_evq** %46, align 8
  store %struct.sfxge_evq* %47, %struct.sfxge_evq** %6, align 8
  %48 = load i32, i32* @SFXGE_SW_EV_RX_QFLUSH_DONE, align 4
  %49 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %8, align 8
  %50 = call i32 @sfxge_sw_ev_rxq_magic(i32 %48, %struct.sfxge_rxq* %49)
  store i32 %50, i32* %10, align 4
  %51 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %52 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @KASSERT(i32 %56, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.sfxge_evq*, %struct.sfxge_evq** %6, align 8
  %59 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @efx_ev_qpost(i32 %60, i32 %61)
  %63 = load i32, i32* @B_FALSE, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %40, %36
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_rx_qflush_done(%struct.sfxge_rxq*) #1

declare dso_local i32 @sfxge_sw_ev_rxq_magic(i32, %struct.sfxge_rxq*) #1

declare dso_local i32 @efx_ev_qpost(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
