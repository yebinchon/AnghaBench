; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_init2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ti/extr_if_ti.c_ti_init2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_softc = type { i64, %struct.ifmedia, i32, i64, i32, %struct.ifnet* }
%struct.ifmedia = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ifnet = type { i64, i32, i32 }
%struct.ti_cmd_desc = type { i32 }

@TI_GCR_IFINDEX = common dso_local global i32 0, align 4
@TI_GCR_IFMTU = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@ETHER_CRC_LEN = common dso_local global i64 0, align 8
@ETHER_VLAN_ENCAP_LEN = common dso_local global i64 0, align 8
@TI_CMD_UPDATE_GENCOM = common dso_local global i32 0, align 4
@TI_GCR_PAR0 = common dso_local global i32 0, align 4
@TI_GCR_PAR1 = common dso_local global i32 0, align 4
@TI_CMD_SET_MAC_ADDR = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@TI_CMD_SET_PROMISC_MODE = common dso_local global i32 0, align 4
@TI_CMD_CODE_PROMISC_ENB = common dso_local global i32 0, align 4
@TI_CMD_CODE_PROMISC_DIS = common dso_local global i32 0, align 4
@TI_HWREV_TIGON = common dso_local global i64 0, align 8
@TI_CMD_FDR_FILTERING = common dso_local global i32 0, align 4
@TI_CMD_CODE_FILT_ENB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"no memory for std Rx buffers.\0A\00", align 1
@ETHERMTU = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"no memory for jumbo Rx buffers.\0A\00", align 1
@TI_HWREV_TIGON_II = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"no memory for mini Rx buffers.\0A\00", align 1
@TI_GCR_RXRETURNCONS_IDX = common dso_local global i32 0, align 4
@TI_CMD_HOST_STATE = common dso_local global i32 0, align 4
@TI_CMD_CODE_STACK_UP = common dso_local global i32 0, align 4
@TI_MB_HOSTINTR = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@ti_watchdog = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ti_softc*)* @ti_init2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ti_init2(%struct.ti_softc* %0) #0 {
  %2 = alloca %struct.ti_softc*, align 8
  %3 = alloca %struct.ti_cmd_desc, align 4
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ifmedia*, align 8
  %7 = alloca i32, align 4
  store %struct.ti_softc* %0, %struct.ti_softc** %2, align 8
  %8 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %9 = call i32 @TI_LOCK_ASSERT(%struct.ti_softc* %8)
  %10 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %11 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %10, i32 0, i32 5
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %14 = load i32, i32* @TI_GCR_IFINDEX, align 4
  %15 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @device_get_unit(i32 %17)
  %19 = call i32 @CSR_WRITE_4(%struct.ti_softc* %13, i32 %14, i32 %18)
  %20 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %21 = load i32, i32* @TI_GCR_IFMTU, align 4
  %22 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %23 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ETHER_HDR_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i64, i64* @ETHER_CRC_LEN, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %30 = add nsw i64 %28, %29
  %31 = trunc i64 %30 to i32
  %32 = call i32 @CSR_WRITE_4(%struct.ti_softc* %20, i32 %21, i32 %31)
  %33 = load i32, i32* @TI_CMD_UPDATE_GENCOM, align 4
  %34 = call i32 @TI_DO_CMD(i32 %33, i32 0, i32 0)
  %35 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %36 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %35, i32 0, i32 5
  %37 = load %struct.ifnet*, %struct.ifnet** %36, align 8
  %38 = call i32* @IF_LLADDR(%struct.ifnet* %37)
  store i32* %38, i32** %5, align 8
  %39 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %40 = load i32, i32* @TI_GCR_PAR0, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = shl i32 %43, 8
  %45 = load i32*, i32** %5, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = call i32 @CSR_WRITE_4(%struct.ti_softc* %39, i32 %40, i32 %48)
  %50 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %51 = load i32, i32* @TI_GCR_PAR1, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 2
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 24
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 3
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 16
  %60 = or i32 %55, %59
  %61 = load i32*, i32** %5, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 4
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 8
  %65 = or i32 %60, %64
  %66 = load i32*, i32** %5, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 5
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %65, %68
  %70 = call i32 @CSR_WRITE_4(%struct.ti_softc* %50, i32 %51, i32 %69)
  %71 = load i32, i32* @TI_CMD_SET_MAC_ADDR, align 4
  %72 = call i32 @TI_DO_CMD(i32 %71, i32 0, i32 0)
  %73 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %74 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IFF_PROMISC, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %1
  %80 = load i32, i32* @TI_CMD_SET_PROMISC_MODE, align 4
  %81 = load i32, i32* @TI_CMD_CODE_PROMISC_ENB, align 4
  %82 = call i32 @TI_DO_CMD(i32 %80, i32 %81, i32 0)
  br label %87

83:                                               ; preds = %1
  %84 = load i32, i32* @TI_CMD_SET_PROMISC_MODE, align 4
  %85 = load i32, i32* @TI_CMD_CODE_PROMISC_DIS, align 4
  %86 = call i32 @TI_DO_CMD(i32 %84, i32 %85, i32 0)
  br label %87

