; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_set_rtscts.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_set_rtscts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i64, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.ath_buf = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_8__*, i32, i64, i32, i32, i32, i64 }
%struct.TYPE_8__ = type { i64, i32 }

@HAL_TXDESC_RTSENA = common dso_local global i32 0, align 4
@HAL_TXDESC_CTSENA = common dso_local global i32 0, align 4
@ATH_TXMGTTRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_buf*)* @ath_tx_set_rtscts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_set_rtscts(%struct.ath_softc* %0, %struct.ath_buf* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_buf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_10__*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_buf* %1, %struct.ath_buf** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %10 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %11 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 3
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %17 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %17, i32 0, i32 3
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  store %struct.TYPE_10__* %19, %struct.TYPE_10__** %9, align 8
  %20 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %21 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @HAL_TXDESC_RTSENA, align 4
  %25 = load i32, i32* @HAL_TXDESC_CTSENA, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %2
  %30 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %31 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %34 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 6
  store i32 0, i32* %35, align 8
  br label %136

36:                                               ; preds = %2
  %37 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %38 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 9
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %44 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %7, align 8
  br label %54

46:                                               ; preds = %36
  %47 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %48 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %7, align 8
  br label %54

54:                                               ; preds = %46, %42
  %55 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %56 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %54
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %63 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = call i64 @ath_tx_findrix(%struct.ath_softc* %61, i64 %65)
  store i64 %66, i64* %8, align 8
  br label %75

67:                                               ; preds = %54
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = load i64, i64* %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %67, %60
  %76 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %77 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %80 = load i64, i64* %8, align 8
  %81 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %82 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 8
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @ath_tx_get_rtscts_rate(i32 %78, %struct.TYPE_10__* %79, i64 %80, i32 %84)
  store i64 %85, i64* %6, align 8
  %86 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %87 = call i32 @ath_tx_is_11n(%struct.ath_softc* %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %109, label %89

89:                                               ; preds = %75
  %90 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %91 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %96 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %100 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 7
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %104 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %105 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @ath_tx_calc_ctsduration(i32 %92, i64 %93, i64 %94, i32 %98, i32 %102, %struct.TYPE_10__* %103, i32 %107)
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %89, %75
  %110 = load i64, i64* %6, align 8
  %111 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %112 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 1
  store i64 %110, i64* %113, align 8
  %114 = load i32, i32* %5, align 4
  %115 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %116 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 6
  store i32 %114, i32* %117, align 8
  %118 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %136, label %122

122:                                              ; preds = %109
  %123 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %124 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 5
  store i64 0, i64* %125, align 8
  %126 = load i32, i32* @ATH_TXMGTTRY, align 4
  %127 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %128 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load %struct.TYPE_8__*, %struct.TYPE_8__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i32 %126, i32* %132, align 8
  %133 = load %struct.ath_buf*, %struct.ath_buf** %4, align 8
  %134 = getelementptr inbounds %struct.ath_buf, %struct.ath_buf* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 4
  store i32 %126, i32* %135, align 8
  br label %136

136:                                              ; preds = %29, %122, %109
  ret void
}

declare dso_local i64 @ath_tx_findrix(%struct.ath_softc*, i64) #1

declare dso_local i64 @ath_tx_get_rtscts_rate(i32, %struct.TYPE_10__*, i64, i32) #1

declare dso_local i32 @ath_tx_is_11n(%struct.ath_softc*) #1

declare dso_local i32 @ath_tx_calc_ctsduration(i32, i64, i64, i32, i32, %struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
