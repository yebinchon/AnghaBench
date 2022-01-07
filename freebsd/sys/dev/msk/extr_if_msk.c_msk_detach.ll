; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/msk/extr_if_msk.c_msk_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msk_softc = type { i32**, i32 }
%struct.msk_if_softc = type { i64, %struct.msk_softc*, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"msk mutex not initialized in msk_detach\00", align 1
@MSK_FLAG_DETACH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @msk_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msk_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msk_softc*, align 8
  %4 = alloca %struct.msk_if_softc*, align 8
  %5 = alloca %struct.ifnet*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.msk_if_softc* @device_get_softc(i32 %6)
  store %struct.msk_if_softc* %7, %struct.msk_if_softc** %4, align 8
  %8 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %9 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %8, i32 0, i32 1
  %10 = load %struct.msk_softc*, %struct.msk_softc** %9, align 8
  %11 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %10, i32 0, i32 1
  %12 = call i32 @mtx_initialized(i32* %11)
  %13 = call i32 @KASSERT(i32 %12, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %15 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %14)
  %16 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %17 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %16, i32 0, i32 4
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %5, align 8
  %19 = load i32, i32* %2, align 4
  %20 = call i64 @device_is_attached(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %1
  %23 = load i32, i32* @MSK_FLAG_DETACH, align 4
  %24 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %25 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %29 = call i32 @msk_stop(%struct.msk_if_softc* %28)
  %30 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %31 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %30)
  %32 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %33 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %32, i32 0, i32 2
  %34 = call i32 @callout_drain(i32* %33)
  %35 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %36 = icmp ne %struct.ifnet* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %22
  %38 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %39 = call i32 @ether_ifdetach(%struct.ifnet* %38)
  br label %40

40:                                               ; preds = %37, %22
  %41 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %42 = call i32 @MSK_IF_LOCK(%struct.msk_if_softc* %41)
  br label %43

43:                                               ; preds = %40, %1
  %44 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %45 = call i32 @msk_rx_dma_jfree(%struct.msk_if_softc* %44)
  %46 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %47 = call i32 @msk_txrx_dma_free(%struct.msk_if_softc* %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @bus_generic_detach(i32 %48)
  %50 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %51 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %50, i32 0, i32 1
  %52 = load %struct.msk_softc*, %struct.msk_softc** %51, align 8
  store %struct.msk_softc* %52, %struct.msk_softc** %3, align 8
  %53 = load %struct.msk_softc*, %struct.msk_softc** %3, align 8
  %54 = getelementptr inbounds %struct.msk_softc, %struct.msk_softc* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %57 = getelementptr inbounds %struct.msk_if_softc, %struct.msk_if_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  store i32* null, i32** %59, align 8
  %60 = load %struct.msk_if_softc*, %struct.msk_if_softc** %4, align 8
  %61 = call i32 @MSK_IF_UNLOCK(%struct.msk_if_softc* %60)
  %62 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %63 = icmp ne %struct.ifnet* %62, null
  br i1 %63, label %64, label %67

64:                                               ; preds = %43
  %65 = load %struct.ifnet*, %struct.ifnet** %5, align 8
  %66 = call i32 @if_free(%struct.ifnet* %65)
  br label %67

67:                                               ; preds = %64, %43
  ret i32 0
}

declare dso_local %struct.msk_if_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i32 @MSK_IF_LOCK(%struct.msk_if_softc*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @msk_stop(%struct.msk_if_softc*) #1

declare dso_local i32 @MSK_IF_UNLOCK(%struct.msk_if_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @msk_rx_dma_jfree(%struct.msk_if_softc*) #1

declare dso_local i32 @msk_txrx_dma_free(%struct.msk_if_softc*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
