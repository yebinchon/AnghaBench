; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_set_band_2ghz.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8812a/extr_r12a_chan.c_r12a_set_band_2ghz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { %struct.r12a_softc* }
%struct.r12a_softc = type { i32 }

@R12A_OFDMCCK_EN = common dso_local global i32 0, align 4
@R12A_OFDMCCK_EN_CCK = common dso_local global i32 0, align 4
@R12A_OFDMCCK_EN_OFDM = common dso_local global i32 0, align 4
@R12A_BW_INDICATION = common dso_local global i32 0, align 4
@R12A_PWED_TH = common dso_local global i32 0, align 4
@R12A_TXAGC_TABLE_SELECT = common dso_local global i32 0, align 4
@R12A_ANTSEL_SW = common dso_local global i32 0, align 4
@R12A_TX_PATH = common dso_local global i32 0, align 4
@R12A_CCK_RX_PATH = common dso_local global i32 0, align 4
@R12A_CCK_CHECK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r12a_set_band_2ghz(%struct.rtwn_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.r12a_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %7 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %6, i32 0, i32 0
  %8 = load %struct.r12a_softc*, %struct.r12a_softc** %7, align 8
  store %struct.r12a_softc* %8, %struct.r12a_softc** %5, align 8
  %9 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %10 = load i32, i32* @R12A_OFDMCCK_EN, align 4
  %11 = load i32, i32* @R12A_OFDMCCK_EN_CCK, align 4
  %12 = load i32, i32* @R12A_OFDMCCK_EN_OFDM, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %9, i32 %10, i32 0, i32 %13)
  %15 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %16 = load i32, i32* @R12A_BW_INDICATION, align 4
  %17 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %15, i32 %16, i32 2, i32 1)
  %18 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %19 = load i32, i32* @R12A_PWED_TH, align 4
  %20 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %18, i32 %19, i32 253952, i32 188416)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %22 = load i32, i32* @R12A_TXAGC_TABLE_SELECT, align 4
  %23 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %21, i32 %22, i32 3, i32 0)
  %24 = load %struct.r12a_softc*, %struct.r12a_softc** %5, align 8
  %25 = getelementptr inbounds %struct.r12a_softc, %struct.r12a_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %84 [
    i32 0, label %27
    i32 1, label %27
    i32 2, label %27
    i32 3, label %40
    i32 4, label %56
    i32 5, label %69
  ]

27:                                               ; preds = %2, %2, %2
  %28 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %29 = call i32 @R12A_RFE_PINMUX(i32 0)
  %30 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %28, i32 %29, i32 2004318071)
  %31 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %32 = call i32 @R12A_RFE_PINMUX(i32 1)
  %33 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %31, i32 %32, i32 2004318071)
  %34 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %35 = call i32 @R12A_RFE_INV(i32 0)
  %36 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %34, i32 %35, i32 1072693248, i32 0)
  %37 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %38 = call i32 @R12A_RFE_INV(i32 1)
  %39 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %37, i32 %38, i32 1072693248, i32 0)
  br label %85

40:                                               ; preds = %2
  %41 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %42 = call i32 @R12A_RFE_PINMUX(i32 0)
  %43 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %41, i32 %42, i32 1412659056)
  %44 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %45 = call i32 @R12A_RFE_PINMUX(i32 1)
  %46 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %44, i32 %45, i32 1412659056)
  %47 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %48 = call i32 @R12A_RFE_INV(i32 0)
  %49 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %47, i32 %48, i32 1072693248, i32 16777216)
  %50 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %51 = call i32 @R12A_RFE_INV(i32 1)
  %52 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %50, i32 %51, i32 1072693248, i32 16777216)
  %53 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %54 = load i32, i32* @R12A_ANTSEL_SW, align 4
  %55 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %53, i32 %54, i32 771, i32 1)
  br label %85

56:                                               ; preds = %2
  %57 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %58 = call i32 @R12A_RFE_PINMUX(i32 0)
  %59 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %57, i32 %58, i32 2004318071)
  %60 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %61 = call i32 @R12A_RFE_PINMUX(i32 1)
  %62 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %60, i32 %61, i32 2004318071)
  %63 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %64 = call i32 @R12A_RFE_INV(i32 0)
  %65 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %63, i32 %64, i32 1072693248, i32 1048576)
  %66 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %67 = call i32 @R12A_RFE_INV(i32 1)
  %68 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %66, i32 %67, i32 1072693248, i32 1048576)
  br label %85

69:                                               ; preds = %2
  %70 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %71 = call i32 @R12A_RFE_PINMUX(i32 0)
  %72 = add nsw i32 %71, 2
  %73 = call i32 @rtwn_write_1(%struct.rtwn_softc* %70, i32 %72, i32 119)
  %74 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %75 = call i32 @R12A_RFE_PINMUX(i32 1)
  %76 = call i32 @rtwn_bb_write(%struct.rtwn_softc* %74, i32 %75, i32 2004318071)
  %77 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %78 = call i32 @R12A_RFE_INV(i32 0)
  %79 = add nsw i32 %78, 3
  %80 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %77, i32 %79, i32 1, i32 0)
  %81 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %82 = call i32 @R12A_RFE_INV(i32 1)
  %83 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %81, i32 %82, i32 1072693248, i32 0)
  br label %85

84:                                               ; preds = %2
  br label %85

85:                                               ; preds = %84, %69, %56, %40, %27
  %86 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %87 = load i32, i32* @R12A_TX_PATH, align 4
  %88 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %86, i32 %87, i32 240, i32 16)
  %89 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %90 = load i32, i32* @R12A_CCK_RX_PATH, align 4
  %91 = call i32 @rtwn_bb_setbits(%struct.rtwn_softc* %89, i32 %90, i32 251658240, i32 16777216)
  %92 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @rtwn_set_basicrates(%struct.rtwn_softc* %92, i32 %93)
  %95 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %96 = load i32, i32* @R12A_CCK_CHECK, align 4
  %97 = call i32 @rtwn_write_1(%struct.rtwn_softc* %95, i32 %96, i32 0)
  ret void
}

declare dso_local i32 @rtwn_bb_setbits(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_bb_write(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @R12A_RFE_PINMUX(i32) #1

declare dso_local i32 @R12A_RFE_INV(i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_set_basicrates(%struct.rtwn_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
