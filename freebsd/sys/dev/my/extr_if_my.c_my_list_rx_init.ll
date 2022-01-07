; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_list_rx_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/my/extr_if_my.c_my_list_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.my_softc = type { %struct.my_list_data*, %struct.my_chain_data }
%struct.my_list_data = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }
%struct.my_chain_data = type { %struct.TYPE_4__*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_4__*, %struct.my_desc* }
%struct.my_desc = type { i32 }

@MY_RX_LIST_CNT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.my_softc*)* @my_list_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @my_list_rx_init(%struct.my_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.my_softc*, align 8
  %4 = alloca %struct.my_chain_data*, align 8
  %5 = alloca %struct.my_list_data*, align 8
  %6 = alloca i32, align 4
  store %struct.my_softc* %0, %struct.my_softc** %3, align 8
  %7 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %8 = call i32 @MY_LOCK_ASSERT(%struct.my_softc* %7)
  %9 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %10 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %9, i32 0, i32 1
  store %struct.my_chain_data* %10, %struct.my_chain_data** %4, align 8
  %11 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %12 = getelementptr inbounds %struct.my_softc, %struct.my_softc* %11, i32 0, i32 0
  %13 = load %struct.my_list_data*, %struct.my_list_data** %12, align 8
  store %struct.my_list_data* %13, %struct.my_list_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %108, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @MY_RX_LIST_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %111

18:                                               ; preds = %14
  %19 = load %struct.my_list_data*, %struct.my_list_data** %5, align 8
  %20 = getelementptr inbounds %struct.my_list_data, %struct.my_list_data* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i64 %23
  %25 = bitcast %struct.TYPE_3__* %24 to %struct.my_desc*
  %26 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %27 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store %struct.my_desc* %25, %struct.my_desc** %32, align 8
  %33 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %34 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %35 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i64 %38
  %40 = call i64 @my_newbuf(%struct.my_softc* %33, %struct.TYPE_4__* %39)
  %41 = load i64, i64* @ENOBUFS, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %18
  %44 = load %struct.my_softc*, %struct.my_softc** %3, align 8
  %45 = call i32 @MY_UNLOCK(%struct.my_softc* %44)
  %46 = load i64, i64* @ENOBUFS, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %2, align 4
  br label %118

48:                                               ; preds = %18
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @MY_RX_LIST_CNT, align 4
  %51 = sub nsw i32 %50, 1
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %77

53:                                               ; preds = %48
  %54 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %55 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i64 0
  %58 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %59 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store %struct.TYPE_4__* %57, %struct.TYPE_4__** %64, align 8
  %65 = load %struct.my_list_data*, %struct.my_list_data** %5, align 8
  %66 = getelementptr inbounds %struct.my_list_data, %struct.my_list_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 0
  %69 = call i8* @vtophys(%struct.TYPE_3__* %68)
  %70 = load %struct.my_list_data*, %struct.my_list_data** %5, align 8
  %71 = getelementptr inbounds %struct.my_list_data, %struct.my_list_data* %70, i32 0, i32 0
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  store i8* %69, i8** %76, align 8
  br label %107

77:                                               ; preds = %48
  %78 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %79 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i64 %83
  %85 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %86 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  store %struct.TYPE_4__* %84, %struct.TYPE_4__** %91, align 8
  %92 = load %struct.my_list_data*, %struct.my_list_data** %5, align 8
  %93 = getelementptr inbounds %struct.my_list_data, %struct.my_list_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %93, align 8
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %97
  %99 = call i8* @vtophys(%struct.TYPE_3__* %98)
  %100 = load %struct.my_list_data*, %struct.my_list_data** %5, align 8
  %101 = getelementptr inbounds %struct.my_list_data, %struct.my_list_data* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  store i8* %99, i8** %106, align 8
  br label %107

107:                                              ; preds = %77, %53
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %6, align 4
  br label %14

111:                                              ; preds = %14
  %112 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %113 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i64 0
  %116 = load %struct.my_chain_data*, %struct.my_chain_data** %4, align 8
  %117 = getelementptr inbounds %struct.my_chain_data, %struct.my_chain_data* %116, i32 0, i32 1
  store %struct.TYPE_4__* %115, %struct.TYPE_4__** %117, align 8
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %111, %43
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @MY_LOCK_ASSERT(%struct.my_softc*) #1

declare dso_local i64 @my_newbuf(%struct.my_softc*, %struct.TYPE_4__*) #1

declare dso_local i32 @MY_UNLOCK(%struct.my_softc*) #1

declare dso_local i8* @vtophys(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
