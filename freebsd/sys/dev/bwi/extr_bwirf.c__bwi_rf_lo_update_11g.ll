; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c__bwi_rf_lo_update_11g.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwirf.c__bwi_rf_lo_update_11g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { %struct.TYPE_2__, %struct.bwi_softc* }
%struct.TYPE_2__ = type { i32 }
%struct.bwi_softc = type { i32 }
%struct.bwi_rf_lo = type { i32 }

@_bwi_rf_lo_update_11g.rf_atten_list = internal constant [14 x i32] [i32 3, i32 1, i32 5, i32 7, i32 9, i32 2, i32 0, i32 4, i32 6, i32 8, i32 1, i32 2, i32 3, i32 4], align 16
@_bwi_rf_lo_update_11g.rf_atten_init_list = internal constant [14 x i32] [i32 0, i32 3, i32 1, i32 5, i32 7, i32 3, i32 2, i32 0, i32 4, i32 6, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@_bwi_rf_lo_update_11g.rf_lo_measure_order = internal constant [14 x i32] [i32 3, i32 1, i32 5, i32 7, i32 9, i32 2, i32 0, i32 4, i32 6, i32 8, i32 10, i32 11, i32 12, i32 13], align 16
@BWI_F_RUNNING = common dso_local global i32 0, align 4
@BWI_RFR_ATTEN = common dso_local global i32 0, align 4
@BWI_RFR_TXPWR = common dso_local global i32 0, align 4
@BBP_ATTEN_MAX = common dso_local global i32 0, align 4
@RF_ATTEN_LISTSZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwi_mac*, i32)* @_bwi_rf_lo_update_11g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_bwi_rf_lo_update_11g(%struct.bwi_mac* %0, i32 %1) #0 {
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bwi_softc*, align 8
  %6 = alloca %struct.bwi_rf_lo, align 4
  %7 = alloca %struct.bwi_rf_lo*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  store i32 %1, i32* %4, align 4
  %17 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %18 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %17, i32 0, i32 1
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %18, align 8
  store %struct.bwi_softc* %19, %struct.bwi_softc** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %20 = call i32 @bzero(%struct.bwi_rf_lo* %6, i32 4)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %152, %2
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 14
  br i1 %23, label %24, label %155

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [14 x i32], [14 x i32]* @_bwi_rf_lo_update_11g.rf_atten_init_list, i64 0, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [14 x i32], [14 x i32]* @_bwi_rf_lo_update_11g.rf_atten_list, i64 0, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %33

33:                                               ; preds = %148, %24
  %34 = load i32, i32* %13, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %151

36:                                               ; preds = %33
  %37 = load %struct.bwi_softc*, %struct.bwi_softc** %5, align 8
  %38 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @BWI_F_RUNNING, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %87

43:                                               ; preds = %36
  %44 = load i32, i32* %9, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = call i32 @bzero(%struct.bwi_rf_lo* %6, i32 4)
  br label %66

48:                                               ; preds = %43
  %49 = load i32, i32* %11, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 2, %54
  %56 = call %struct.bwi_rf_lo* @bwi_get_rf_lo(%struct.bwi_mac* %52, i32 %53, i32 %55)
  store %struct.bwi_rf_lo* %56, %struct.bwi_rf_lo** %7, align 8
  %57 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %7, align 8
  %58 = call i32 @bcopy(%struct.bwi_rf_lo* %57, %struct.bwi_rf_lo* %6, i32 4)
  br label %65

59:                                               ; preds = %48
  %60 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call %struct.bwi_rf_lo* @bwi_get_rf_lo(%struct.bwi_mac* %60, i32 %61, i32 0)
  store %struct.bwi_rf_lo* %62, %struct.bwi_rf_lo** %7, align 8
  %63 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %7, align 8
  %64 = call i32 @bcopy(%struct.bwi_rf_lo* %63, %struct.bwi_rf_lo* %6, i32 4)
  br label %65

65:                                               ; preds = %59, %51
  br label %66

66:                                               ; preds = %65, %46
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %86

69:                                               ; preds = %66
  %70 = load i32, i32* %12, align 4
  %71 = mul nsw i32 %70, 2
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %71, %72
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp sgt i32 %74, 14
  br i1 %75, label %76, label %85

76:                                               ; preds = %69
  store i32 1, i32* %10, align 4
  %77 = load i32, i32* %16, align 4
  %78 = icmp sgt i32 %77, 17
  br i1 %78, label %79, label %80

