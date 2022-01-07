; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_init_rx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ste/extr_if_ste.c_ste_init_rx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ste_softc = type { %struct.ste_chain_data, %struct.ste_list_data, i64 }
%struct.ste_chain_data = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8* }
%struct.ste_list_data = type { i64, %struct.TYPE_4__* }

@STE_RX_LIST_SZ = common dso_local global i32 0, align 4
@STE_RX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ste_softc*)* @ste_init_rx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ste_init_rx_list(%struct.ste_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ste_softc*, align 8
  %4 = alloca %struct.ste_chain_data*, align 8
  %5 = alloca %struct.ste_list_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ste_softc* %0, %struct.ste_softc** %3, align 8
  %8 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %8, i32 0, i32 2
  store i64 0, i64* %9, align 8
  %10 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %10, i32 0, i32 0
  store %struct.ste_chain_data* %11, %struct.ste_chain_data** %4, align 8
  %12 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %13 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %12, i32 0, i32 1
  store %struct.ste_list_data* %13, %struct.ste_list_data** %5, align 8
  %14 = load %struct.ste_list_data*, %struct.ste_list_data** %5, align 8
  %15 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load i32, i32* @STE_RX_LIST_SZ, align 4
  %18 = call i32 @bzero(%struct.TYPE_4__* %16, i32 %17)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %110, %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @STE_RX_LIST_CNT, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %113

23:                                               ; preds = %19
  %24 = load %struct.ste_list_data*, %struct.ste_list_data** %5, align 8
  %25 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %31 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store %struct.TYPE_4__* %29, %struct.TYPE_4__** %36, align 8
  %37 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %38 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %39 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %42
  %44 = call i32 @ste_newbuf(%struct.ste_softc* %37, %struct.TYPE_3__* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %23
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %132

49:                                               ; preds = %23
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @STE_RX_LIST_CNT, align 4
  %52 = sub nsw i32 %51, 1
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %54, label %78

54:                                               ; preds = %49
  %55 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %56 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 0
  %59 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %60 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store %struct.TYPE_3__* %58, %struct.TYPE_3__** %65, align 8
  %66 = load %struct.ste_list_data*, %struct.ste_list_data** %5, align 8
  %67 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 0
  %70 = call i8* @htole32(i64 %69)
  %71 = load %struct.ste_list_data*, %struct.ste_list_data** %5, align 8
  %72 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  store i8* %70, i8** %77, align 8
  br label %109

78:                                               ; preds = %49
  %79 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %80 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %84
  %86 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %87 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %86, i32 0, i32 2
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %92, align 8
  %93 = load %struct.ste_list_data*, %struct.ste_list_data** %5, align 8
  %94 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  %98 = sext i32 %97 to i64
  %99 = mul i64 4, %98
  %100 = add i64 %95, %99
  %101 = call i8* @htole32(i64 %100)
  %102 = load %struct.ste_list_data*, %struct.ste_list_data** %5, align 8
  %103 = getelementptr inbounds %struct.ste_list_data, %struct.ste_list_data* %102, i32 0, i32 1
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = load i32, i32* %7, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i8* %101, i8** %108, align 8
  br label %109

109:                                              ; preds = %78, %54
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %7, align 4
  br label %19

113:                                              ; preds = %19
  %114 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %115 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %114, i32 0, i32 2
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i64 0
  %118 = load %struct.ste_chain_data*, %struct.ste_chain_data** %4, align 8
  %119 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %118, i32 0, i32 3
  store %struct.TYPE_3__* %117, %struct.TYPE_3__** %119, align 8
  %120 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %121 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ste_softc*, %struct.ste_softc** %3, align 8
  %125 = getelementptr inbounds %struct.ste_softc, %struct.ste_softc* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.ste_chain_data, %struct.ste_chain_data* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %129 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %130 = or i32 %128, %129
  %131 = call i32 @bus_dmamap_sync(i32 %123, i32 %127, i32 %130)
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %113, %47
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @ste_newbuf(%struct.ste_softc*, %struct.TYPE_3__*) #1

declare dso_local i8* @htole32(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
