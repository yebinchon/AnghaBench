; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sge/extr_if_sge.c_sge_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_softc = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, %struct.ifnet* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ifnet = type { i32 }
%struct.mii_data = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"no memory for Rx buffers\0A\00", align 1
@TX_DESC = common dso_local global i32 0, align 4
@RX_DESC = common dso_local global i32 0, align 4
@TxMacControl = common dso_local global i32 0, align 4
@RxWakeOnLan = common dso_local global i32 0, align 4
@RxWakeOnLanData = common dso_local global i32 0, align 4
@RxMPSControl = common dso_local global i32 0, align 4
@ETHER_MAX_LEN = common dso_local global i32 0, align 4
@ETHER_VLAN_ENCAP_LEN = common dso_local global i32 0, align 4
@SGE_RX_PAD_BYTES = common dso_local global i32 0, align 4
@ETHER_ADDR_LEN = common dso_local global i32 0, align 4
@RxMacAddr = common dso_local global i64 0, align 8
@RXMAC_STRIP_FCS = common dso_local global i32 0, align 4
@RXMAC_PAD_ENB = common dso_local global i32 0, align 4
@RXMAC_CSUM_ENB = common dso_local global i32 0, align 4
@RxMacControl = common dso_local global i32 0, align 4
@SGE_FLAG_FASTETHER = common dso_local global i32 0, align 4
@SGE_FLAG_SPEED_1000 = common dso_local global i32 0, align 4
@SGE_FLAG_FDX = common dso_local global i32 0, align 4
@SGE_FLAG_RGMII = common dso_local global i32 0, align 4
@StationControl = common dso_local global i32 0, align 4
@IntrControl = common dso_local global i32 0, align 4
@IntrStatus = common dso_local global i32 0, align 4
@IntrMask = common dso_local global i32 0, align 4
@SGE_INTRS = common dso_local global i32 0, align 4
@TX_CTL = common dso_local global i32 0, align 4
@TX_CTL_ENB = common dso_local global i32 0, align 4
@RX_CTL = common dso_local global i32 0, align 4
@RX_CTL_POLL = common dso_local global i32 0, align 4
@RX_CTL_ENB = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@SGE_FLAG_LINK = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@sge_tick = common dso_local global i32 0, align 4
@IntrTimer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sge_softc*)* @sge_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_init_locked(%struct.sge_softc* %0) #0 {
  %2 = alloca %struct.sge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  %4 = alloca %struct.mii_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sge_softc* %0, %struct.sge_softc** %2, align 8
  %7 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %8 = call i32 @SGE_LOCK_ASSERT(%struct.sge_softc* %7)
  %9 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %9, i32 0, i32 7
  %11 = load %struct.ifnet*, %struct.ifnet** %10, align 8
  store %struct.ifnet* %11, %struct.ifnet** %3, align 8
  %12 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mii_data* @device_get_softc(i32 %14)
  store %struct.mii_data* %15, %struct.mii_data** %4, align 8
  %16 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %17 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %189

