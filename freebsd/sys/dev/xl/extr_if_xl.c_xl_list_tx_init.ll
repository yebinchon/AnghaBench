; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_list_tx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_list_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, %struct.xl_list_data, %struct.xl_chain_data }
%struct.xl_list_data = type { i32, i32, i64, i32* }
%struct.xl_chain_data = type { i32*, i32, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__*, i64, i32, i32* }

@XL_TX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xl_softc*)* @xl_list_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_list_tx_init(%struct.xl_softc* %0) #0 {
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

14:                                               ; preds = %90, %1
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @XL_TX_LIST_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %93

18:                                               ; preds = %14
  %19 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %20 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %26 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  store i32* %24, i32** %31, align 8
  %32 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %33 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %36 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 2
  %42 = call i32 @bus_dmamap_create(i32 %34, i32 0, i32* %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %18
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %2, align 4
  br label %112

47:                                               ; preds = %18
  %48 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %49 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = mul i64 %52, 4
  %54 = add i64 %50, %53
  %55 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %56 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %54, i64* %61, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* @XL_TX_LIST_CNT, align 4
  %64 = sub nsw i32 %63, 1
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %47
  %67 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %68 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %67, i32 0, i32 2
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %7, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %73, align 8
  br label %89

74:                                               ; preds = %47
  %75 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %76 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i64 %80
  %82 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %83 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  store %struct.TYPE_2__* %81, %struct.TYPE_2__** %88, align 8
  br label %89

89:                                               ; preds = %74, %66
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %7, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %7, align 4
  br label %14

93:                                               ; preds = %14
  %94 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %95 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 0
  %98 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %99 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %98, i32 0, i32 3
  store %struct.TYPE_2__* %97, %struct.TYPE_2__** %99, align 8
  %100 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %101 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %100, i32 0, i32 0
  store i32* null, i32** %101, align 8
  %102 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %103 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %102, i32 0, i32 1
  store i32 0, i32* %103, align 8
  %104 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %105 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %108 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %111 = call i32 @bus_dmamap_sync(i32 %106, i32 %109, i32 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %93, %45
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
