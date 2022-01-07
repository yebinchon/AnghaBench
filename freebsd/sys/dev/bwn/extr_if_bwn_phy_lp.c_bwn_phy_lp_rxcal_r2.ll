; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rxcal_r2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn_phy_lp.c_bwn_phy_lp_rxcal_r2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_wpair = type { i32, i32, i32, i32 }
%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i32 }

@bwn_phy_lp_rxcal_r2.v1 = internal constant [8 x %struct.bwn_wpair] [%struct.bwn_wpair { i32 129, i32 0, i32 0, i32 0 }, %struct.bwn_wpair { i32 134, i32 126, i32 0, i32 0 }, %struct.bwn_wpair { i32 134, i32 124, i32 0, i32 0 }, %struct.bwn_wpair { i32 133, i32 21, i32 0, i32 0 }, %struct.bwn_wpair { i32 132, i32 112, i32 0, i32 0 }, %struct.bwn_wpair { i32 131, i32 82, i32 0, i32 0 }, %struct.bwn_wpair { i32 130, i32 1, i32 0, i32 0 }, %struct.bwn_wpair { i32 134, i32 125, i32 0, i32 0 }], align 16
@bwn_phy_lp_rxcal_r2.v2 = internal constant [5 x %struct.bwn_wpair] [%struct.bwn_wpair { i32 128, i32 0, i32 0, i32 0 }, %struct.bwn_wpair { i32 134, i32 126, i32 0, i32 0 }, %struct.bwn_wpair { i32 134, i32 124, i32 0, i32 0 }, %struct.bwn_wpair { i32 133, i32 85, i32 0, i32 0 }, %struct.bwn_wpair { i32 132, i32 118, i32 0, i32 0 }], align 16
@BHND_CLOCK_ALP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"failed to fetch clock frequency: %d\00", align 1
@BWN_B2063_PLL_SP1 = common dso_local global i32 0, align 4
@BWN_B2063_RC_CALIB_CTL6 = common dso_local global i32 0, align 4
@BWN_B2063_PA_SP7 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bwn_mac*)* @bwn_phy_lp_rxcal_r2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bwn_phy_lp_rxcal_r2(%struct.bwn_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  %9 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %10 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %9, i32 0, i32 0
  %11 = load %struct.bwn_softc*, %struct.bwn_softc** %10, align 8
  store %struct.bwn_softc* %11, %struct.bwn_softc** %4, align 8
  %12 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %13 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @BHND_CLOCK_ALP, align 4
  %16 = call i32 @bhnd_get_clock_freq(i32 %14, i32 %15, i32* %5)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %1
  %20 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %21 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %2, align 4
  br label %168

26:                                               ; preds = %1
  %27 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %28 = call i32 @BWN_RF_READ(%struct.bwn_mac* %27, i32 129)
  %29 = and i32 %28, 255
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %46, %26
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 2
  br i1 %32, label %33, label %49

33:                                               ; preds = %30
  %34 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [8 x %struct.bwn_wpair], [8 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v1, i64 0, i64 %36
  %38 = getelementptr inbounds %struct.bwn_wpair, %struct.bwn_wpair* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [8 x %struct.bwn_wpair], [8 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v1, i64 0, i64 %41
  %43 = getelementptr inbounds %struct.bwn_wpair, %struct.bwn_wpair* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %34, i32 %39, i32 %44)
  br label %46

46:                                               ; preds = %33
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %30

49:                                               ; preds = %30
  %50 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %51 = load i32, i32* @BWN_B2063_PLL_SP1, align 4
  %52 = call i32 @BWN_RF_MASK(%struct.bwn_mac* %50, i32 %51, i32 247)
  store i32 2, i32* %7, align 4
  br label %53

53:                                               ; preds = %70, %49
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @N(%struct.bwn_wpair* getelementptr inbounds ([8 x %struct.bwn_wpair], [8 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v1, i64 0, i64 0))
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %53
  %58 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %59 = load i32, i32* %7, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [8 x %struct.bwn_wpair], [8 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v1, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.bwn_wpair, %struct.bwn_wpair* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x %struct.bwn_wpair], [8 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v1, i64 0, i64 %65
  %67 = getelementptr inbounds %struct.bwn_wpair, %struct.bwn_wpair* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %58, i32 %63, i32 %68)
  br label %70

70:                                               ; preds = %57
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  br label %53

73:                                               ; preds = %53
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %86, %73
  %75 = load i32, i32* %7, align 4
  %76 = icmp slt i32 %75, 10000
  br i1 %76, label %77, label %89

77:                                               ; preds = %74
  %78 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %79 = load i32, i32* @BWN_B2063_RC_CALIB_CTL6, align 4
  %80 = call i32 @BWN_RF_READ(%struct.bwn_mac* %78, i32 %79)
  %81 = and i32 %80, 2
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  br label %89

84:                                               ; preds = %77
  %85 = call i32 @DELAY(i32 1000)
  br label %86

86:                                               ; preds = %84
  %87 = load i32, i32* %7, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %7, align 4
  br label %74

89:                                               ; preds = %83, %74
  %90 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %91 = load i32, i32* @BWN_B2063_RC_CALIB_CTL6, align 4
  %92 = call i32 @BWN_RF_READ(%struct.bwn_mac* %90, i32 %91)
  %93 = and i32 %92, 2
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %99, label %95

95:                                               ; preds = %89
  %96 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %96, i32 129, i32 %97)
  br label %99

99:                                               ; preds = %95, %89
  %100 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %101 = call i32 @BWN_RF_READ(%struct.bwn_mac* %100, i32 128)
  %102 = and i32 %101, 255
  store i32 %102, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %103

103:                                              ; preds = %120, %99
  %104 = load i32, i32* %7, align 4
  %105 = call i32 @N(%struct.bwn_wpair* getelementptr inbounds ([5 x %struct.bwn_wpair], [5 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v2, i64 0, i64 0))
  %106 = icmp slt i32 %104, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %103
  %108 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [5 x %struct.bwn_wpair], [5 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v2, i64 0, i64 %110
  %112 = getelementptr inbounds %struct.bwn_wpair, %struct.bwn_wpair* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [5 x %struct.bwn_wpair], [5 x %struct.bwn_wpair]* @bwn_phy_lp_rxcal_r2.v2, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.bwn_wpair, %struct.bwn_wpair* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %108, i32 %113, i32 %118)
  br label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %103

123:                                              ; preds = %103
  %124 = load i32, i32* %5, align 4
  %125 = icmp eq i32 %124, 24000000
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %128 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %127, i32 131, i32 252)
  %129 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %130 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %129, i32 130, i32 0)
  br label %136

131:                                              ; preds = %123
  %132 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %133 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %132, i32 131, i32 19)
  %134 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %135 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %134, i32 130, i32 1)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %138 = load i32, i32* @BWN_B2063_PA_SP7, align 4
  %139 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %137, i32 %138, i32 125)
  store i32 0, i32* %7, align 4
  br label %140

