; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_calib.c_r88e_iq_calib_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/extr_r88e_calib.c_r88e_iq_calib_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_FPGA0_IQK = common dso_local global i32 0, align 4
@R88E_RF_WE_LUT = common dso_local global i32 0, align 4
@R92C_RF_RCK_OS = common dso_local global i32 0, align 4
@R92C_TX_IQK = common dso_local global i32 0, align 4
@R92C_RX_IQK = common dso_local global i32 0, align 4
@R92C_IQK_AGC_RSP = common dso_local global i32 0, align 4
@R92C_IQK_AGC_PTS = common dso_local global i32 0, align 4
@R92C_POWER_IQK_RESULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, i32*, i32*)* @r88e_iq_calib_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r88e_iq_calib_chain(%struct.rtwn_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtwn_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %10 = load i32, i32* @R92C_FPGA0_IQK, align 4
  %11 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %9, i32 %10, i32 0)
  %12 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %13 = load i32, i32* @R88E_RF_WE_LUT, align 4
  %14 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %12, i32 0, i32 %13, i32 524448)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %16 = load i32, i32* @R92C_RF_RCK_OS, align 4
  %17 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %15, i32 0, i32 %16, i32 196608)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %19 = call i32 @R92C_RF_TXPA_G(i32 0)
  %20 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %18, i32 0, i32 %19, i32 15)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %22 = call i32 @R92C_RF_TXPA_G(i32 1)
  %23 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %21, i32 0, i32 %22, i32 987515)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %25 = load i32, i32* @R92C_FPGA0_IQK, align 4
  %26 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %24, i32 %25, i32 -2139095040)
  %27 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %28 = load i32, i32* @R92C_TX_IQK, align 4
  %29 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %27, i32 %28, i32 16808960)
  %30 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %31 = load i32, i32* @R92C_RX_IQK, align 4
  %32 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %30, i32 %31, i32 -2130688000)
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %34 = call i32 @R92C_TX_IQK_TONE(i32 0)
  %35 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %33, i32 %34, i32 268471324)
  %36 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %37 = call i32 @R92C_RX_IQK_TONE(i32 0)
  %38 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %36, i32 %37, i32 805342236)
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %40 = call i32 @R92C_TX_IQK_PI(i32 0)
  %41 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %39, i32 %40, i32 -2112485372)
  %42 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %43 = call i32 @R92C_RX_IQK_PI(i32 0)
  %44 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %42, i32 %43, i32 672530432)
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %46 = load i32, i32* @R92C_IQK_AGC_RSP, align 4
  %47 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %45, i32 %46, i32 4630801)
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %49 = load i32, i32* @R92C_IQK_AGC_PTS, align 4
  %50 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %48, i32 %49, i32 -117440512)
  %51 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %52 = load i32, i32* @R92C_IQK_AGC_PTS, align 4
  %53 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %51, i32 %52, i32 -134217728)
  %54 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %55 = call i32 @rtwn_delay(%struct.rtwn_softc* %54, i32 10000)
  %56 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %57 = call i32 @R92C_RX_POWER_IQK_AFTER(i32 0)
  %58 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %56, i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, 268435456
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %176

63:                                               ; preds = %3
  %64 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %65 = call i32 @R92C_TX_POWER_IQK_BEFORE(i32 0)
  %66 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %64, i32 %65)
  %67 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %68 = call i32 @MS(i32 %66, i32 %67)
  %69 = load i32*, i32** %6, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %72 = call i32 @R92C_TX_POWER_IQK_AFTER(i32 0)
  %73 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %71, i32 %72)
  %74 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %75 = call i32 @MS(i32 %73, i32 %74)
  %76 = load i32*, i32** %6, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %75, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 322
  br i1 %81, label %87, label %82

82:                                               ; preds = %63
  %83 = load i32*, i32** %6, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %85, 66
  br i1 %86, label %87, label %88

87:                                               ; preds = %82, %63
  store i32 0, i32* %4, align 4
  br label %176

