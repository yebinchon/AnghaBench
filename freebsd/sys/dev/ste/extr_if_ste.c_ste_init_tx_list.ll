; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_init_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_init_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.ste_chain_data, %struct.ste_list_data }
%struct.ste_chain_data = type { i32, i32, i64, i64, i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, %struct.TYPE_2__*, i32*, i32* }
%struct.ste_list_data = type { i64, i32* }

@STE_TX_LIST_SZ = common dso_local global i32 0, align 4
@STE_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ste_softc*)* @ste_init_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ste_init_tx_list(%struct.ste_softc* %0) #0 {
  %2 = alloca %struct.ste_softc*, align 8
  %3 = alloca %struct.ste_chain_data*, align 8
  %4 = alloca %struct.ste_list_data*, align 8
  %5 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %2, align 8
  %6 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %6, i32 0, i32 0
  store %struct.ste_chain_data* %7, %struct.ste_chain_data** %3, align 8
  %8 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %9 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %8, i32 0, i32 1
  store %struct.ste_list_data* %9, %struct.ste_list_data** %4, align 8
  %10 = load %struct.ste_list_data*, %struct.ste_list_data** %4, align 8
  %11 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* @STE_TX_LIST_SZ, align 4
  %14 = call i32 @bzero(i32* %12, i32 %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %102, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @STE_TX_LIST_CNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %105

19:                                               ; preds = %15
  %20 = load %struct.ste_list_data*, %struct.ste_list_data** %4, align 8
  %21 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %27 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %26, i32 0, i32 6
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 3
  store i32* %25, i32** %32, align 8
  %33 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %34 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %33, i32 0, i32 6
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 2
  store i32* null, i32** %39, align 8
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @STE_TX_LIST_CNT, align 4
  %42 = sub nsw i32 %41, 1
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %69

44:                                               ; preds = %19
  %45 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %46 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %45, i32 0, i32 6
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 0
  %49 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %50 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %49, i32 0, i32 6
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 1
  store %struct.TYPE_2__* %48, %struct.TYPE_2__** %55, align 8
  %56 = load %struct.ste_list_data*, %struct.ste_list_data** %4, align 8
  %57 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = add i64 %58, 0
  %60 = call i32 @STE_ADDR_LO(i64 %59)
  %61 = call i8* @htole32(i32 %60)
  %62 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %63 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %62, i32 0, i32 6
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i8* %61, i8** %68, align 8
  br label %101

69:                                               ; preds = %19
  %70 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %71 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %70, i32 0, i32 6
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %75
  %77 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %78 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %77, i32 0, i32 6
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load i32, i32* %5, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  store %struct.TYPE_2__* %76, %struct.TYPE_2__** %83, align 8
  %84 = load %struct.ste_list_data*, %struct.ste_list_data** %4, align 8
  %85 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %87, 1
  %89 = sext i32 %88 to i64
  %90 = mul i64 4, %89
  %91 = add i64 %86, %90
  %92 = call i32 @STE_ADDR_LO(i64 %91)
  %93 = call i8* @htole32(i32 %92)
  %94 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %95 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %94, i32 0, i32 6
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = load i32, i32* %5, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i8* %93, i8** %100, align 8
  br label %101

101:                                              ; preds = %69, %44
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %5, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %5, align 4
  br label %15

105:                                              ; preds = %15
  %106 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %107 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %106, i32 0, i32 5
  store i32* null, i32** %107, align 8
  %108 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %109 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %108, i32 0, i32 4
  store i64 0, i64* %109, align 8
  %110 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %111 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %110, i32 0, i32 3
  store i64 0, i64* %111, align 8
  %112 = load %struct.ste_chain_data*, %struct.ste_chain_data** %3, align 8
  %113 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %115 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ste_softc*, %struct.ste_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %123 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @bus_dmamap_sync(i32 %117, i32 %121, i32 %124)
  ret void
}

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @STE_ADDR_LO(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
