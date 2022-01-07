; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_supmediastatus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_supmediastatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32 }
%struct.ifmediareq = type { i8* }
%struct.lsi64854_softc = type { i32 }
%struct.le_dma_softc = type { %struct.lsi64854_softc* }

@E_TP_AUI = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IFM_10_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*, %struct.ifmediareq*)* @le_dma_supmediastatus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_dma_supmediastatus(%struct.lance_softc* %0, %struct.ifmediareq* %1) #0 {
  %3 = alloca %struct.lance_softc*, align 8
  %4 = alloca %struct.ifmediareq*, align 8
  %5 = alloca %struct.lsi64854_softc*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %3, align 8
  store %struct.ifmediareq* %1, %struct.ifmediareq** %4, align 8
  %6 = load %struct.lance_softc*, %struct.lance_softc** %3, align 8
  %7 = bitcast %struct.lance_softc* %6 to %struct.le_dma_softc*
  %8 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %7, i32 0, i32 0
  %9 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %8, align 8
  store %struct.lsi64854_softc* %9, %struct.lsi64854_softc** %5, align 8
  %10 = load %struct.lsi64854_softc*, %struct.lsi64854_softc** %5, align 8
  %11 = call i32 @L64854_GCSR(%struct.lsi64854_softc* %10)
  %12 = load i32, i32* @E_TP_AUI, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %2
  %16 = load i32, i32* @IFM_ETHER, align 4
  %17 = load i32, i32* @IFM_10_T, align 4
  %18 = call i8* @IFM_MAKEWORD(i32 %16, i32 %17, i32 0, i32 0)
  %19 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %20 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %19, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  br label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @IFM_ETHER, align 4
  %23 = load i32, i32* @IFM_10_5, align 4
  %24 = call i8* @IFM_MAKEWORD(i32 %22, i32 %23, i32 0, i32 0)
  %25 = load %struct.ifmediareq*, %struct.ifmediareq** %4, align 8
  %26 = getelementptr inbounds %struct.ifmediareq, %struct.ifmediareq* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  br label %27

27:                                               ; preds = %21, %15
  ret void
}

declare dso_local i32 @L64854_GCSR(%struct.lsi64854_softc*) #1

declare dso_local i8* @IFM_MAKEWORD(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
