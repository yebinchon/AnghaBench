; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qfini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sfxge/extr_sfxge_rx.c_sfxge_rx_qfini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfxge_softc = type { %struct.sfxge_rxq** }
%struct.sfxge_rxq = type { i64, i32, %struct.sfxge_rxq* }

@SFXGE_RXQ_INITIALIZED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"rxq->init_state != SFXGE_RXQ_INITIALIZED\00", align 1
@M_SFXGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfxge_softc*, i32)* @sfxge_rx_qfini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfxge_rx_qfini(%struct.sfxge_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.sfxge_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sfxge_rxq*, align 8
  store %struct.sfxge_softc* %0, %struct.sfxge_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %6, i32 0, i32 0
  %8 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %7, align 8
  %9 = load i32, i32* %4, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %8, i64 %10
  %12 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %11, align 8
  store %struct.sfxge_rxq* %12, %struct.sfxge_rxq** %5, align 8
  %13 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %14 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SFXGE_RXQ_INITIALIZED, align 8
  %17 = icmp eq i64 %15, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %21 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %20, i32 0, i32 2
  %22 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %21, align 8
  %23 = load i32, i32* @M_SFXGE, align 4
  %24 = call i32 @free(%struct.sfxge_rxq* %22, i32 %23)
  %25 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %26 = call i32 @sfxge_lro_fini(%struct.sfxge_rxq* %25)
  %27 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %28 = getelementptr inbounds %struct.sfxge_rxq, %struct.sfxge_rxq* %27, i32 0, i32 1
  %29 = call i32 @sfxge_dma_free(i32* %28)
  %30 = load %struct.sfxge_softc*, %struct.sfxge_softc** %3, align 8
  %31 = getelementptr inbounds %struct.sfxge_softc, %struct.sfxge_softc* %30, i32 0, i32 0
  %32 = load %struct.sfxge_rxq**, %struct.sfxge_rxq*** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.sfxge_rxq*, %struct.sfxge_rxq** %32, i64 %34
  store %struct.sfxge_rxq* null, %struct.sfxge_rxq** %35, align 8
  %36 = load %struct.sfxge_rxq*, %struct.sfxge_rxq** %5, align 8
  %37 = load i32, i32* @M_SFXGE, align 4
  %38 = call i32 @free(%struct.sfxge_rxq* %36, i32 %37)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @free(%struct.sfxge_rxq*, i32) #1

declare dso_local i32 @sfxge_lro_fini(%struct.sfxge_rxq*) #1

declare dso_local i32 @sfxge_dma_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