79:                                               ; preds = %76
  store i32 1, i32* %8, align 4
  br label %80

80:                                               ; preds = %79, %76
  %81 = load i32, i32* %16, align 4
  %82 = icmp sgt i32 %81, 19
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  store i32 2, i32* %8, align 4
  br label %84

84:                                               ; preds = %83, %80
  br label %85

85:                                               ; preds = %84, %69
  br label %86

86:                                               ; preds = %85, %66
  br label %101

87:                                               ; preds = %36
  %88 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* %13, align 4
  %91 = mul nsw i32 2, %90
  %92 = call %struct.bwi_rf_lo* @bwi_get_rf_lo(%struct.bwi_mac* %88, i32 %89, i32 %91)
  store %struct.bwi_rf_lo* %92, %struct.bwi_rf_lo** %7, align 8
  %93 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %94 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %7, align 8
  %95 = call i32 @bwi_rf_lo_isused(%struct.bwi_mac* %93, %struct.bwi_rf_lo* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  br label %148

98:                                               ; preds = %87
  %99 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %7, align 8
  %100 = call i32 @bcopy(%struct.bwi_rf_lo* %99, %struct.bwi_rf_lo* %6, i32 4)
  store i32 3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %98, %86
  %102 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %103 = load i32, i32* @BWI_RFR_ATTEN, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @RF_WRITE(%struct.bwi_mac* %102, i32 %103, i32 %104)
  %106 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %107 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %14, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %101
  %113 = load i32, i32* %14, align 4
  %114 = or i32 %113, 48
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %112, %101
  %116 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %117 = load i32, i32* @BWI_RFR_TXPWR, align 4
  %118 = load i32, i32* %14, align 4
  %119 = call i32 @RF_WRITE(%struct.bwi_mac* %116, i32 %117, i32 %118)
  %120 = call i32 @DELAY(i32 10)
  %121 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %122 = load i32, i32* %13, align 4
  %123 = mul nsw i32 %122, 2
  %124 = call i32 @bwi_phy_set_bbp_atten(%struct.bwi_mac* %121, i32 %123)
  %125 = load i32, i32* %4, align 4
  %126 = and i32 %125, 65520
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %10, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %115
  %130 = load i32, i32* %15, align 4
  %131 = or i32 %130, 8
  store i32 %131, i32* %15, align 4
  br label %132

132:                                              ; preds = %129, %115
  %133 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %134 = load i32, i32* %15, align 4
  %135 = call i32 @RF_WRITE(%struct.bwi_mac* %133, i32 122, i32 %134)
  %136 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [14 x i32], [14 x i32]* @_bwi_rf_lo_update_11g.rf_lo_measure_order, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %13, align 4
  %142 = mul nsw i32 %141, 2
  %143 = call %struct.bwi_rf_lo* @bwi_get_rf_lo(%struct.bwi_mac* %136, i32 %140, i32 %142)
  store %struct.bwi_rf_lo* %143, %struct.bwi_rf_lo** %7, align 8
  %144 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %145 = load %struct.bwi_rf_lo*, %struct.bwi_rf_lo** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = call i32 @bwi_rf_lo_measure_11g(%struct.bwi_mac* %144, %struct.bwi_rf_lo* %6, %struct.bwi_rf_lo* %145, i32 %146)
  br label %148

148:                                              ; preds = %132, %97
  %149 = load i32, i32* %13, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %13, align 4
  br label %33

151:                                              ; preds = %33
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %9, align 4
  br label %21

155:                                              ; preds = %21
  %156 = load i32, i32* %8, align 4
  ret i32 %156
}

declare dso_local i32 @bzero(%struct.bwi_rf_lo*, i32) #1

declare dso_local %struct.bwi_rf_lo* @bwi_get_rf_lo(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @bcopy(%struct.bwi_rf_lo*, %struct.bwi_rf_lo*, i32) #1

declare dso_local i32 @bwi_rf_lo_isused(%struct.bwi_mac*, %struct.bwi_rf_lo*) #1

declare dso_local i32 @RF_WRITE(%struct.bwi_mac*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @bwi_phy_set_bbp_atten(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_rf_lo_measure_11g(%struct.bwi_mac*, %struct.bwi_rf_lo*, %struct.bwi_rf_lo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
