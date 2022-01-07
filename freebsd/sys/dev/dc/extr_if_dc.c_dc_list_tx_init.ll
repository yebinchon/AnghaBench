; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_list_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_list_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, i32, %struct.dc_list_data, %struct.dc_chain_data }
%struct.dc_list_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64, i64, i64 }
%struct.dc_chain_data = type { i64, i64, i64, i64, i32** }

@DC_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dc_softc*)* @dc_list_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_list_tx_init(%struct.dc_softc* %0) #0 {
  %2 = alloca %struct.dc_softc*, align 8
  %3 = alloca %struct.dc_chain_data*, align 8
  %4 = alloca %struct.dc_list_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dc_softc* %0, %struct.dc_softc** %2, align 8
  %7 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %8 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %7, i32 0, i32 3
  store %struct.dc_chain_data* %8, %struct.dc_chain_data** %3, align 8
  %9 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %10 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %9, i32 0, i32 2
  store %struct.dc_list_data* %10, %struct.dc_list_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %66

15:                                               ; preds = %11
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @DC_TX_LIST_CNT, align 4
  %18 = sub nsw i32 %17, 1
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %6, align 4
  br label %24

21:                                               ; preds = %15
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %21, %20
  %25 = load %struct.dc_list_data*, %struct.dc_list_data** %4, align 8
  %26 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i64 0, i64* %31, align 8
  %32 = load %struct.dc_list_data*, %struct.dc_list_data** %4, align 8
  %33 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  %39 = load %struct.dc_list_data*, %struct.dc_list_data** %4, align 8
  %40 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  store i64 0, i64* %45, align 8
  %46 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @DC_TXDESC(%struct.dc_softc* %46, i32 %47)
  %49 = call i32 @htole32(i32 %48)
  %50 = load %struct.dc_list_data*, %struct.dc_list_data** %4, align 8
  %51 = getelementptr inbounds %struct.dc_list_data, %struct.dc_list_data* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 %49, i32* %56, align 8
  %57 = load %struct.dc_chain_data*, %struct.dc_chain_data** %3, align 8
  %58 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %57, i32 0, i32 4
  %59 = load i32**, i32*** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32*, i32** %59, i64 %61
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %24
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %11

66:                                               ; preds = %11
  %67 = load %struct.dc_chain_data*, %struct.dc_chain_data** %3, align 8
  %68 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.dc_chain_data*, %struct.dc_chain_data** %3, align 8
  %70 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.dc_chain_data*, %struct.dc_chain_data** %3, align 8
  %72 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %71, i32 0, i32 3
  store i64 0, i64* %72, align 8
  %73 = load %struct.dc_chain_data*, %struct.dc_chain_data** %3, align 8
  %74 = getelementptr inbounds %struct.dc_chain_data, %struct.dc_chain_data* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %76 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dc_softc*, %struct.dc_softc** %2, align 8
  %79 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %82 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @bus_dmamap_sync(i32 %77, i32 %80, i32 %83)
  ret i32 0
}

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @DC_TXDESC(%struct.dc_softc*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