87:                                               ; preds = %83, %79
  %88 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %89 = call i32 @ti_setmulti(%struct.ti_softc* %88)
  %90 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %91 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @TI_HWREV_TIGON, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %87
  %96 = load i32, i32* @TI_CMD_FDR_FILTERING, align 4
  %97 = load i32, i32* @TI_CMD_CODE_FILT_ENB, align 4
  %98 = call i32 @TI_DO_CMD(i32 %96, i32 %97, i32 0)
  br label %99

99:                                               ; preds = %95, %87
  %100 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %101 = call i64 @ti_init_rx_ring_std(%struct.ti_softc* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %99
  %104 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %105 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @device_printf(i32 %106, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %192

108:                                              ; preds = %99
  %109 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %110 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ETHERMTU, align 8
  %113 = load i64, i64* @ETHER_HDR_LEN, align 8
  %114 = add nsw i64 %112, %113
  %115 = load i64, i64* @ETHER_VLAN_ENCAP_LEN, align 8
  %116 = add nsw i64 %114, %115
  %117 = icmp sgt i64 %111, %116
  br i1 %117, label %118, label %128

118:                                              ; preds = %108
  %119 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %120 = call i64 @ti_init_rx_ring_jumbo(%struct.ti_softc* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %124 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @device_printf(i32 %125, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %192

127:                                              ; preds = %118
  br label %128

128:                                              ; preds = %127, %108
  %129 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %130 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @TI_HWREV_TIGON_II, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %144

134:                                              ; preds = %128
  %135 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %136 = call i64 @ti_init_rx_ring_mini(%struct.ti_softc* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %134
  %139 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %140 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @device_printf(i32 %141, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %192

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %128
  %145 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %146 = load i32, i32* @TI_GCR_RXRETURNCONS_IDX, align 4
  %147 = call i32 @CSR_WRITE_4(%struct.ti_softc* %145, i32 %146, i32 0)
  %148 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %149 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %148, i32 0, i32 3
  store i64 0, i64* %149, align 8
  %150 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %151 = call i32 @ti_init_tx_ring(%struct.ti_softc* %150)
  %152 = load i32, i32* @TI_CMD_HOST_STATE, align 4
  %153 = load i32, i32* @TI_CMD_CODE_STACK_UP, align 4
  %154 = call i32 @TI_DO_CMD(i32 %152, i32 %153, i32 0)
  %155 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %156 = load i32, i32* @TI_MB_HOSTINTR, align 4
  %157 = call i32 @CSR_WRITE_4(%struct.ti_softc* %155, i32 %156, i32 0)
  %158 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %159 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %160 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %164 = xor i32 %163, -1
  %165 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %166 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, %164
  store i32 %168, i32* %166, align 4
  %169 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %170 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %169, i32 0, i32 2
  %171 = load i32, i32* @hz, align 4
  %172 = load i32, i32* @ti_watchdog, align 4
  %173 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %174 = call i32 @callout_reset(i32* %170, i32 %171, i32 %172, %struct.ti_softc* %173)
  %175 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %176 = getelementptr inbounds %struct.ti_softc, %struct.ti_softc* %175, i32 0, i32 1
  store %struct.ifmedia* %176, %struct.ifmedia** %6, align 8
  %177 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %178 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  store i32 %179, i32* %7, align 4
  %180 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %181 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %180, i32 0, i32 1
  %182 = load %struct.TYPE_2__*, %struct.TYPE_2__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %186 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %185, i32 0, i32 0
  store i32 %184, i32* %186, align 8
  %187 = load %struct.ti_softc*, %struct.ti_softc** %2, align 8
  %188 = call i32 @ti_ifmedia_upd_locked(%struct.ti_softc* %187)
  %189 = load i32, i32* %7, align 4
  %190 = load %struct.ifmedia*, %struct.ifmedia** %6, align 8
  %191 = getelementptr inbounds %struct.ifmedia, %struct.ifmedia* %190, i32 0, i32 0
  store i32 %189, i32* %191, align 8
  br label %192

192:                                              ; preds = %144, %138, %122, %103
  ret void
}

declare dso_local i32 @TI_LOCK_ASSERT(%struct.ti_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.ti_softc*, i32, i32) #1

declare dso_local i32 @device_get_unit(i32) #1

declare dso_local i32 @TI_DO_CMD(i32, i32, i32) #1

declare dso_local i32* @IF_LLADDR(%struct.ifnet*) #1

declare dso_local i32 @ti_setmulti(%struct.ti_softc*) #1

declare dso_local i64 @ti_init_rx_ring_std(%struct.ti_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @ti_init_rx_ring_jumbo(%struct.ti_softc*) #1

declare dso_local i64 @ti_init_rx_ring_mini(%struct.ti_softc*) #1

declare dso_local i32 @ti_init_tx_ring(%struct.ti_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.ti_softc*) #1

declare dso_local i32 @ti_ifmedia_upd_locked(%struct.ti_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
