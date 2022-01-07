; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_configure_audio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hdmi/extr_dwc_hdmi.c_dwc_hdmi_configure_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc_hdmi_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@HDMI_AUD_N1 = common dso_local global i32 0, align 4
@HDMI_AUD_N2 = common dso_local global i32 0, align 4
@HDMI_AUD_N3 = common dso_local global i32 0, align 4
@HDMI_AUD_CTS3 = common dso_local global i32 0, align 4
@HDMI_AUD_CTS3_N_SHIFT_MASK = common dso_local global i32 0, align 4
@HDMI_AUD_CTS3_CTS_MANUAL = common dso_local global i32 0, align 4
@HDMI_AUD_CONF0 = common dso_local global i32 0, align 4
@HDMI_AUD_CONF0_INTERFACE_MASK = common dso_local global i32 0, align 4
@HDMI_AUD_CONF0_INTERFACE_IIS = common dso_local global i32 0, align 4
@HDMI_AUD_CONF0_I2SINEN_MASK = common dso_local global i32 0, align 4
@HDMI_AUD_CONF0_I2SINEN_CH2 = common dso_local global i32 0, align 4
@HDMI_AUD_CONF1 = common dso_local global i32 0, align 4
@HDMI_AUD_CONF1_DATAMODE_MASK = common dso_local global i32 0, align 4
@HDMI_AUD_CONF1_DATAMODE_IIS = common dso_local global i32 0, align 4
@HDMI_AUD_CONF1_DATWIDTH_MASK = common dso_local global i32 0, align 4
@HDMI_AUD_CONF1_DATWIDTH_16BIT = common dso_local global i32 0, align 4
@HDMI_AUD_INPUTCLKFS = common dso_local global i32 0, align 4
@HDMI_AUD_INPUTCLKFS_64 = common dso_local global i32 0, align 4
@HDMI_FC_AUDICONF0 = common dso_local global i32 0, align 4
@HDMI_FC_AUDICONF1 = common dso_local global i32 0, align 4
@HDMI_FC_AUDICONF2 = common dso_local global i32 0, align 4
@HDMI_FC_AUDICONF3 = common dso_local global i32 0, align 4
@HDMI_FC_AUDSV = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS = common dso_local global i32 0, align 4
@HDMI_MC_CLKDIS_AUDCLK_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc_hdmi_softc*)* @dwc_hdmi_configure_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc_hdmi_configure_audio(%struct.dwc_hdmi_softc* %0) #0 {
  %2 = alloca %struct.dwc_hdmi_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.dwc_hdmi_softc* %0, %struct.dwc_hdmi_softc** %2, align 8
  %5 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %6 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %124

10:                                               ; preds = %1
  %11 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %12 = getelementptr inbounds %struct.dwc_hdmi_softc, %struct.dwc_hdmi_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %19 [
    i32 25170, label %15
    i32 27020, label %16
    i32 74170, label %17
    i32 148350, label %18
  ]

15:                                               ; preds = %10
  store i32 6864, i32* %3, align 4
  br label %20

16:                                               ; preds = %10
  store i32 6144, i32* %3, align 4
  br label %20

17:                                               ; preds = %10
  store i32 11648, i32* %3, align 4
  br label %20

18:                                               ; preds = %10
  store i32 5824, i32* %3, align 4
  br label %20

