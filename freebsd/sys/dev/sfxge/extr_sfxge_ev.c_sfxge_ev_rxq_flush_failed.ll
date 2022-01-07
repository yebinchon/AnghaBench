; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_rxq_flush_failed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_rxq_flush_failed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_evq = type { i64, i32, %struct.sfxge_softc* }
%struct.sfxge_softc = type { %struct.sfxge_evq**, %struct.sfxge_rxq** }
%struct.sfxge_rxq = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"rxq == NULL\00", align 1
@SFXGE_SW_EV_RX_QFLUSH_FAILED = common dso_local global i32 0, align 4
@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"evq not started\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64)* @sfxge_ev_rxq_flush_failed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfxge_ev_rxq_flush_failed(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sfxge_evq*, align 8
  %6 = alloca %struct.sfxge_softc*, align 8
  %7 = alloca %struct.sfxge_rxq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i8*, i8** %3, align 8
  %11 = bitcast i8* %10 to %struct.sfxge_evq*
  store %struct.sfxge_evq* %11, %struct.sfxge_evq** %5, align 8
  %12 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %13 = call i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq* %12)
  %14 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %15 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %14, i32 0, i32 2
  %16 = load %struct.sfxge_softc*, %struct.sfxge_softc** %15, align 8
  store %struct.sfxge_softc* %16, %struct.sfxge_softc** %6, align 8
  %17 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %18 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %17, i32 0, i32 1
  %19 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %18, align 8
  %20 = load i64, i64* %4, align 8
  %21 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %19, i64 %20
  %22 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %21, align 8
  store %struct.sfxge_rxq* %22, %struct.sfxge_rxq** %7, align 8
  %23 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %7, align 8
  %24 = icmp ne %struct.sfxge_rxq* %23, null
  %25 = zext i1 %24 to i32
  %26 = call i32 @KASSERT(i32 %25, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %7, align 8
  %28 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %8, align 4
  %30 = load %struct.sfxge_softc*, %struct.sfxge_softc** %6, align 8
  %31 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %30, i32 0, i32 0
  %32 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %32, i64 %34
  %36 = load %struct.sfxge_evq*, %struct.sfxge_evq** %35, align 8
  store %struct.sfxge_evq* %36, %struct.sfxge_evq** %5, align 8
  %37 = load i32, i32* @SFXGE_SW_EV_RX_QFLUSH_FAILED, align 4
  %38 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %7, align 8
  %39 = call i32 @sfxge_sw_ev_rxq_magic(i32 %37, %struct.sfxge_rxq* %38)
  store i32 %39, i32* %9, align 4
  %40 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %41 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @KASSERT(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %48 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @efx_ev_qpost(i32 %49, i32 %50)
  %52 = load i32, i32* @B_FALSE, align 4
  ret i32 %52
}

declare dso_local i32 @SFXGE_EVQ_LOCK_ASSERT_OWNED(%struct.sfxge_evq*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_sw_ev_rxq_magic(i32, %struct.sfxge_rxq*) #1

declare dso_local i32 @efx_ev_qpost(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
