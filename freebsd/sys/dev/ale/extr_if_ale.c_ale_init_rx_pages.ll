; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_init_rx_pages.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_init_rx_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { i32, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { %struct.ale_rx_page*, i64, i64 }
%struct.ale_rx_page = type { i32, i32, i32, i32, i64*, i64, i64* }

@ALE_RX_PAGES = common dso_local global i32 0, align 4
@ALE_RX_CMB_SZ = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*)* @ale_init_rx_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_init_rx_pages(%struct.ale_softc* %0) #0 {
  %2 = alloca %struct.ale_softc*, align 8
  %3 = alloca %struct.ale_rx_page*, align 8
  %4 = alloca i32, align 4
  store %struct.ale_softc* %0, %struct.ale_softc** %2, align 8
  %5 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %6 = call i32 @ALE_LOCK_ASSERT(%struct.ale_softc* %5)
  %7 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %8 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %7, i32 0, i32 2
  store i64 0, i64* %8, align 8
  %9 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  %12 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i64 0, i64* %14, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %64, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @ALE_RX_PAGES, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ale_rx_page*, %struct.ale_rx_page** %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %23, i64 %25
  store %struct.ale_rx_page* %26, %struct.ale_rx_page** %3, align 8
  %27 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %28 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %27, i32 0, i32 6
  %29 = load i64*, i64** %28, align 8
  %30 = load %struct.ale_softc*, %struct.ale_softc** %2, align 8
  %31 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @bzero(i64* %29, i32 %32)
  %34 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %35 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %34, i32 0, i32 4
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* @ALE_RX_CMB_SZ, align 4
  %38 = call i32 @bzero(i64* %36, i32 %37)
  %39 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %40 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %42 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %41, i32 0, i32 4
  %43 = load i64*, i64** %42, align 8
  store i64 0, i64* %43, align 8
  %44 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %45 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %48 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %51 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @bus_dmamap_sync(i32 %46, i32 %49, i32 %52)
  %54 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %55 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ale_rx_page*, %struct.ale_rx_page** %3, align 8
  %58 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %61 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @bus_dmamap_sync(i32 %56, i32 %59, i32 %62)
  br label %64

64:                                               ; preds = %19
  %65 = load i32, i32* %4, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %15

67:                                               ; preds = %15
  ret void
}

declare dso_local i32 @ALE_LOCK_ASSERT(%struct.ale_softc*) #1

declare dso_local i32 @bzero(i64*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