19:                                               ; preds = %10
  store i32 6144, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %18, %17, %16, %15
  %21 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %22 = load i32, i32* @HDMI_AUD_N1, align 4
  %23 = load i32, i32* %3, align 4
  %24 = lshr i32 %23, 0
  %25 = and i32 %24, 255
  %26 = call i32 @WR1(%struct.dwc_hdmi_softc* %21, i32 %22, i32 %25)
  %27 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %28 = load i32, i32* @HDMI_AUD_N2, align 4
  %29 = load i32, i32* %3, align 4
  %30 = lshr i32 %29, 8
  %31 = and i32 %30, 255
  %32 = call i32 @WR1(%struct.dwc_hdmi_softc* %27, i32 %28, i32 %31)
  %33 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %34 = load i32, i32* @HDMI_AUD_N3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = lshr i32 %35, 16
  %37 = and i32 %36, 255
  %38 = call i32 @WR1(%struct.dwc_hdmi_softc* %33, i32 %34, i32 %37)
  %39 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %40 = load i32, i32* @HDMI_AUD_CTS3, align 4
  %41 = call i32 @RD1(%struct.dwc_hdmi_softc* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @HDMI_AUD_CTS3_N_SHIFT_MASK, align 4
  %43 = load i32, i32* @HDMI_AUD_CTS3_CTS_MANUAL, align 4
  %44 = or i32 %42, %43
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %4, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %4, align 4
  %48 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %49 = load i32, i32* @HDMI_AUD_CTS3, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @WR1(%struct.dwc_hdmi_softc* %48, i32 %49, i32 %50)
  %52 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %53 = load i32, i32* @HDMI_AUD_CONF0, align 4
  %54 = call i32 @RD1(%struct.dwc_hdmi_softc* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* @HDMI_AUD_CONF0_INTERFACE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %4, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* @HDMI_AUD_CONF0_INTERFACE_IIS, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  %62 = load i32, i32* @HDMI_AUD_CONF0_I2SINEN_MASK, align 4
  %63 = xor i32 %62, -1
  %64 = load i32, i32* %4, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %4, align 4
  %66 = load i32, i32* @HDMI_AUD_CONF0_I2SINEN_CH2, align 4
  %67 = load i32, i32* %4, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %4, align 4
  %69 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %70 = load i32, i32* @HDMI_AUD_CONF0, align 4
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @WR1(%struct.dwc_hdmi_softc* %69, i32 %70, i32 %71)
  %73 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %74 = load i32, i32* @HDMI_AUD_CONF1, align 4
  %75 = call i32 @RD1(%struct.dwc_hdmi_softc* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* @HDMI_AUD_CONF1_DATAMODE_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = load i32, i32* %4, align 4
  %79 = and i32 %78, %77
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* @HDMI_AUD_CONF1_DATAMODE_IIS, align 4
  %81 = load i32, i32* %4, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %4, align 4
  %83 = load i32, i32* @HDMI_AUD_CONF1_DATWIDTH_MASK, align 4
  %84 = xor i32 %83, -1
  %85 = load i32, i32* %4, align 4
  %86 = and i32 %85, %84
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* @HDMI_AUD_CONF1_DATWIDTH_16BIT, align 4
  %88 = load i32, i32* %4, align 4
  %89 = or i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %91 = load i32, i32* @HDMI_AUD_CONF1, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @WR1(%struct.dwc_hdmi_softc* %90, i32 %91, i32 %92)
  %94 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %95 = load i32, i32* @HDMI_AUD_INPUTCLKFS, align 4
  %96 = load i32, i32* @HDMI_AUD_INPUTCLKFS_64, align 4
  %97 = call i32 @WR1(%struct.dwc_hdmi_softc* %94, i32 %95, i32 %96)
  %98 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %99 = load i32, i32* @HDMI_FC_AUDICONF0, align 4
  %100 = call i32 @WR1(%struct.dwc_hdmi_softc* %98, i32 %99, i32 16)
  %101 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %102 = load i32, i32* @HDMI_FC_AUDICONF1, align 4
  %103 = call i32 @WR1(%struct.dwc_hdmi_softc* %101, i32 %102, i32 0)
  %104 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %105 = load i32, i32* @HDMI_FC_AUDICONF2, align 4
  %106 = call i32 @WR1(%struct.dwc_hdmi_softc* %104, i32 %105, i32 0)
  %107 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %108 = load i32, i32* @HDMI_FC_AUDICONF3, align 4
  %109 = call i32 @WR1(%struct.dwc_hdmi_softc* %107, i32 %108, i32 0)
  %110 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %111 = load i32, i32* @HDMI_FC_AUDSV, align 4
  %112 = call i32 @WR1(%struct.dwc_hdmi_softc* %110, i32 %111, i32 238)
  %113 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %114 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %115 = call i32 @RD1(%struct.dwc_hdmi_softc* %113, i32 %114)
  store i32 %115, i32* %4, align 4
  %116 = load i32, i32* @HDMI_MC_CLKDIS_AUDCLK_DISABLE, align 4
  %117 = xor i32 %116, -1
  %118 = load i32, i32* %4, align 4
  %119 = and i32 %118, %117
  store i32 %119, i32* %4, align 4
  %120 = load %struct.dwc_hdmi_softc*, %struct.dwc_hdmi_softc** %2, align 8
  %121 = load i32, i32* @HDMI_MC_CLKDIS, align 4
  %122 = load i32, i32* %4, align 4
  %123 = call i32 @WR1(%struct.dwc_hdmi_softc* %120, i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %20, %9
  ret void
}

declare dso_local i32 @WR1(%struct.dwc_hdmi_softc*, i32, i32) #1

declare dso_local i32 @RD1(%struct.dwc_hdmi_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
