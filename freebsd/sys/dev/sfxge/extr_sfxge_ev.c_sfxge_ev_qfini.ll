; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qfini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_ev.c_sfxge_ev_qfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_evq** }
%struct.sfxge_evq = type { i64, i32, i32, i32* }

@SFXGE_EVQ_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"evq->init_state != SFXGE_EVQ_INITIALIZED\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"evq->txqs != &evq->txq\00", align 1
@M_SFXGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*, i32)* @sfxge_ev_qfini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_ev_qfini(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_evq*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %6, i32 0, i32 0
  %8 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %8, i64 %10
  %12 = load %struct.sfxge_evq*, %struct.sfxge_evq** %11, align 8
  store %struct.sfxge_evq* %12, %struct.sfxge_evq** %5, align 8
  %13 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %14 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SFXGE_EVQ_INITIALIZED, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %21 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %24 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %23, i32 0, i32 2
  %25 = icmp eq i32* %22, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @KASSERT(i32 %26, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %29 = getelementptr inbounds %struct.sfxge_evq, %struct.sfxge_evq* %28, i32 0, i32 1
  %30 = call i32 @sfxge_dma_free(i32* %29)
  %31 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %31, i32 0, i32 0
  %33 = load %struct.sfxge_evq**, %struct.sfxge_evq*** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sfxge_evq*, %struct.sfxge_evq** %33, i64 %35
  store %struct.sfxge_evq* null, %struct.sfxge_evq** %36, align 8
  %37 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %38 = call i32 @SFXGE_EVQ_LOCK_DESTROY(%struct.sfxge_evq* %37)
  %39 = load %struct.sfxge_evq*, %struct.sfxge_evq** %5, align 8
  %40 = load i32, i32* @M_SFXGE, align 4
  %41 = call i32 @free(%struct.sfxge_evq* %39, i32 %40)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @sfxge_dma_free(i32*) #1

declare dso_local i32 @SFXGE_EVQ_LOCK_DESTROY(%struct.sfxge_evq*) #1

declare dso_local i32 @free(%struct.sfxge_evq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
