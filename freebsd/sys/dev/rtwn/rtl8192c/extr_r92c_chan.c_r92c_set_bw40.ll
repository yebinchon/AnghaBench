; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_set_bw40.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192c/extr_r92c_chan.c_r92c_set_bw40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r92c_softc* }
%struct.r92c_softc = type { i32* }

@R92C_BWOPMODE = common dso_local global i64 0, align 8
@R92C_BWOPMODE_20MHZ = common dso_local global i32 0, align 4
@R92C_RRSR = common dso_local global i64 0, align 8
@R92C_FPGA0_RFMOD = common dso_local global i32 0, align 4
@R92C_RFMOD_40MHZ = common dso_local global i32 0, align 4
@R92C_FPGA1_RFMOD = common dso_local global i32 0, align 4
@R92C_CCK0_SYSTEM = common dso_local global i32 0, align 4
@R92C_OFDM1_LSTF = common dso_local global i32 0, align 4
@R92C_FPGA0_ANAPARAM2 = common dso_local global i32 0, align 4
@R92C_FPGA0_ANAPARAM2_CBW20 = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32, i32)* @r92c_set_bw40 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92c_set_bw40(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.r92c_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %9 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %8, i32 0, i32 0
  %10 = load %struct.r92c_softc*, %struct.r92c_softc** %9, align 8
  store %struct.r92c_softc* %10, %struct.r92c_softc** %7, align 8
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %12 = load i64, i64* @R92C_BWOPMODE, align 8
  %13 = load i32, i32* @R92C_BWOPMODE_20MHZ, align 4
  %14 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %11, i64 %12, i32 %13, i32 0)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %16 = load i64, i64* @R92C_RRSR, align 8
  %17 = add nsw i64 %16, 2
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 1, i32 2
  %22 = shl i32 %21, 5
  %23 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %15, i64 %17, i32 111, i32 %22)
  %24 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %25 = load i32, i32* @R92C_FPGA0_RFMOD, align 4
  %26 = load i32, i32* @R92C_RFMOD_40MHZ, align 4
  %27 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %24, i32 %25, i32 0, i32 %26)
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %29 = load i32, i32* @R92C_FPGA1_RFMOD, align 4
  %30 = load i32, i32* @R92C_RFMOD_40MHZ, align 4
  %31 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %28, i32 %29, i32 0, i32 %30)
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %33 = load i32, i32* @R92C_CCK0_SYSTEM, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 0, i32 1
  %38 = shl i32 %37, 4
  %39 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %32, i32 %33, i32 16, i32 %38)
  %40 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %41 = load i32, i32* @R92C_OFDM1_LSTF, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  %44 = zext i1 %43 to i64
  %45 = select i1 %43, i32 1, i32 2
  %46 = shl i32 %45, 10
  %47 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %40, i32 %41, i32 3072, i32 %46)
  %48 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %49 = load i32, i32* @R92C_FPGA0_ANAPARAM2, align 4
  %50 = load i32, i32* @R92C_FPGA0_ANAPARAM2_CBW20, align 4
  %51 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %48, i32 %49, i32 %50, i32 0)
  %52 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 2, i32 1
  %57 = shl i32 %56, 26
  %58 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %52, i32 2072, i32 201326592, i32 %57)
  %59 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %60 = load i32, i32* @R92C_RF_CHNLBW, align 4
  %61 = load %struct.r92c_softc*, %struct.r92c_softc** %7, align 8
  %62 = getelementptr inbounds %struct.r92c_softc, %struct.r92c_softc* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, -4096
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %66, %67
  %69 = call i32 @rtwn_rf_write(%struct.rtwn_softc* %59, i32 0, i32 %60, i32 %68)
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i64, i32, i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_rf_write(%struct.rtwn_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