88:                                               ; preds = %82
  %89 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %90 = load i32, i32* @R92C_TX_IQK, align 4
  %91 = load i32*, i32** %6, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 0
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 16
  %95 = or i32 -2147451904, %94
  %96 = load i32*, i32** %6, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = or i32 %95, %98
  %100 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %89, i32 %90, i32 %99)
  %101 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %102 = load i32, i32* @R92C_FPGA0_IQK, align 4
  %103 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %101, i32 %102, i32 0)
  %104 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %105 = load i32, i32* @R88E_RF_WE_LUT, align 4
  %106 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %104, i32 0, i32 %105, i32 524448)
  %107 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %108 = load i32, i32* @R92C_RF_RCK_OS, align 4
  %109 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %107, i32 0, i32 %108, i32 196608)
  %110 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %111 = call i32 @R92C_RF_TXPA_G(i32 0)
  %112 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %110, i32 0, i32 %111, i32 15)
  %113 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %114 = call i32 @R92C_RF_TXPA_G(i32 1)
  %115 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %113, i32 0, i32 %114, i32 1015802)
  %116 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %117 = load i32, i32* @R92C_FPGA0_IQK, align 4
  %118 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %116, i32 %117, i32 -2139095040)
  %119 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %120 = load i32, i32* @R92C_RX_IQK, align 4
  %121 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %119, i32 %120, i32 16795648)
  %122 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %123 = call i32 @R92C_TX_IQK_TONE(i32 0)
  %124 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %122, i32 %123, i32 805342236)
  %125 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %126 = call i32 @R92C_RX_IQK_TONE(i32 0)
  %127 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %125, i32 %126, i32 268471324)
  %128 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %129 = call i32 @R92C_TX_IQK_PI(i32 0)
  %130 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %128, i32 %129, i32 -2112484347)
  %131 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %132 = call i32 @R92C_RX_IQK_PI(i32 0)
  %133 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %131, i32 %132, i32 672533509)
  %134 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %135 = load i32, i32* @R92C_IQK_AGC_RSP, align 4
  %136 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %134, i32 %135, i32 4630801)
  %137 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %138 = load i32, i32* @R92C_IQK_AGC_PTS, align 4
  %139 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %137, i32 %138, i32 -117440512)
  %140 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %141 = load i32, i32* @R92C_IQK_AGC_PTS, align 4
  %142 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %140, i32 %141, i32 -134217728)
  %143 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %144 = call i32 @rtwn_delay(%struct.rtwn_softc* %143, i32 10000)
  %145 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %146 = call i32 @R92C_RX_POWER_IQK_AFTER(i32 0)
  %147 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %145, i32 %146)
  store i32 %147, i32* %8, align 4
  %148 = load i32, i32* %8, align 4
  %149 = and i32 %148, 134217728
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %88
  store i32 1, i32* %4, align 4
  br label %176

152:                                              ; preds = %88
  %153 = load %struct.rtwn_softc*, %struct.rtwn_softc** %5, align 8
  %154 = call i32 @R92C_RX_POWER_IQK_BEFORE(i32 0)
  %155 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %153, i32 %154)
  %156 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %157 = call i32 @MS(i32 %155, i32 %156)
  %158 = load i32*, i32** %7, align 8
  %159 = getelementptr inbounds i32, i32* %158, i64 0
  store i32 %157, i32* %159, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* @R92C_POWER_IQK_RESULT, align 4
  %162 = call i32 @MS(i32 %160, i32 %161)
  %163 = load i32*, i32** %7, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 1
  store i32 %162, i32* %164, align 4
  %165 = load i32*, i32** %7, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = load i32, i32* %166, align 4
  %168 = icmp eq i32 %167, 306
  br i1 %168, label %174, label %169

169:                                              ; preds = %152
  %170 = load i32*, i32** %7, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp eq i32 %172, 54
  br i1 %173, label %174, label %175

174:                                              ; preds = %169, %152
  store i32 1, i32* %4, align 4
  br label %176

175:                                              ; preds = %169
  store i32 3, i32* %4, align 4
  br label %176

176:                                              ; preds = %175, %174, %151, %87, %62
  %177 = load i32, i32* %4, align 4
  ret i32 %177
}

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R92C_RF_TXPA_G(i32) #1

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
