; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_announce.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_announce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i64, i32, %struct.TYPE_2__*, %struct.ath_txq**, %struct.ath_hal* }
%struct.TYPE_2__ = type { i32 }
%struct.ath_txq = type { i32 }
%struct.ath_hal = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s mac %d.%d RF%s phy %d.%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"2GHz radio: 0x%.4x; 5GHz radio: 0x%.4x\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@WME_AC_VO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Use hw queue %u for %s traffic\0A\00", align 1
@ieee80211_wme_acnames = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Use hw queue %u for CAB traffic\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Use hw queue %u for beacons\0A\00", align 1
@ath_rxbuf = common dso_local global i64 0, align 8
@ATH_RXBUF = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [21 x i8] c"using %u rx buffers\0A\00", align 1
@ath_txbuf = common dso_local global i64 0, align 8
@ATH_TXBUF = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [21 x i8] c"using %u tx buffers\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"using multicast key search\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*)* @ath_announce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_announce(%struct.ath_softc* %0) #0 {
  %2 = alloca %struct.ath_softc*, align 8
  %3 = alloca %struct.ath_hal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath_txq*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %2, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 5
  %8 = load %struct.ath_hal*, %struct.ath_hal** %7, align 8
  store %struct.ath_hal* %8, %struct.ath_hal** %3, align 8
  %9 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %13 = call i32 @ath_hal_mac_name(%struct.ath_hal* %12)
  %14 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %15 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %18 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %21 = call i32 @ath_hal_rf_name(%struct.ath_hal* %20)
  %22 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %23 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 4
  %26 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %27 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 15
  %30 = call i32 (i32, i8*, ...) @device_printf(i32 %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19, i32 %21, i32 %25, i32 %29)
  %31 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %32 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %35 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ath_hal*, %struct.ath_hal** %3, align 8
  %38 = getelementptr inbounds %struct.ath_hal, %struct.ath_hal* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 (i32, i8*, ...) @device_printf(i32 %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %39)
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %88

43:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %68, %43
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @WME_AC_VO, align 4
  %47 = icmp sle i32 %45, %46
  br i1 %47, label %48, label %71

48:                                               ; preds = %44
  %49 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 4
  %51 = load %struct.ath_txq**, %struct.ath_txq*** %50, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ath_txq*, %struct.ath_txq** %51, i64 %53
  %55 = load %struct.ath_txq*, %struct.ath_txq** %54, align 8
  store %struct.ath_txq* %55, %struct.ath_txq** %5, align 8
  %56 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.ath_txq*, %struct.ath_txq** %5, align 8
  %60 = getelementptr inbounds %struct.ath_txq, %struct.ath_txq* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** @ieee80211_wme_acnames, align 8
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %66)
  br label %68

68:                                               ; preds = %48
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %44

71:                                               ; preds = %44
  %72 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %73 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %76 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %75, i32 0, i32 3
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %74, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %85 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = call i32 (i32, i8*, ...) @device_printf(i32 %83, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %86)
  br label %88

88:                                               ; preds = %71, %1
  %89 = load i64, i64* @ath_rxbuf, align 8
  %90 = load i64, i64* @ATH_RXBUF, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %98

92:                                               ; preds = %88
  %93 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %94 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* @ath_rxbuf, align 8
  %97 = call i32 (i32, i8*, ...) @device_printf(i32 %95, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i64 %96)
  br label %98

98:                                               ; preds = %92, %88
  %99 = load i64, i64* @ath_txbuf, align 8
  %100 = load i64, i64* @ATH_TXBUF, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %98
  %103 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %104 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i64, i64* @ath_txbuf, align 8
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %105, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %102, %98
  %109 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %110 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i64, i64* @bootverbose, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %121

116:                                              ; preds = %113
  %117 = load %struct.ath_softc*, %struct.ath_softc** %2, align 8
  %118 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 (i32, i8*, ...) @device_printf(i32 %119, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %121

121:                                              ; preds = %116, %113, %108
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @ath_hal_mac_name(%struct.ath_hal*) #1

declare dso_local i32 @ath_hal_rf_name(%struct.ath_hal*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
