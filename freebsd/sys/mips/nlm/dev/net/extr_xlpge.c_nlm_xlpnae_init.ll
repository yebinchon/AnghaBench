; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpnae_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/nlm/dev/net/extr_xlpge.c_nlm_xlpnae_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlm_xlpnae_softc = type { i32, i32, i32, i32, i32, i64, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Loading 0x%x ucores with microcode\0A\00", align 1
@DFS_DEVICE_NAE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Setup NAE frequency to %dMHz\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Initialze SGMII PCS for blocks 0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Initialze XAUI PCS for blocks 0x%x\0A\00", align 1
@NAE_LANE_CFG_SOFTRESET = common dso_local global i32 0, align 4
@NAE_RX_CONFIG = common dso_local global i32 0, align 4
@NAE_TX_CONFIG = common dso_local global i32 0, align 4
@MAX_POE_CLASSES = common dso_local global i32 0, align 4
@poe_cl_tbl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.nlm_xlpnae_softc*)* @nlm_xlpnae_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xlpnae_init(i32 %0, %struct.nlm_xlpnae_softc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nlm_xlpnae_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.nlm_xlpnae_softc* %1, %struct.nlm_xlpnae_softc** %4, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %10 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %14 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %13, i32 0, i32 15
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @nlm_nae_flush_free_fifo(i32 %12, i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %19 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @nlm_deflate_frin_fifo_carving(i32 %17, i32 %20)
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @nlm_reset_nae(i32 %22)
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %35, %2
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %27 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %24
  %31 = load i32, i32* %8, align 4
  %32 = shl i32 1, %31
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %8, align 4
  br label %24

38:                                               ; preds = %24
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @nlm_ucore_load_all(i32 %41, i32 %42, i32 1)
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @DFS_DEVICE_NAE, align 4
  %46 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %47 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @nlm_set_device_frequency(i32 %44, i32 %45, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @nlm_mdio_reset_all(i32 %52)
  %54 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %55 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @printf(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* %5, align 4
  %59 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %60 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @nlm_sgmii_pcs_init(i32 %58, i32 %61)
  %63 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %64 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %69 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @nlm_xaui_pcs_init(i32 %67, i32 %70)
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @NAE_LANE_CFG_SOFTRESET, align 4
  %74 = call i32 @nlm_write_nae_reg(i32 %72, i32 %73, i32 0)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @NAE_RX_CONFIG, align 4
  %77 = call i32 @nlm_read_nae_reg(i32 %75, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = and i32 %78, -2
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* @NAE_RX_CONFIG, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @nlm_write_nae_reg(i32 %80, i32 %81, i32 %82)
  %84 = call i64 (...) @nlm_is_xlp8xx_ax()
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %86, label %96

86:                                               ; preds = %38
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @NAE_TX_CONFIG, align 4
  %89 = call i32 @nlm_read_nae_reg(i32 %87, i32 %88)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = and i32 %90, -9
  store i32 %91, i32* %7, align 4
  %92 = load i32, i32* %5, align 4
  %93 = load i32, i32* @NAE_TX_CONFIG, align 4
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @nlm_write_nae_reg(i32 %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %86, %38
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @MAX_POE_CLASSES, align 4
  %99 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %100 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %99, i32 0, i32 13
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @poe_cl_tbl, align 4
  %103 = call i32 @nlm_setup_poe_class_config(i32 %97, i32 %98, i32 %101, i32 %102)
  %104 = load i32, i32* %5, align 4
  %105 = call i32 @nlm_setup_vfbid_mapping(i32 %104)
  %106 = load i32, i32* %5, align 4
  %107 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %108 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @nlm_setup_flow_crc_poly(i32 %106, i32 %109)
  %111 = load i32, i32* %5, align 4
  %112 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %113 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %112, i32 0, i32 11
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %116 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @nlm_setup_rx_cal_cfg(i32 %111, i32 %114, i32 %117)
  %119 = call i64 (...) @nlm_is_xlp8xx_ax()
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %130, label %121

121:                                              ; preds = %96
  %122 = load i32, i32* %5, align 4
  %123 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %124 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %123, i32 0, i32 11
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %127 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @nlm_setup_tx_cal_cfg(i32 %122, i32 %125, i32 %128)
  br label %130

130:                                              ; preds = %121, %96
  %131 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %132 = call i32 @nlm_setup_interfaces(%struct.nlm_xlpnae_softc* %131)
  %133 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %134 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %133, i32 0, i32 10
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %137 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @nlm_config_poe(i32 %135, i32 %138)
  %140 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %141 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %140, i32 0, i32 8
  %142 = load i64, i64* %141, align 8
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %130
  %145 = load i32, i32* %5, align 4
  %146 = call i32 @nlm_enable_hardware_parser(i32 %145)
  br label %147

147:                                              ; preds = %144, %130
  %148 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %149 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load i32, i32* %5, align 4
  %154 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %155 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @nlm_prepad_enable(i32 %153, i32 %156)
  br label %158

158:                                              ; preds = %152, %147
  %159 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %160 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %158
  %164 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %165 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.nlm_xlpnae_softc*, %struct.nlm_xlpnae_softc** %4, align 8
  %168 = getelementptr inbounds %struct.nlm_xlpnae_softc, %struct.nlm_xlpnae_softc* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @nlm_setup_1588_timer(i32 %166, i32 %169)
  br label %171

171:                                              ; preds = %163, %158
  ret void
}

declare dso_local i32 @nlm_nae_flush_free_fifo(i32, i32) #1

declare dso_local i32 @nlm_deflate_frin_fifo_carving(i32, i32) #1

declare dso_local i32 @nlm_reset_nae(i32) #1

declare dso_local i32 @printf(i8*, i32) #1

declare dso_local i32 @nlm_ucore_load_all(i32, i32, i32) #1

declare dso_local i32 @nlm_set_device_frequency(i32, i32, i32) #1

declare dso_local i32 @nlm_mdio_reset_all(i32) #1

declare dso_local i32 @nlm_sgmii_pcs_init(i32, i32) #1

declare dso_local i32 @nlm_xaui_pcs_init(i32, i32) #1

declare dso_local i32 @nlm_write_nae_reg(i32, i32, i32) #1

declare dso_local i32 @nlm_read_nae_reg(i32, i32) #1

declare dso_local i64 @nlm_is_xlp8xx_ax(...) #1

declare dso_local i32 @nlm_setup_poe_class_config(i32, i32, i32, i32) #1

declare dso_local i32 @nlm_setup_vfbid_mapping(i32) #1

declare dso_local i32 @nlm_setup_flow_crc_poly(i32, i32) #1

declare dso_local i32 @nlm_setup_rx_cal_cfg(i32, i32, i32) #1

declare dso_local i32 @nlm_setup_tx_cal_cfg(i32, i32, i32) #1

declare dso_local i32 @nlm_setup_interfaces(%struct.nlm_xlpnae_softc*) #1

declare dso_local i32 @nlm_config_poe(i32, i32) #1

declare dso_local i32 @nlm_enable_hardware_parser(i32) #1

declare dso_local i32 @nlm_prepad_enable(i32, i32) #1

declare dso_local i32 @nlm_setup_1588_timer(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
