; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_xdma_rx_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_xdma_rx_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32 }
%struct.atse_softc = type { i32, %struct.ifnet* }
%struct.ifnet = type { i32 (%struct.ifnet*, %struct.mbuf*)* }
%struct.mbuf = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.ifnet*, i32 }

@IFCOUNTER_IERRORS = common dso_local global i32 0, align 4
@ETHER_ALIGN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.TYPE_6__*)* @atse_xdma_rx_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_xdma_rx_intr(i8* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.atse_softc*, align 8
  %7 = alloca %struct.ifnet*, align 8
  %8 = alloca %struct.mbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.atse_softc*
  store %struct.atse_softc* %12, %struct.atse_softc** %6, align 8
  %13 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %14 = call i32 @ATSE_LOCK(%struct.atse_softc* %13)
  %15 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %16 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %15, i32 0, i32 1
  %17 = load %struct.ifnet*, %struct.ifnet** %16, align 8
  store %struct.ifnet* %17, %struct.ifnet** %7, align 8
  store i64 0, i64* %10, align 8
  br label %18

18:                                               ; preds = %38, %32, %2
  %19 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %20 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @xdma_dequeue_mbuf(i32 %21, %struct.mbuf** %8, %struct.TYPE_6__* %5)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %63

26:                                               ; preds = %18
  %27 = load i64, i64* %10, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %10, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %26
  %33 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %34 = load i32, i32* @IFCOUNTER_IERRORS, align 4
  %35 = call i32 @if_inc_counter(%struct.ifnet* %33, i32 %34, i32 1)
  %36 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %37 = call i32 @m_freem(%struct.mbuf* %36)
  br label %18

38:                                               ; preds = %26
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %42 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %44 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %40, i32* %45, align 8
  %46 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %47 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %48 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store %struct.ifnet* %46, %struct.ifnet** %49, align 8
  %50 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %51 = load i32, i32* @ETHER_ALIGN, align 4
  %52 = call i32 @m_adj(%struct.mbuf* %50, i32 %51)
  %53 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %54 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %53)
  %55 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %56 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %55, i32 0, i32 0
  %57 = load i32 (%struct.ifnet*, %struct.mbuf*)*, i32 (%struct.ifnet*, %struct.mbuf*)** %56, align 8
  %58 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %8, align 8
  %60 = call i32 %57(%struct.ifnet* %58, %struct.mbuf* %59)
  %61 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %62 = call i32 @ATSE_LOCK(%struct.atse_softc* %61)
  br label %18

63:                                               ; preds = %25
  %64 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %65 = load i64, i64* %10, align 8
  %66 = call i32 @atse_rx_enqueue(%struct.atse_softc* %64, i64 %65)
  %67 = load %struct.atse_softc*, %struct.atse_softc** %6, align 8
  %68 = call i32 @ATSE_UNLOCK(%struct.atse_softc* %67)
  ret i32 0
}

declare dso_local i32 @ATSE_LOCK(%struct.atse_softc*) #1

declare dso_local i32 @xdma_dequeue_mbuf(i32, %struct.mbuf**, %struct.TYPE_6__*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @m_adj(%struct.mbuf*, i32) #1

declare dso_local i32 @ATSE_UNLOCK(%struct.atse_softc*) #1

declare dso_local i32 @atse_rx_enqueue(%struct.atse_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
