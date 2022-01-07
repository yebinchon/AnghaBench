; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_list_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xl/extr_if_xl.c_xl_list_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xl_softc = type { i32, %struct.xl_list_data, %struct.xl_chain_data }
%struct.xl_list_data = type { i32, i32, %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.xl_chain_data = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }

@XL_RX_LIST_CNT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xl_softc*)* @xl_list_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xl_list_rx_init(%struct.xl_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xl_softc*, align 8
  %4 = alloca %struct.xl_chain_data*, align 8
  %5 = alloca %struct.xl_list_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.xl_softc* %0, %struct.xl_softc** %3, align 8
  %10 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %11 = call i32 @XL_LOCK_ASSERT(%struct.xl_softc* %10)
  %12 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %13 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %12, i32 0, i32 2
  store %struct.xl_chain_data* %13, %struct.xl_chain_data** %4, align 8
  %14 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %15 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %14, i32 0, i32 1
  store %struct.xl_list_data* %15, %struct.xl_list_data** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %101, %1
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @XL_RX_LIST_CNT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %104

20:                                               ; preds = %16
  %21 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %22 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %28 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.TYPE_3__* %26, %struct.TYPE_3__** %33, align 8
  %34 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %35 = getelementptr inbounds %struct.xl_softc, %struct.xl_softc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %38 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = call i32 @bus_dmamap_create(i32 %36, i32 0, i32* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %20
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %119

49:                                               ; preds = %20
  %50 = load %struct.xl_softc*, %struct.xl_softc** %3, align 8
  %51 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %52 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = call i32 @xl_newbuf(%struct.xl_softc* %50, %struct.TYPE_4__* %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %2, align 4
  br label %119

62:                                               ; preds = %49
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @XL_RX_LIST_CNT, align 4
  %65 = sub nsw i32 %64, 1
  %66 = icmp eq i32 %63, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  store i32 0, i32* %8, align 4
  br label %71

68:                                               ; preds = %62
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %8, align 4
  br label %71

71:                                               ; preds = %68, %67
  %72 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %73 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = add i64 %74, %77
  store i64 %78, i64* %9, align 8
  %79 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %80 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i64 %83
  %85 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %86 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %91, align 8
  %92 = load i64, i64* %9, align 8
  %93 = call i32 @htole32(i64 %92)
  %94 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %95 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %94, i32 0, i32 2
  %96 = load %struct.TYPE_3__*, %struct.TYPE_3__** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 0
  store i32 %93, i32* %100, align 4
  br label %101

101:                                              ; preds = %71
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %16

104:                                              ; preds = %16
  %105 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %106 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.xl_list_data*, %struct.xl_list_data** %5, align 8
  %109 = getelementptr inbounds %struct.xl_list_data, %struct.xl_list_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %112 = call i32 @bus_dmamap_sync(i32 %107, i32 %110, i32 %111)
  %113 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %114 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %113, i32 0, i32 0
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 0
  %117 = load %struct.xl_chain_data*, %struct.xl_chain_data** %4, align 8
  %118 = getelementptr inbounds %struct.xl_chain_data, %struct.xl_chain_data* %117, i32 0, i32 1
  store %struct.TYPE_4__* %116, %struct.TYPE_4__** %118, align 8
  store i32 0, i32* %2, align 4
  br label %119

119:                                              ; preds = %104, %60, %47
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @XL_LOCK_ASSERT(%struct.xl_softc*) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @xl_newbuf(%struct.xl_softc*, %struct.TYPE_4__*) #1

declare dso_local i32 @htole32(i64) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