23:                                               ; preds = %1
  %24 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %25 = call i32 @sge_stop(%struct.sge_softc* %24)
  %26 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %27 = call i32 @sge_reset(%struct.sge_softc* %26)
  %28 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %29 = call i64 @sge_list_rx_init(%struct.sge_softc* %28)
  %30 = load i64, i64* @ENOBUFS, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %34 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @device_printf(i32 %35, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %38 = call i32 @sge_stop(%struct.sge_softc* %37)
  br label %189

39:                                               ; preds = %23
  %40 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %41 = call i32 @sge_list_tx_init(%struct.sge_softc* %40)
  %42 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %43 = load i32, i32* @TX_DESC, align 4
  %44 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %45 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %44, i32 0, i32 4
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @SGE_ADDR_LO(i32 %47)
  %49 = call i32 @CSR_WRITE_4(%struct.sge_softc* %42, i32 %43, i32 %48)
  %50 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %51 = load i32, i32* @RX_DESC, align 4
  %52 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %53 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @SGE_ADDR_LO(i32 %55)
  %57 = call i32 @CSR_WRITE_4(%struct.sge_softc* %50, i32 %51, i32 %56)
  %58 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %59 = load i32, i32* @TxMacControl, align 4
  %60 = call i32 @CSR_WRITE_4(%struct.sge_softc* %58, i32 %59, i32 96)
  %61 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %62 = load i32, i32* @RxWakeOnLan, align 4
  %63 = call i32 @CSR_WRITE_4(%struct.sge_softc* %61, i32 %62, i32 0)
  %64 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %65 = load i32, i32* @RxWakeOnLanData, align 4
  %66 = call i32 @CSR_WRITE_4(%struct.sge_softc* %64, i32 %65, i32 0)
  %67 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %68 = load i32, i32* @RxMPSControl, align 4
  %69 = load i32, i32* @ETHER_MAX_LEN, align 4
  %70 = load i32, i32* @ETHER_VLAN_ENCAP_LEN, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* @SGE_RX_PAD_BYTES, align 4
  %73 = add nsw i32 %71, %72
  %74 = call i32 @CSR_WRITE_2(%struct.sge_softc* %67, i32 %68, i32 %73)
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %92, %39
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ETHER_ADDR_LEN, align 4
  %78 = icmp slt i32 %76, %77
  br i1 %78, label %79, label %95

79:                                               ; preds = %75
  %80 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %81 = load i64, i64* @RxMacAddr, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %81, %83
  %85 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %86 = call i32* @IF_LLADDR(%struct.ifnet* %85)
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32, i32* %86, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CSR_WRITE_1(%struct.sge_softc* %80, i64 %84, i32 %90)
  br label %92

92:                                               ; preds = %79
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %75

95:                                               ; preds = %75
  %96 = load i32, i32* @RXMAC_STRIP_FCS, align 4
  %97 = load i32, i32* @RXMAC_PAD_ENB, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RXMAC_CSUM_ENB, align 4
  %100 = or i32 %98, %99
  store i32 %100, i32* %5, align 4
  %101 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %102 = load i32, i32* @RxMacControl, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @CSR_WRITE_2(%struct.sge_softc* %101, i32 %102, i32 %103)
  %105 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %106 = call i32 @sge_rxfilter(%struct.sge_softc* %105)
  %107 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %108 = call i32 @sge_setvlan(%struct.sge_softc* %107)
  %109 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %110 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SGE_FLAG_FASTETHER, align 4
  %113 = and i32 %111, %112
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121

115:                                              ; preds = %95
  %116 = load i32, i32* @SGE_FLAG_SPEED_1000, align 4
  %117 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %118 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %115, %95
  %122 = load i32, i32* @SGE_FLAG_FDX, align 4
  %123 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %124 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %128 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @SGE_FLAG_RGMII, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %121
  %134 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %135 = load i32, i32* @StationControl, align 4
  %136 = call i32 @CSR_WRITE_4(%struct.sge_softc* %134, i32 %135, i32 67141633)
  br label %141

137:                                              ; preds = %121
  %138 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %139 = load i32, i32* @StationControl, align 4
  %140 = call i32 @CSR_WRITE_4(%struct.sge_softc* %138, i32 %139, i32 67108865)
  br label %141

141:                                              ; preds = %137, %133
  %142 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %143 = load i32, i32* @IntrControl, align 4
  %144 = call i32 @CSR_WRITE_4(%struct.sge_softc* %142, i32 %143, i32 143130624)
  %145 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %146 = load i32, i32* @IntrStatus, align 4
  %147 = call i32 @CSR_WRITE_4(%struct.sge_softc* %145, i32 %146, i32 -1)
  %148 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %149 = load i32, i32* @IntrMask, align 4
  %150 = load i32, i32* @SGE_INTRS, align 4
  %151 = call i32 @CSR_WRITE_4(%struct.sge_softc* %148, i32 %149, i32 %150)
  %152 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %153 = load i32, i32* @TX_CTL, align 4
  %154 = load i32, i32* @TX_CTL_ENB, align 4
  %155 = or i32 6656, %154
  %156 = call i32 @CSR_WRITE_4(%struct.sge_softc* %152, i32 %153, i32 %155)
  %157 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %158 = load i32, i32* @RX_CTL, align 4
  %159 = load i32, i32* @RX_CTL_POLL, align 4
  %160 = or i32 6668, %159
  %161 = load i32, i32* @RX_CTL_ENB, align 4
  %162 = or i32 %160, %161
  %163 = call i32 @CSR_WRITE_4(%struct.sge_softc* %157, i32 %158, i32 %162)
  %164 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %165 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %170 = xor i32 %169, -1
  %171 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %172 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* @SGE_FLAG_LINK, align 4
  %176 = xor i32 %175, -1
  %177 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %178 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = and i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %182 = call i32 @mii_mediachg(%struct.mii_data* %181)
  %183 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %184 = getelementptr inbounds %struct.sge_softc, %struct.sge_softc* %183, i32 0, i32 3
  %185 = load i32, i32* @hz, align 4
  %186 = load i32, i32* @sge_tick, align 4
  %187 = load %struct.sge_softc*, %struct.sge_softc** %2, align 8
  %188 = call i32 @callout_reset(i32* %184, i32 %185, i32 %186, %struct.sge_softc* %187)
  br label %189

189:                                              ; preds = %141, %32, %22
  ret void
}

declare dso_local i32 @SGE_LOCK_ASSERT(%struct.sge_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32) #1

declare dso_local i32 @sge_stop(%struct.sge_softc*) #1

declare dso_local i32 @sge_reset(%struct.sge_softc*) #1

declare dso_local i64 @sge_list_rx_init(%struct.sge_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @sge_list_tx_init(%struct.sge_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.sge_softc*, i32, i32) #1

declare dso_local i32 @SGE_ADDR_LO(i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.sge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_1(%struct.sge_softc*, i64, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @sge_rxfilter(%struct.sge_softc*) #1

declare dso_local i32 @sge_setvlan(%struct.sge_softc*) #1

declare dso_local i32 @mii_mediachg(%struct.mii_data*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.sge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
