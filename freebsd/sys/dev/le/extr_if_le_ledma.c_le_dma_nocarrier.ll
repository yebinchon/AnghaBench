; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_nocarrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/le/extr_if_le_ledma.c_le_dma_nocarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lance_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.le_dma_softc = type { i32 }

@E_TP_AUI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"lost carrier on UTP port, switching to AUI port\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"lost carrier on AUI port, switching to UTP port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lance_softc*)* @le_dma_nocarrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @le_dma_nocarrier(%struct.lance_softc* %0) #0 {
  %2 = alloca %struct.lance_softc*, align 8
  %3 = alloca %struct.le_dma_softc*, align 8
  store %struct.lance_softc* %0, %struct.lance_softc** %2, align 8
  %4 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %5 = bitcast %struct.lance_softc* %4 to %struct.le_dma_softc*
  store %struct.le_dma_softc* %5, %struct.le_dma_softc** %3, align 8
  %6 = load %struct.le_dma_softc*, %struct.le_dma_softc** %3, align 8
  %7 = getelementptr inbounds %struct.le_dma_softc, %struct.le_dma_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @L64854_GCSR(i32 %8)
  %10 = load i32, i32* @E_TP_AUI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %1
  %14 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %15 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IFM_SUBTYPE(i32 %17)
  switch i32 %18, label %26 [
    i32 130, label %19
    i32 128, label %19
  ]

19:                                               ; preds = %13, %13
  %20 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %21 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @if_printf(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %25 = call i32 @le_dma_setaui(%struct.lance_softc* %24)
  br label %26

26:                                               ; preds = %19, %13
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %29 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @IFM_SUBTYPE(i32 %31)
  switch i32 %32, label %40 [
    i32 129, label %33
    i32 128, label %33
  ]

33:                                               ; preds = %27, %27
  %34 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %35 = getelementptr inbounds %struct.lance_softc, %struct.lance_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @if_printf(i32 %36, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.lance_softc*, %struct.lance_softc** %2, align 8
  %39 = call i32 @le_dma_setutp(%struct.lance_softc* %38)
  br label %40

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %40, %26
  ret void
}

declare dso_local i32 @L64854_GCSR(i32) #1

declare dso_local i32 @IFM_SUBTYPE(i32) #1

declare dso_local i32 @if_printf(i32, i8*) #1

declare dso_local i32 @le_dma_setaui(%struct.lance_softc*) #1

declare dso_local i32 @le_dma_setutp(%struct.lance_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
