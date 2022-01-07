; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_tx_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_tx_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32, i32 }

@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_TX_CONF = common dso_local global i32 0, align 4
@URTW_TX_LOOPBACK_MASK = common dso_local global i32 0, align 4
@URTW_TX_DPRETRY_MASK = common dso_local global i32 0, align 4
@URTW_TX_RTSRETRY_MASK = common dso_local global i32 0, align 4
@URTW_TX_NOCRC = common dso_local global i32 0, align 4
@URTW_TX_MXDMA_MASK = common dso_local global i32 0, align 4
@URTW_TX_SWPLCPLEN = common dso_local global i32 0, align 4
@URTW_TX_HW_SEQNUM = common dso_local global i32 0, align 4
@URTW_TX_DISREQQSIZE = common dso_local global i32 0, align 4
@URTW_MSR = common dso_local global i32 0, align 4
@URTW_MSR_LINK_ENEDCA = common dso_local global i32 0, align 4
@URTW_CW_CONF = common dso_local global i32 0, align 4
@URTW_CW_CONF_PERPACKET_CW = common dso_local global i32 0, align 4
@URTW_CW_CONF_PERPACKET_RETRY = common dso_local global i32 0, align 4
@URTW_TX_AGC_CTL = common dso_local global i32 0, align 4
@URTW_TX_AGC_CTL_PERPACKET_GAIN = common dso_local global i32 0, align 4
@URTW_TX_AGC_CTL_PERPACKET_ANTSEL = common dso_local global i32 0, align 4
@URTW_TX_AGC_CTL_FEEDBACK_ANT = common dso_local global i32 0, align 4
@URTW_TX_LOOPBACK_NONE = common dso_local global i32 0, align 4
@URTW_TX_DPRETRY_SHIFT = common dso_local global i32 0, align 4
@URTW_TX_RTSRETRY_SHIFT = common dso_local global i32 0, align 4
@URTW_TX_MXDMA_2048 = common dso_local global i32 0, align 4
@URTW_TX_CWMIN = common dso_local global i32 0, align 4
@URTW_TX_DISCW = common dso_local global i32 0, align 4
@URTW_TX_NOICV = common dso_local global i32 0, align 4
@URTW_CMD = common dso_local global i32 0, align 4
@URTW_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*)* @urtw_tx_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_tx_enable(%struct.urtw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %8 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @URTW_RTL8187B, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %60

13:                                               ; preds = %1
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %15 = load i32, i32* @URTW_TX_CONF, align 4
  %16 = call i32 @urtw_read32_m(%struct.urtw_softc* %14, i32 %15, i32* %5)
  %17 = load i32, i32* @URTW_TX_LOOPBACK_MASK, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* @URTW_TX_DPRETRY_MASK, align 4
  %22 = load i32, i32* @URTW_TX_RTSRETRY_MASK, align 4
  %23 = or i32 %21, %22
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @URTW_TX_NOCRC, align 4
  %28 = load i32, i32* @URTW_TX_MXDMA_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* @URTW_TX_SWPLCPLEN, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %5, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* @URTW_TX_HW_SEQNUM, align 4
  %38 = load i32, i32* @URTW_TX_DISREQQSIZE, align 4
  %39 = or i32 %37, %38
  %40 = or i32 %39, 1792
  %41 = or i32 %40, 7
  %42 = or i32 %41, 14680064
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %46 = load i32, i32* @URTW_TX_CONF, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @urtw_write32_m(%struct.urtw_softc* %45, i32 %46, i32 %47)
  %49 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %50 = load i32, i32* @URTW_MSR, align 4
  %51 = call i32 @urtw_read8_m(%struct.urtw_softc* %49, i32 %50, i32* %4)
  %52 = load i32, i32* @URTW_MSR_LINK_ENEDCA, align 4
  %53 = load i32, i32* %4, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %4, align 4
  %55 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %56 = load i32, i32* @URTW_MSR, align 4
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @urtw_write8_m(%struct.urtw_softc* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %158

60:                                               ; preds = %1
  %61 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %62 = load i32, i32* @URTW_CW_CONF, align 4
  %63 = call i32 @urtw_read8_m(%struct.urtw_softc* %61, i32 %62, i32* %4)
  %64 = load i32, i32* @URTW_CW_CONF_PERPACKET_CW, align 4
  %65 = load i32, i32* @URTW_CW_CONF_PERPACKET_RETRY, align 4
  %66 = or i32 %64, %65
  %67 = xor i32 %66, -1
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, %67
  store i32 %69, i32* %4, align 4
  %70 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %71 = load i32, i32* @URTW_CW_CONF, align 4
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @urtw_write8_m(%struct.urtw_softc* %70, i32 %71, i32 %72)
  %74 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %75 = load i32, i32* @URTW_TX_AGC_CTL, align 4
  %76 = call i32 @urtw_read8_m(%struct.urtw_softc* %74, i32 %75, i32* %4)
  %77 = load i32, i32* @URTW_TX_AGC_CTL_PERPACKET_GAIN, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %4, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* @URTW_TX_AGC_CTL_PERPACKET_ANTSEL, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %4, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %4, align 4
  %85 = load i32, i32* @URTW_TX_AGC_CTL_FEEDBACK_ANT, align 4
  %86 = xor i32 %85, -1
  %87 = load i32, i32* %4, align 4
  %88 = and i32 %87, %86
  store i32 %88, i32* %4, align 4
  %89 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %90 = load i32, i32* @URTW_TX_AGC_CTL, align 4
  %91 = load i32, i32* %4, align 4
  %92 = call i32 @urtw_write8_m(%struct.urtw_softc* %89, i32 %90, i32 %91)
  %93 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %94 = load i32, i32* @URTW_TX_CONF, align 4
  %95 = call i32 @urtw_read32_m(%struct.urtw_softc* %93, i32 %94, i32* %5)
  %96 = load i32, i32* @URTW_TX_LOOPBACK_MASK, align 4
  %97 = xor i32 %96, -1
  %98 = load i32, i32* %5, align 4
  %99 = and i32 %98, %97
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* @URTW_TX_LOOPBACK_NONE, align 4
  %101 = load i32, i32* %5, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %5, align 4
  %103 = load i32, i32* @URTW_TX_DPRETRY_MASK, align 4
  %104 = load i32, i32* @URTW_TX_RTSRETRY_MASK, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %5, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %5, align 4
  %109 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %110 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @URTW_TX_DPRETRY_SHIFT, align 4
  %113 = shl i32 %111, %112
  %114 = load i32, i32* %5, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %5, align 4
  %116 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %117 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @URTW_TX_RTSRETRY_SHIFT, align 4
  %120 = shl i32 %118, %119
  %121 = load i32, i32* %5, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* @URTW_TX_NOCRC, align 4
  %124 = load i32, i32* @URTW_TX_MXDMA_MASK, align 4
  %125 = or i32 %123, %124
  %126 = xor i32 %125, -1
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, %126
  store i32 %128, i32* %5, align 4
  %129 = load i32, i32* @URTW_TX_MXDMA_2048, align 4
  %130 = load i32, i32* @URTW_TX_CWMIN, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @URTW_TX_DISCW, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* %5, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %5, align 4
  %136 = load i32, i32* @URTW_TX_SWPLCPLEN, align 4
  %137 = xor i32 %136, -1
  %138 = load i32, i32* %5, align 4
  %139 = and i32 %138, %137
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* @URTW_TX_NOICV, align 4
  %141 = load i32, i32* %5, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %5, align 4
  %143 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %144 = load i32, i32* @URTW_TX_CONF, align 4
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @urtw_write32_m(%struct.urtw_softc* %143, i32 %144, i32 %145)
  %147 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %148 = load i32, i32* @URTW_CMD, align 4
  %149 = call i32 @urtw_read8_m(%struct.urtw_softc* %147, i32 %148, i32* %4)
  %150 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %151 = load i32, i32* @URTW_CMD, align 4
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* @URTW_CMD_TX_ENABLE, align 4
  %154 = or i32 %152, %153
  %155 = call i32 @urtw_write8_m(%struct.urtw_softc* %150, i32 %151, i32 %154)
  br label %156

156:                                              ; preds = %60
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %13
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @urtw_read32_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
