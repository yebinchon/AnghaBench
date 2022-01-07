; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_calib.c_r92c_iq_calib_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_calib.c_r92c_iq_calib_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_IQK_AGC_RSP = common dso_local global i32 0, align 4
@R92C_IQK_AGC_PTS = common dso_local global i32 0, align 4
@R92C_IQK_AGC_CONT = common dso_local global i32 0, align 4
@R92C_POWER_IQK_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, i32, i32*, i32*)* @r92c_iq_calib_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r92c_iq_calib_chain(%struct.rtwn_softc* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtwn_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %4
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %15 = call i32 @R92C_TX_IQK_TONE(i32 0)
  %16 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %14, i32 %15, i32 268471327)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %18 = call i32 @R92C_RX_IQK_TONE(i32 0)
  %19 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %17, i32 %18, i32 268471327)
  %20 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %21 = call i32 @R92C_TX_IQK_PI(i32 0)
  %22 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %20, i32 %21, i32 -2112618238)
  %23 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %24 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp sgt i32 %25, 1
  br i1 %26, label %27, label %43

27:                                               ; preds = %13
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %29 = call i32 @R92C_RX_IQK_PI(i32 0)
  %30 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %28, i32 %29, i32 672530946)
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %32 = call i32 @R92C_TX_IQK_TONE(i32 1)
  %33 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %31, i32 %32, i32 268471330)
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %35 = call i32 @R92C_RX_IQK_TONE(i32 1)
  %36 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %34, i32 %35, i32 268471330)
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %38 = call i32 @R92C_TX_IQK_PI(i32 1)
  %39 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %37, i32 %38, i32 -2112618238)
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %41 = call i32 @R92C_RX_IQK_PI(i32 1)
  %42 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %40, i32 %41, i32 672530946)
  br label %47

43:                                               ; preds = %13
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %45 = call i32 @R92C_RX_IQK_PI(i32 0)
  %46 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %44, i32 %45, i32 672531714)
  br label %47

47:                                               ; preds = %43, %27
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %49 = load i32, i32* @R92C_IQK_AGC_RSP, align 4
  %50 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %48, i32 %49, i32 1059025)
  %51 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %52 = load i32, i32* @R92C_IQK_AGC_PTS, align 4
  %53 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %51, i32 %52, i32 -117440512)
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %55 = load i32, i32* @R92C_IQK_AGC_PTS, align 4
  %56 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %54, i32 %55, i32 -134217728)
  br label %64

57:                                               ; preds = %4
  %58 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %59 = load i32, i32* @R92C_IQK_AGC_CONT, align 4
  %60 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %58, i32 %59, i32 2)
  %61 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %62 = load i32, i32* @R92C_IQK_AGC_CONT, align 4
  %63 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %61, i32 %62, i32 0)
  br label %64

64:                                               ; preds = %57, %47
  %65 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %66 = call i32 @rtwn_delay(%struct.rtwn_softc* %65, i32 10000)
  %67 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %68 = call i32 @R92C_RX_POWER_IQK_AFTER(i32 0)
  %69 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %67, i32 %68)
  store i32 %69, i32* %10, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %7, align 4
  %72 = mul nsw i32 %71, 3
  %73 = add nsw i32 28, %72
  %74 = shl i32 1, %73
  %75 = and i32 %70, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %142

78:                                               ; preds = %64
  %79 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @R92C_TX_POWER_IQK_BEFORE(i32 %80)
  %82 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %79, i32 %81)
  %83 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %84 = call i32 @MS(i32 %82, i32 %83)
  %85 = load i32*, i32** %8, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @R92C_TX_POWER_IQK_AFTER(i32 %88)
  %90 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %87, i32 %89)
  %91 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %92 = call i32 @MS(i32 %90, i32 %91)
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 %92, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 322
  br i1 %98, label %104, label %99

99:                                               ; preds = %78
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = icmp eq i32 %102, 66
  br i1 %103, label %104, label %105

104:                                              ; preds = %99, %78
  store i32 0, i32* %5, align 4
  br label %142

105:                                              ; preds = %99
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %7, align 4
  %108 = mul nsw i32 %107, 3
  %109 = add nsw i32 27, %108
  %110 = shl i32 1, %109
  %111 = and i32 %106, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  store i32 1, i32* %5, align 4
  br label %142

114:                                              ; preds = %105
  %115 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @R92C_RX_POWER_IQK_BEFORE(i32 %116)
  %118 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %115, i32 %117)
  %119 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %120 = call i32 @MS(i32 %118, i32 %119)
  %121 = load i32*, i32** %9, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 0
  store i32 %120, i32* %122, align 4
  %123 = load %struct.rtwn_softc*, %struct.rtwn_softc** %6, align 8
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @R92C_RX_POWER_IQK_AFTER(i32 %124)
  %126 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %123, i32 %125)
  %127 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %128 = call i32 @MS(i32 %126, i32 %127)
  %129 = load i32*, i32** %9, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 %128, i32* %130, align 4
  %131 = load i32*, i32** %9, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 0
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 306
  br i1 %134, label %140, label %135

135:                                              ; preds = %114
  %136 = load i32*, i32** %9, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  %138 = load i32, i32* %137, align 4
  %139 = icmp eq i32 %138, 54
  br i1 %139, label %140, label %141

140:                                              ; preds = %135, %114
  store i32 1, i32* %5, align 4
  br label %142

141:                                              ; preds = %135
  store i32 3, i32* %5, align 4
  br label %142

142:                                              ; preds = %141, %140, %113, %104, %77
  %143 = load i32, i32* %5, align 4
  ret i32 %143
}

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @R92C_TX_IQK_TONE(i32) #1

declare dso_local i32 @R92C_RX_IQK_TONE(i32) #1

declare dso_local i32 @R92C_TX_IQK_PI(i32) #1

declare dso_local i32 @R92C_RX_IQK_PI(i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R92C_RX_POWER_IQK_AFTER(i32) #1

declare dso_local i32 @MS(i32, i32) #1

declare dso_local i32 @R92C_TX_POWER_IQK_BEFORE(i32) #1

declare dso_local i32 @R92C_TX_POWER_IQK_AFTER(i32) #1

declare dso_local i32 @R92C_RX_POWER_IQK_BEFORE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
