; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_announce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mwl/extr_if_mwl.c_mwl_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwl_softc = type { i32, i32, i32, %struct.mwl_txq**, %struct.TYPE_2__ }
%struct.mwl_txq = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"Rev A%d hardware, v%d.%d.%d.%d firmware (regioncode %d)\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@WME_AC_VO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Use hw queue %u for %s traffic\0A\00", align 1
@ieee80211_wme_acnames = common dso_local global i32* null, align 8
@mwl_rxdesc = common dso_local global i64 0, align 8
@MWL_RXDESC = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [25 x i8] c"using %u rx descriptors\0A\00", align 1
@mwl_rxbuf = common dso_local global i64 0, align 8
@MWL_RXBUF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [21 x i8] c"using %u rx buffers\0A\00", align 1
@mwl_txbuf = common dso_local global i64 0, align 8
@MWL_TXBUF = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [21 x i8] c"using %u tx buffers\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"multi-bss support\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mwl_softc*)* @mwl_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl_announce(%struct.mwl_softc* %0) #0 {
  %2 = alloca %struct.mwl_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwl_txq*, align 8
  store %struct.mwl_softc* %0, %struct.mwl_softc** %2, align 8
  %5 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %8, i32 0, i32 4
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %13 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %12, i32 0, i32 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  %18 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %19 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 255
  %24 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %24, i32 0, i32 4
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 8
  %29 = and i32 %28, 255
  %30 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %31 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %30, i32 0, i32 4
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = ashr i32 %33, 0
  %35 = and i32 %34, 255
  %36 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %36, i32 0, i32 4
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %7, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %17, i32 %23, i32 %29, i32 %35, i32 %39)
  %41 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %42 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %46 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load i64, i64* @bootverbose, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %78

49:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %74, %49
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* @WME_AC_VO, align 4
  %53 = icmp sle i32 %51, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %50
  %55 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %55, i32 0, i32 3
  %57 = load %struct.mwl_txq**, %struct.mwl_txq*** %56, align 8
  %58 = load i32, i32* %3, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.mwl_txq*, %struct.mwl_txq** %57, i64 %59
  %61 = load %struct.mwl_txq*, %struct.mwl_txq** %60, align 8
  store %struct.mwl_txq* %61, %struct.mwl_txq** %4, align 8
  %62 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %63 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mwl_txq*, %struct.mwl_txq** %4, align 8
  %66 = getelementptr inbounds %struct.mwl_txq, %struct.mwl_txq* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** @ieee80211_wme_acnames, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @device_printf(i32 %64, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %72)
  br label %74

74:                                               ; preds = %54
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  br label %50

77:                                               ; preds = %50
  br label %78

78:                                               ; preds = %77, %1
  %79 = load i64, i64* @bootverbose, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %78
  %82 = load i64, i64* @mwl_rxdesc, align 8
  %83 = load i64, i64* @MWL_RXDESC, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %91

85:                                               ; preds = %81, %78
  %86 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i64, i64* @mwl_rxdesc, align 8
  %90 = call i32 (i32, i8*, ...) @device_printf(i32 %88, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i64 %89)
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i64, i64* @bootverbose, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %98, label %94

94:                                               ; preds = %91
  %95 = load i64, i64* @mwl_rxbuf, align 8
  %96 = load i64, i64* @MWL_RXBUF, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %94, %91
  %99 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %100 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i64, i64* @mwl_rxbuf, align 8
  %103 = call i32 (i32, i8*, ...) @device_printf(i32 %101, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i64 %102)
  br label %104

104:                                              ; preds = %98, %94
  %105 = load i64, i64* @bootverbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %111, label %107

107:                                              ; preds = %104
  %108 = load i64, i64* @mwl_txbuf, align 8
  %109 = load i64, i64* @MWL_TXBUF, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %117

111:                                              ; preds = %107, %104
  %112 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %113 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i64, i64* @mwl_txbuf, align 8
  %116 = call i32 (i32, i8*, ...) @device_printf(i32 %114, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i64 %115)
  br label %117

117:                                              ; preds = %111, %107
  %118 = load i64, i64* @bootverbose, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %131

120:                                              ; preds = %117
  %121 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %122 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @mwl_hal_ismbsscapable(i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.mwl_softc*, %struct.mwl_softc** %2, align 8
  %128 = getelementptr inbounds %struct.mwl_softc, %struct.mwl_softc* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i8*, ...) @device_printf(i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0))
  br label %131

131:                                              ; preds = %126, %120, %117
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @mwl_hal_ismbsscapable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
