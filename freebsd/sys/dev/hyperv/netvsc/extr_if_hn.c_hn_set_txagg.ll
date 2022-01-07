; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_set_txagg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_set_txagg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i32, i32, i32, i64, i32, i32, %struct.hn_tx_ring*, i32 }
%struct.hn_tx_ring = type { i32, i32, i32, i32 }

@UINT32_MAX = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@SHRT_MAX = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"TX agg size %u, pkts %u, align %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hn_softc*)* @hn_set_txagg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_set_txagg(%struct.hn_softc* %0) #0 {
  %2 = alloca %struct.hn_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.hn_tx_ring*, align 8
  store %struct.hn_softc* %0, %struct.hn_softc** %2, align 8
  %7 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %8 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* @UINT32_MAX, align 4
  store i32 %12, i32* %3, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %15 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %13, %11
  %19 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %20 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %26 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %31 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = icmp sgt i32 %29, %32
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %36 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %34, %28
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %41 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @HN_PKTSIZE_MIN(i32 %42)
  %44 = mul nsw i32 2, %43
  %45 = icmp sle i32 %39, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %86

47:                                               ; preds = %38
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* @INT_MAX, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i32, i32* @INT_MAX, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %47
  %54 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %55 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @UINT32_MAX, align 4
  store i32 %59, i32* %4, align 4
  br label %65

60:                                               ; preds = %53
  %61 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %62 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %58
  %66 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %67 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %66, i32 0, i32 5
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %73 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i32, i32* %4, align 4
  %77 = icmp sle i32 %76, 1
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %86

79:                                               ; preds = %75
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @SHRT_MAX, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* @SHRT_MAX, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %79
  br label %86

86:                                               ; preds = %85, %78, %46
  %87 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %88 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SHRT_MAX, align 4
  %91 = icmp sgt i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %86
  store i32 0, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %93

93:                                               ; preds = %92, %86
  %94 = load i64, i64* @bootverbose, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %98 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %97, i32 0, i32 8
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* %3, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %103 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @if_printf(i32 %99, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %100, i32 %101, i32 %104)
  br label %106

106:                                              ; preds = %96, %93
  store i32 0, i32* %5, align 4
  br label %107

107:                                              ; preds = %137, %106
  %108 = load i32, i32* %5, align 4
  %109 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %110 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = icmp slt i32 %108, %111
  br i1 %112, label %113, label %140

113:                                              ; preds = %107
  %114 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %115 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %114, i32 0, i32 7
  %116 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %115, align 8
  %117 = load i32, i32* %5, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %116, i64 %118
  store %struct.hn_tx_ring* %119, %struct.hn_tx_ring** %6, align 8
  %120 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %121 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %120, i32 0, i32 3
  %122 = call i32 @mtx_lock(i32* %121)
  %123 = load i32, i32* %3, align 4
  %124 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %125 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %124, i32 0, i32 0
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %4, align 4
  %127 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %128 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 4
  %129 = load %struct.hn_softc*, %struct.hn_softc** %2, align 8
  %130 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %133 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.hn_tx_ring*, %struct.hn_tx_ring** %6, align 8
  %135 = getelementptr inbounds %struct.hn_tx_ring, %struct.hn_tx_ring* %134, i32 0, i32 3
  %136 = call i32 @mtx_unlock(i32* %135)
  br label %137

137:                                              ; preds = %113
  %138 = load i32, i32* %5, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %5, align 4
  br label %107

140:                                              ; preds = %107
  ret void
}

declare dso_local i32 @HN_PKTSIZE_MIN(i32) #1

declare dso_local i32 @if_printf(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