140:                                              ; preds = %152, %136
  %141 = load i32, i32* %7, align 4
  %142 = icmp slt i32 %141, 10000
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %145 = load i32, i32* @BWN_B2063_RC_CALIB_CTL6, align 4
  %146 = call i32 @BWN_RF_READ(%struct.bwn_mac* %144, i32 %145)
  %147 = and i32 %146, 2
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  br label %155

150:                                              ; preds = %143
  %151 = call i32 @DELAY(i32 1000)
  br label %152

152:                                              ; preds = %150
  %153 = load i32, i32* %7, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %7, align 4
  br label %140

155:                                              ; preds = %149, %140
  %156 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %157 = load i32, i32* @BWN_B2063_RC_CALIB_CTL6, align 4
  %158 = call i32 @BWN_RF_READ(%struct.bwn_mac* %156, i32 %157)
  %159 = and i32 %158, 2
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %165, label %161

161:                                              ; preds = %155
  %162 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %163 = load i32, i32* %8, align 4
  %164 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %162, i32 128, i32 %163)
  br label %165

165:                                              ; preds = %161, %155
  %166 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %167 = call i32 @BWN_RF_WRITE(%struct.bwn_mac* %166, i32 134, i32 126)
  store i32 0, i32* %2, align 4
  br label %168

168:                                              ; preds = %165, %19
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @bhnd_get_clock_freq(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @BWN_RF_READ(%struct.bwn_mac*, i32) #1

declare dso_local i32 @BWN_RF_WRITE(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @BWN_RF_MASK(%struct.bwn_mac*, i32, i32) #1

declare dso_local i32 @N(%struct.bwn_wpair*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
