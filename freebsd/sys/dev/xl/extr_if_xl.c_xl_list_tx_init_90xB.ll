; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_list_tx_init_90xB.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_list_tx_init_90xB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, %struct.xl_list_data, %struct.xl_chain_data }
%struct.xl_list_data = type { i32, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32 }
%struct.xl_chain_data = type { i32, i32, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_3__*, %struct.TYPE_3__*, i64, i32, %struct.TYPE_4__* }

@XL_TX_LIST_CNT = common dso_local global i32 0, align 4
@XL_TX_LIST_SZ = common dso_local global i32 0, align 4
@XL_TXSTAT_EMPTY = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xl_softc*)* @xl_list_tx_init_90xB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_list_tx_init_90xB(%struct.xl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.xl_chain_data*, align 8
  %5 = alloca %struct.xl_list_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.xl_softc* %0, %struct.xl_softc** %3, align 8
  %8 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %9 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %8)
  %10 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %11 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %10, i32 0, i32 2
  store %struct.xl_chain_data* %11, %struct.xl_chain_data** %4, align 8
  %12 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %12, i32 0, i32 1
  store %struct.xl_list_data* %13, %struct.xl_list_data** %5, align 8
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %127, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @XL_TX_LIST_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %130

18:                                               ; preds = %14
  %19 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %20 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %19, i32 0, i32 2
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %26 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 4
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %31, align 8
  %32 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %33 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %36 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %35, i32 0, i32 3
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  %42 = call i32 @bus_dmamap_create(i32 %34, i32 0, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %18
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %157

47:                                               ; preds = %18
  %48 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %49 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 %50, %53
  %55 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %56 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %55, i32 0, i32 3
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 2
  store i64 %54, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @XL_TX_LIST_CNT, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %78

66:                                               ; preds = %47
  %67 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %68 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %67, i32 0, i32 3
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i64 0
  %71 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %72 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %71, i32 0, i32 3
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 1
  store %struct.TYPE_3__* %70, %struct.TYPE_3__** %77, align 8
  br label %93

78:                                               ; preds = %47
  %79 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %80 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %79, i32 0, i32 3
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i64 %84
  %86 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %87 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %86, i32 0, i32 3
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = load i32, i32* %7, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 1
  store %struct.TYPE_3__* %85, %struct.TYPE_3__** %92, align 8
  br label %93

93:                                               ; preds = %78, %66
  %94 = load i32, i32* %7, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %93
  %97 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %98 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %97, i32 0, i32 3
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* @XL_TX_LIST_CNT, align 4
  %101 = sub nsw i32 %100, 1
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %102
  %104 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %105 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %104, i32 0, i32 3
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  store %struct.TYPE_3__* %103, %struct.TYPE_3__** %110, align 8
  br label %126

111:                                              ; preds = %93
  %112 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %113 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %112, i32 0, i32 3
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i64 %117
  %119 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %120 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %119, i32 0, i32 3
  %121 = load %struct.TYPE_3__*, %struct.TYPE_3__** %120, align 8
  %122 = load i32, i32* %7, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i64 %123
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %124, i32 0, i32 0
  store %struct.TYPE_3__* %118, %struct.TYPE_3__** %125, align 8
  br label %126

126:                                              ; preds = %111, %96
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %7, align 4
  br label %14

130:                                              ; preds = %14
  %131 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %132 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %131, i32 0, i32 2
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* @XL_TX_LIST_SZ, align 4
  %135 = call i32 @bzero(%struct.TYPE_4__* %133, i32 %134)
  %136 = load i32, i32* @XL_TXSTAT_EMPTY, align 4
  %137 = call i32 @htole32(i32 %136)
  %138 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %139 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %138, i32 0, i32 2
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  store i32 %137, i32* %142, align 4
  %143 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %144 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %143, i32 0, i32 0
  store i32 1, i32* %144, align 8
  %145 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %146 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %145, i32 0, i32 1
  store i32 1, i32* %146, align 4
  %147 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %148 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %147, i32 0, i32 2
  store i64 0, i64* %148, align 8
  %149 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %150 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %153 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %156 = call i32 @bus_dmamap_sync(i32 %151, i32 %154, i32 %155)
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %130, %45
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bzero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @htole32(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
