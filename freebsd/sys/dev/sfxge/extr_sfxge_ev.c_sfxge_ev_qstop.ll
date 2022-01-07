; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qstop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qstop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { i32, %struct.sfxge_evq** }
%struct.sfxge_evq = type { i64, i32, i32, i32, i32, i32, i64 }

@SFXGE_EVQ_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"evq->init_state != SFXGE_EVQ_STARTED\00", align 1
@SFXGE_EVQ_INITIALIZED = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*, i32)* @sfxge_ev_qstop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_ev_qstop(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_evq*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %6, i32 0, i32 1
  %8 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %8, i64 %10
  %12 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  store %struct.sfxge_evq* %12, %struct.sfxge_evq** %5, align 8
  %13 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %14 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SFXGE_EVQ_STARTED, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %21 = call i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq* %20)
  %22 = load i64, i64* @SFXGE_EVQ_INITIALIZED, align 8
  %23 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %24 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %23, i32 0, i32 0
  store i64 %22, i64* %24, align 8
  %25 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %26 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %25, i32 0, i32 6
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @B_FALSE, align 4
  %28 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %29 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %28, i32 0, i32 5
  store i32 %27, i32* %29, align 8
  %30 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %31 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @efx_ev_qdestroy(i32 %32)
  %34 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %35 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %38 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %41 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @EFX_EVQ_NBUFS(i32 %42)
  %44 = call i32 @efx_sram_buf_tbl_clear(i32 %36, i32 %39, i32 %43)
  %45 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %46 = call i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq* %45)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @SFXGE_EVQ_LOCK(%struct.sfxge_evq*) #1

declare dso_local i32 @efx_ev_qdestroy(i32) #1

declare dso_local i32 @efx_sram_buf_tbl_clear(i32, i32, i32) #1

declare dso_local i32 @EFX_EVQ_NBUFS(i32) #1

declare dso_local i32 @SFXGE_EVQ_UNLOCK(%struct.sfxge_evq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
