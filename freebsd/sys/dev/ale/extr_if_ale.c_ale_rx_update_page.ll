; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_rx_update_page.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ale/extr_if_ale.c_ale_rx_update_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ale_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ale_rx_page* }
%struct.ale_rx_page = type { i64, i64*, i32, i32, i32, i32 }

@ALE_RX_PAGE_ALIGN = common dso_local global i32 0, align 4
@ALE_RX_PAGE_SZ = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@ALE_RXF0_PAGE0 = common dso_local global i64 0, align 8
@RXF_VALID = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ale_softc*, %struct.ale_rx_page**, i64, i64*)* @ale_rx_update_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ale_rx_update_page(%struct.ale_softc* %0, %struct.ale_rx_page** %1, i64 %2, i64* %3) #0 {
  %5 = alloca %struct.ale_softc*, align 8
  %6 = alloca %struct.ale_rx_page**, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca %struct.ale_rx_page*, align 8
  store %struct.ale_softc* %0, %struct.ale_softc** %5, align 8
  store %struct.ale_rx_page** %1, %struct.ale_rx_page*** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64* %3, i64** %8, align 8
  %10 = load %struct.ale_rx_page**, %struct.ale_rx_page*** %6, align 8
  %11 = load %struct.ale_rx_page*, %struct.ale_rx_page** %10, align 8
  store %struct.ale_rx_page* %11, %struct.ale_rx_page** %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = add i64 %12, 4
  %14 = load i32, i32* @ALE_RX_PAGE_ALIGN, align 4
  %15 = call i64 @roundup(i64 %13, i32 %14)
  %16 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %17 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %21 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ALE_RX_PAGE_SZ, align 8
  %24 = icmp sge i64 %22, %23
  br i1 %24, label %25, label %92

25:                                               ; preds = %4
  %26 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %27 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %29 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  store i64 0, i64* %30, align 8
  %31 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %32 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %35 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %38 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @bus_dmamap_sync(i32 %33, i32 %36, i32 %39)
  %41 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %42 = load i64, i64* @ALE_RXF0_PAGE0, align 8
  %43 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %44 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %42, %47
  %49 = load i32, i32* @RXF_VALID, align 4
  %50 = call i32 @CSR_WRITE_1(%struct.ale_softc* %41, i64 %48, i32 %49)
  %51 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %52 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %57 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load %struct.ale_rx_page*, %struct.ale_rx_page** %58, align 8
  %60 = load %struct.ale_softc*, %struct.ale_softc** %5, align 8
  %61 = getelementptr inbounds %struct.ale_softc, %struct.ale_softc* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %59, i64 %64
  %66 = load %struct.ale_rx_page**, %struct.ale_rx_page*** %6, align 8
  store %struct.ale_rx_page* %65, %struct.ale_rx_page** %66, align 8
  store %struct.ale_rx_page* %65, %struct.ale_rx_page** %9, align 8
  %67 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %68 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %71 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %74 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @bus_dmamap_sync(i32 %69, i32 %72, i32 %75)
  %77 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %78 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %81 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %84 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @bus_dmamap_sync(i32 %79, i32 %82, i32 %85)
  %87 = load %struct.ale_rx_page*, %struct.ale_rx_page** %9, align 8
  %88 = getelementptr inbounds %struct.ale_rx_page, %struct.ale_rx_page* %87, i32 0, i32 1
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %8, align 8
  store i64 %90, i64* %91, align 8
  br label %92

92:                                               ; preds = %25, %4
  ret void
}

declare dso_local i64 @roundup(i64, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.ale_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
