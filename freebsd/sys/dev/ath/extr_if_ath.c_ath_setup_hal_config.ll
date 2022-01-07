; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_setup_hal_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath.c_ath_setup_hal_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.ath_softc = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i8*, i8* }

@ATH_PCI_CUS198 = common dso_local global i32 0, align 4
@ATH_PCI_CUS230 = common dso_local global i32 0, align 4
@AH_TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [20 x i8] c"configuring for %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"CUS198\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"CUS230\00", align 1
@ATH_PCI_CUS217 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"CUS217 card detected\0A\00", align 1
@ATH_PCI_CUS252 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"CUS252 card detected\0A\00", align 1
@ATH_PCI_AR9565_1ANT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"WB335 1-ANT card detected\0A\00", align 1
@ATH_PCI_AR9565_2ANT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"WB335 2-ANT card detected\0A\00", align 1
@ATH_PCI_BT_ANT_DIV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [43 x i8] c"Bluetooth Antenna Diversity card detected\0A\00", align 1
@ATH_PCI_KILLER = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Killer Wireless card detected\0A\00", align 1
@ATH_PCI_D3_L1_WAR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [27 x i8] c"Enable WAR for ASPM D3/L1\0A\00", align 1
@ATH9K_HW_CAP_ANT_DIV_COMB = common dso_local global i32 0, align 4
@ATH9K_HW_CAP_BT_ANT_DIV = common dso_local global i32 0, align 4
@ATH9K_PCI_AR9565_1ANT = common dso_local global i32 0, align 4
@ATH9K_PCI_AR9565_2ANT = common dso_local global i32 0, align 4
@ATH9K_PCI_BT_ANT_DIV = common dso_local global i32 0, align 4
@ATH9K_PCI_NO_PLL_PWRSAVE = common dso_local global i32 0, align 4
@ah = common dso_local global %struct.TYPE_9__* null, align 8
@pCap = common dso_local global %struct.TYPE_8__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.TYPE_7__*)* @ath_setup_hal_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_setup_hal_config(%struct.ath_softc* %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %4, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @ATH_PCI_CUS198, align 4
  %9 = load i32, i32* @ATH_PCI_CUS230, align 4
  %10 = or i32 %8, %9
  %11 = and i32 %7, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  store i32 512, i32* %15, align 8
  %16 = load i8*, i8** @AH_TRUE, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 4
  store i8* %16, i8** %18, align 8
  %19 = load i8*, i8** @AH_TRUE, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 768904, i32* %23, align 4
  %24 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %28 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @ATH_PCI_CUS198, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %36

36:                                               ; preds = %13, %2
  %37 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %38 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ATH_PCI_CUS217, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %36
  %44 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %45 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @device_printf(i32 %46, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %36
  %49 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %50 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ATH_PCI_CUS252, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %48
  %56 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 (i32, i8*, ...) @device_printf(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %55, %48
  %61 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %62 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @ATH_PCI_AR9565_1ANT, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %60
  %68 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @device_printf(i32 %70, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  br label %72

72:                                               ; preds = %67, %60
  %73 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %74 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ATH_PCI_AR9565_2ANT, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %81 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 (i32, i8*, ...) @device_printf(i32 %82, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0))
  br label %84

84:                                               ; preds = %79, %72
  %85 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATH_PCI_BT_ANT_DIV, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %84
  %92 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %93 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 (i32, i8*, ...) @device_printf(i32 %94, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.7, i64 0, i64 0))
  br label %96

96:                                               ; preds = %91, %84
  %97 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %98 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ATH_PCI_KILLER, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %96
  %104 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %105 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32, i8*, ...) @device_printf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %108

108:                                              ; preds = %103, %96
  %109 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %110 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @ATH_PCI_D3_L1_WAR, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %108
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 2
  store i32 4212539, i32* %117, align 8
  %118 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %119 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = call i32 (i32, i8*, ...) @device_printf(i32 %120, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.9, i64 0, i64 0))
  br label %122

122:                                              ; preds = %115, %108
  ret void
}

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
