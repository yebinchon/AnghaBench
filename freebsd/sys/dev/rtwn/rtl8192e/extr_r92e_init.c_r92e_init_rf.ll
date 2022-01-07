; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_init.c_r92e_init_rf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_init.c_r92e_init_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32, i32*, %struct.r92e_softc* }
%struct.r92e_softc = type { i32* }

@R92C_HSSI_PARAM2_ADDR_LENGTH = common dso_local global i32 0, align 4
@R92C_HSSI_PARAM2_DATA_LENGTH = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW = common dso_local global i32 0, align 4
@R92C_FPGA0_RFMOD = common dso_local global i32 0, align 4
@R92C_RFMOD_CCK_EN = common dso_local global i32 0, align 4
@R92C_RFMOD_OFDM_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r92e_init_rf(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  %3 = alloca %struct.r92e_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %10, i32 0, i32 2
  %12 = load %struct.r92e_softc*, %struct.r92e_softc** %11, align 8
  store %struct.r92e_softc* %12, %struct.r92e_softc** %3, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %82, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %16 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %87

19:                                               ; preds = %13
  %20 = load i32, i32* %7, align 4
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = srem i32 %22, 2
  %24 = mul nsw i32 %23, 16
  store i32 %24, i32* %9, align 4
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @R92C_FPGA0_RFIFACESW(i32 %26)
  %28 = call i32 @rtwn_bb_read(%struct.rtwn_softc* %25, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %9, align 4
  %31 = ashr i32 %29, %30
  %32 = and i32 %31, 16
  store i32 %32, i32* %5, align 4
  %33 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @R92C_FPGA0_RFIFACEOE(i32 %34)
  %36 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %33, i32 %35, i32 0, i32 1048576)
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %38 = call i32 @rtwn_delay(%struct.rtwn_softc* %37, i32 1)
  %39 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @R92C_FPGA0_RFIFACEOE(i32 %40)
  %42 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %39, i32 %41, i32 0, i32 16)
  %43 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %44 = call i32 @rtwn_delay(%struct.rtwn_softc* %43, i32 1)
  %45 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @R92C_HSSI_PARAM2(i32 %46)
  %48 = load i32, i32* @R92C_HSSI_PARAM2_ADDR_LENGTH, align 4
  %49 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %45, i32 %47, i32 %48, i32 0)
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %51 = call i32 @rtwn_delay(%struct.rtwn_softc* %50, i32 1)
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @R92C_HSSI_PARAM2(i32 %53)
  %55 = load i32, i32* @R92C_HSSI_PARAM2_DATA_LENGTH, align 4
  %56 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %52, i32 %54, i32 %55, i32 0)
  %57 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %58 = call i32 @rtwn_delay(%struct.rtwn_softc* %57, i32 1)
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %60 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %61 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %7, align 4
  %67 = call i64 @r92c_init_rf_chain(%struct.rtwn_softc* %59, i32* %65, i32 %66)
  %68 = load i32, i32* %6, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %6, align 4
  %72 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* @R92C_RF_CHNLBW, align 4
  %75 = call i32 @rtwn_rf_read(%struct.rtwn_softc* %72, i32 %73, i32 %74)
  %76 = load %struct.r92e_softc*, %struct.r92e_softc** %3, align 8
  %77 = getelementptr inbounds %struct.r92e_softc, %struct.r92e_softc* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32 %75, i32* %81, align 4
  br label %82

82:                                               ; preds = %19
  %83 = load i32, i32* %7, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %7, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %6, align 4
  br label %13

87:                                               ; preds = %13
  %88 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %89 = load i32, i32* @R92C_FPGA0_RFMOD, align 4
  %90 = load i32, i32* @R92C_RFMOD_CCK_EN, align 4
  %91 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %88, i32 %89, i32 0, i32 %90)
  %92 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %93 = load i32, i32* @R92C_FPGA0_RFMOD, align 4
  %94 = load i32, i32* @R92C_RFMOD_OFDM_EN, align 4
  %95 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %92, i32 %93, i32 0, i32 %94)
  ret void
}

declare dso_local i32 @rtwn_bb_read(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R92C_FPGA0_RFIFACESW(i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @R92C_FPGA0_RFIFACEOE(i32) #1

declare dso_local i32 @rtwn_delay(%struct.rtwn_softc*, i32) #1

declare dso_local i32 @R92C_HSSI_PARAM2(i32) #1

declare dso_local i64 @r92c_init_rf_chain(%struct.rtwn_softc*, i32*, i32) #1

declare dso_local i32 @rtwn_rf_read(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
