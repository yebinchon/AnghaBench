; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_chan.c_r92e_set_bw40.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8192e/extr_r92e_chan.c_r92e_set_bw40.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_WMAC_TRXPTCL_CTL = common dso_local global i32 0, align 4
@R12A_DATA_SEC = common dso_local global i32 0, align 4
@R12A_DATA_SEC_PRIM_DOWN_20 = common dso_local global i32 0, align 4
@R12A_DATA_SEC_PRIM_UP_20 = common dso_local global i32 0, align 4
@R92C_FPGA0_RFMOD = common dso_local global i32 0, align 4
@R92C_RFMOD_40MHZ = common dso_local global i32 0, align 4
@R92C_FPGA1_RFMOD = common dso_local global i32 0, align 4
@R92C_RF_CHNLBW = common dso_local global i32 0, align 4
@R88E_RF_CHNLBW_BW20 = common dso_local global i32 0, align 4
@R92C_CCK0_SYSTEM = common dso_local global i32 0, align 4
@R92C_CCK0_SYSTEM_CCK_SIDEBAND = common dso_local global i32 0, align 4
@R92C_OFDM1_LSTF = common dso_local global i32 0, align 4
@R92C_FPGA0_ANAPARAM2 = common dso_local global i32 0, align 4
@R92C_FPGA0_ANAPARAM2_CBW20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, i32, i32)* @r92e_set_bw40 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r92e_set_bw40(%struct.rtwn_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %9 = load i32, i32* @R92C_WMAC_TRXPTCL_CTL, align 4
  %10 = call i32 @rtwn_setbits_2(%struct.rtwn_softc* %8, i32 %9, i32 256, i32 128)
  %11 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %12 = load i32, i32* @R12A_DATA_SEC, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @R12A_DATA_SEC_PRIM_DOWN_20, align 4
  br label %19

17:                                               ; preds = %3
  %18 = load i32, i32* @R12A_DATA_SEC_PRIM_UP_20, align 4
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i32 [ %16, %15 ], [ %18, %17 ]
  %21 = call i32 @rtwn_write_1(%struct.rtwn_softc* %11, i32 %12, i32 %20)
  %22 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %23 = load i32, i32* @R92C_FPGA0_RFMOD, align 4
  %24 = load i32, i32* @R92C_RFMOD_40MHZ, align 4
  %25 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %22, i32 %23, i32 0, i32 %24)
  %26 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %27 = load i32, i32* @R92C_FPGA1_RFMOD, align 4
  %28 = load i32, i32* @R92C_RFMOD_40MHZ, align 4
  %29 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %26, i32 %27, i32 0, i32 %28)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %42, %19
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %45

36:                                               ; preds = %30
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @R92C_RF_CHNLBW, align 4
  %40 = load i32, i32* @R88E_RF_CHNLBW_BW20, align 4
  %41 = call i32 @rtwn_rf_setbits(%struct.rtwn_softc* %37, i32 %38, i32 %39, i32 %40, i32 1024)
  br label %42

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %7, align 4
  br label %30

45:                                               ; preds = %30
  %46 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %47 = load i32, i32* @R92C_CCK0_SYSTEM, align 4
  %48 = load i32, i32* @R92C_CCK0_SYSTEM_CCK_SIDEBAND, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 0, i32 1
  %53 = shl i32 %52, 4
  %54 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %46, i32 %47, i32 %48, i32 %53)
  %55 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %56 = load i32, i32* @R92C_OFDM1_LSTF, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 1, i32 2
  %61 = shl i32 %60, 10
  %62 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %55, i32 %56, i32 3072, i32 %61)
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %64 = load i32, i32* @R92C_FPGA0_ANAPARAM2, align 4
  %65 = load i32, i32* @R92C_FPGA0_ANAPARAM2_CBW20, align 4
  %66 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %63, i32 %64, i32 %65, i32 0)
  %67 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  %70 = zext i1 %69 to i64
  %71 = select i1 %69, i32 2, i32 1
  %72 = shl i32 %71, 26
  %73 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %67, i32 2072, i32 201326592, i32 %72)
  ret void
}

declare dso_local i32 @rtwn_setbits_2(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_rf_setbits(%struct.rtwn_softc*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
