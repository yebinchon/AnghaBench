; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sound/pci/extr_maestro.c_agg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agg_info = type { i32, i32 }

@CONF_LEGACY = common dso_local global i32 0, align 4
@LEGACY_DISABLED = common dso_local global i32 0, align 4
@CONF_MAESTRO = common dso_local global i32 0, align 4
@MAESTRO_PMC = common dso_local global i32 0, align 4
@MAESTRO_CHIBUS = common dso_local global i32 0, align 4
@MAESTRO_POSTEDWRITE = common dso_local global i32 0, align 4
@MAESTRO_DMA_PCITIMING = common dso_local global i32 0, align 4
@MAESTRO_SWAP_LR = common dso_local global i32 0, align 4
@MAESTRO_SPDIF = common dso_local global i32 0, align 4
@ACPI_PART_SPDIF = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D2 = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D1 = common dso_local global i32 0, align 4
@MAESTRO_HWVOL = common dso_local global i32 0, align 4
@ACPI_PART_HW_VOL = common dso_local global i32 0, align 4
@PCI_POWERSTATE_D3 = common dso_local global i32 0, align 4
@ACPI_PART_978 = common dso_local global i32 0, align 4
@ACPI_PART_DAA = common dso_local global i32 0, align 4
@ACPI_PART_GPIO = common dso_local global i32 0, align 4
@ACPI_PART_SB = common dso_local global i32 0, align 4
@ACPI_PART_FM = common dso_local global i32 0, align 4
@ACPI_PART_MIDI = common dso_local global i32 0, align 4
@ACPI_PART_GAME_PORT = common dso_local global i32 0, align 4
@ACPI_PART_WP = common dso_local global i32 0, align 4
@ACPI_PART_CODEC_CLOCK = common dso_local global i32 0, align 4
@ACPI_PART_GLUE = common dso_local global i32 0, align 4
@ACPI_PART_PCI_IF = common dso_local global i32 0, align 4
@ACPI_PART_RINGBUS = common dso_local global i32 0, align 4
@PORT_HOSTINT_CTRL = common dso_local global i32 0, align 4
@HOSTINT_CTRL_SOFT_RESET = common dso_local global i32 0, align 4
@HOSTINT_CTRL_DSOUND_RESET = common dso_local global i32 0, align 4
@HOSTINT_CTRL_HWVOL_ENABLED = common dso_local global i32 0, align 4
@WPREG_WAVE_ROMRAM = common dso_local global i32 0, align 4
@WP_WAVE_VIRTUAL_ENABLED = common dso_local global i32 0, align 4
@WP_WAVE_DRAM_ENABLED = common dso_local global i32 0, align 4
@WPREG_CRAM_DATA = common dso_local global i32 0, align 4
@PORT_WAVCACHE_CTRL = common dso_local global i32 0, align 4
@WAVCACHE_ENABLED = common dso_local global i32 0, align 4
@WAVCACHE_WTSIZE_2MB = common dso_local global i32 0, align 4
@WAVCACHE_SGC_32_47 = common dso_local global i32 0, align 4
@WAVCACHE_PCMBAR = common dso_local global i32 0, align 4
@WAVCACHE_BASEADDR_SHIFT = common dso_local global i32 0, align 4
@PORT_RINGBUS_CTRL = common dso_local global i32 0, align 4
@RINGBUS_CTRL_RINGBUS_ENABLED = common dso_local global i32 0, align 4
@RINGBUS_CTRL_ACLINK_ENABLED = common dso_local global i32 0, align 4
@WPREG_BASE = common dso_local global i32 0, align 4
@RINGBUS_SRC_ADC = common dso_local global i32 0, align 4
@RINGBUS_DEST_STEREO = common dso_local global i32 0, align 4
@RINGBUS_DEST_DSOUND_IN = common dso_local global i32 0, align 4
@RINGBUS_SRC_DSOUND = common dso_local global i32 0, align 4
@RINGBUS_DEST_DAC = common dso_local global i32 0, align 4
@PORT_RINGBUS_CTRL_B = common dso_local global i32 0, align 4
@RINGBUS_CTRL_SPDIF = common dso_local global i32 0, align 4
@PORT_ASSP_CTRL_B = common dso_local global i32 0, align 4
@PORT_ASSP_CTRL_A = common dso_local global i32 0, align 4
@PORT_ASSP_CTRL_C = common dso_local global i32 0, align 4
@PORT_GPIO_MASK = common dso_local global i32 0, align 4
@PORT_GPIO_DIR = common dso_local global i32 0, align 4
@PORT_GPIO_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.agg_info*)* @agg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @agg_init(%struct.agg_info* %0) #0 {
  %2 = alloca %struct.agg_info*, align 8
  %3 = alloca i32, align 4
  store %struct.agg_info* %0, %struct.agg_info** %2, align 8
  %4 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %5 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @CONF_LEGACY, align 4
  %8 = call i32 @pci_read_config(i32 %6, i32 %7, i32 2)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @LEGACY_DISABLED, align 4
  %10 = load i32, i32* %3, align 4
  %11 = or i32 %10, %9
  store i32 %11, i32* %3, align 4
  %12 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %13 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @CONF_LEGACY, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pci_write_config(i32 %14, i32 %15, i32 %16, i32 2)
  %18 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %19 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CONF_MAESTRO, align 4
  %22 = call i32 @pci_read_config(i32 %20, i32 %21, i32 4)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @MAESTRO_PMC, align 4
  %24 = load i32, i32* %3, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @MAESTRO_CHIBUS, align 4
  %27 = load i32, i32* @MAESTRO_POSTEDWRITE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @MAESTRO_DMA_PCITIMING, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load i32, i32* @MAESTRO_SWAP_LR, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %3, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %38 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CONF_MAESTRO, align 4
  %41 = load i32, i32* %3, align 4
  %42 = call i32 @pci_write_config(i32 %39, i32 %40, i32 %41, i32 4)
  %43 = load i32, i32* %3, align 4
  %44 = load i32, i32* @MAESTRO_SPDIF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %1
  %48 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %49 = load i32, i32* @ACPI_PART_SPDIF, align 4
  %50 = load i32, i32* @PCI_POWERSTATE_D2, align 4
  %51 = call i32 @agg_stopclock(%struct.agg_info* %48, i32 %49, i32 %50)
  br label %57

52:                                               ; preds = %1
  %53 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %54 = load i32, i32* @ACPI_PART_SPDIF, align 4
  %55 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %56 = call i32 @agg_stopclock(%struct.agg_info* %53, i32 %54, i32 %55)
  br label %57

57:                                               ; preds = %52, %47
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MAESTRO_HWVOL, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %64 = load i32, i32* @ACPI_PART_HW_VOL, align 4
  %65 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %66 = call i32 @agg_stopclock(%struct.agg_info* %63, i32 %64, i32 %65)
  br label %72

67:                                               ; preds = %57
  %68 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %69 = load i32, i32* @ACPI_PART_HW_VOL, align 4
  %70 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %71 = call i32 @agg_stopclock(%struct.agg_info* %68, i32 %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %74 = load i32, i32* @ACPI_PART_978, align 4
  %75 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %76 = call i32 @agg_stopclock(%struct.agg_info* %73, i32 %74, i32 %75)
  %77 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %78 = load i32, i32* @ACPI_PART_DAA, align 4
  %79 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %80 = call i32 @agg_stopclock(%struct.agg_info* %77, i32 %78, i32 %79)
  %81 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %82 = load i32, i32* @ACPI_PART_GPIO, align 4
  %83 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %84 = call i32 @agg_stopclock(%struct.agg_info* %81, i32 %82, i32 %83)
  %85 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %86 = load i32, i32* @ACPI_PART_SB, align 4
  %87 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %88 = call i32 @agg_stopclock(%struct.agg_info* %85, i32 %86, i32 %87)
  %89 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %90 = load i32, i32* @ACPI_PART_FM, align 4
  %91 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %92 = call i32 @agg_stopclock(%struct.agg_info* %89, i32 %90, i32 %91)
  %93 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %94 = load i32, i32* @ACPI_PART_MIDI, align 4
  %95 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %96 = call i32 @agg_stopclock(%struct.agg_info* %93, i32 %94, i32 %95)
  %97 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %98 = load i32, i32* @ACPI_PART_GAME_PORT, align 4
  %99 = load i32, i32* @PCI_POWERSTATE_D1, align 4
  %100 = call i32 @agg_stopclock(%struct.agg_info* %97, i32 %98, i32 %99)
  %101 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %102 = load i32, i32* @ACPI_PART_WP, align 4
  %103 = load i32, i32* @PCI_POWERSTATE_D2, align 4
  %104 = call i32 @agg_stopclock(%struct.agg_info* %101, i32 %102, i32 %103)
  %105 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %106 = load i32, i32* @ACPI_PART_CODEC_CLOCK, align 4
  %107 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %108 = call i32 @agg_stopclock(%struct.agg_info* %105, i32 %106, i32 %107)
  %109 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %110 = load i32, i32* @ACPI_PART_GLUE, align 4
  %111 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %112 = call i32 @agg_stopclock(%struct.agg_info* %109, i32 %110, i32 %111)
  %113 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %114 = load i32, i32* @ACPI_PART_PCI_IF, align 4
  %115 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %116 = call i32 @agg_stopclock(%struct.agg_info* %113, i32 %114, i32 %115)
  %117 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %118 = load i32, i32* @ACPI_PART_RINGBUS, align 4
  %119 = load i32, i32* @PCI_POWERSTATE_D3, align 4
  %120 = call i32 @agg_stopclock(%struct.agg_info* %117, i32 %118, i32 %119)
  %121 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %122 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %123 = load i32, i32* @HOSTINT_CTRL_SOFT_RESET, align 4
  %124 = call i32 @AGG_WR(%struct.agg_info* %121, i32 %122, i32 %123, i32 2)
  %125 = call i32 @DELAY(i32 100)
  %126 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %127 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %128 = call i32 @AGG_WR(%struct.agg_info* %126, i32 %127, i32 0, i32 2)
  %129 = call i32 @DELAY(i32 100)
  %130 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %131 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %132 = load i32, i32* @HOSTINT_CTRL_DSOUND_RESET, align 4
  %133 = call i32 @AGG_WR(%struct.agg_info* %130, i32 %131, i32 %132, i32 2)
  %134 = call i32 @DELAY(i32 100)
  %135 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %136 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %137 = call i32 @AGG_WR(%struct.agg_info* %135, i32 %136, i32 0, i32 2)
  %138 = call i32 @DELAY(i32 100)
  %139 = load i32, i32* %3, align 4
  %140 = load i32, i32* @MAESTRO_HWVOL, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %72
  %144 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %145 = load i32, i32* @PORT_HOSTINT_CTRL, align 4
  %146 = load i32, i32* @HOSTINT_CTRL_HWVOL_ENABLED, align 4
  %147 = call i32 @AGG_WR(%struct.agg_info* %144, i32 %145, i32 %146, i32 2)
  br label %148

148:                                              ; preds = %143, %72
  %149 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %150 = load i32, i32* @WPREG_WAVE_ROMRAM, align 4
  %151 = load i32, i32* @WP_WAVE_VIRTUAL_ENABLED, align 4
  %152 = load i32, i32* @WP_WAVE_DRAM_ENABLED, align 4
  %153 = or i32 %151, %152
  %154 = call i32 @wp_wrreg(%struct.agg_info* %149, i32 %150, i32 %153)
  %155 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %156 = load i32, i32* @WPREG_CRAM_DATA, align 4
  %157 = call i32 @wp_wrreg(%struct.agg_info* %155, i32 %156, i32 0)
  %158 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %159 = load i32, i32* @PORT_WAVCACHE_CTRL, align 4
  %160 = load i32, i32* @WAVCACHE_ENABLED, align 4
  %161 = load i32, i32* @WAVCACHE_WTSIZE_2MB, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* @WAVCACHE_SGC_32_47, align 4
  %164 = or i32 %162, %163
  %165 = call i32 @AGG_WR(%struct.agg_info* %158, i32 %159, i32 %164, i32 2)
  %166 = load i32, i32* @WAVCACHE_PCMBAR, align 4
  store i32 %166, i32* %3, align 4
  br label %167

167:                                              ; preds = %181, %148
  %168 = load i32, i32* %3, align 4
  %169 = load i32, i32* @WAVCACHE_PCMBAR, align 4
  %170 = add nsw i32 %169, 4
  %171 = icmp slt i32 %168, %170
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %174 = load i32, i32* %3, align 4
  %175 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %176 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 4
  %178 = load i32, i32* @WAVCACHE_BASEADDR_SHIFT, align 4
  %179 = ashr i32 %177, %178
  %180 = call i32 @wc_wrreg(%struct.agg_info* %173, i32 %174, i32 %179)
  br label %181

181:                                              ; preds = %172
  %182 = load i32, i32* %3, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %3, align 4
  br label %167

184:                                              ; preds = %167
  %185 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %186 = call i32 @agg_initcodec(%struct.agg_info* %185)
  %187 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %188 = load i32, i32* @PORT_RINGBUS_CTRL, align 4
  %189 = load i32, i32* @RINGBUS_CTRL_RINGBUS_ENABLED, align 4
  %190 = load i32, i32* @RINGBUS_CTRL_ACLINK_ENABLED, align 4
  %191 = or i32 %189, %190
  %192 = call i32 @AGG_WR(%struct.agg_info* %187, i32 %188, i32 %191, i32 4)
  %193 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %194 = call i32 @wp_wrreg(%struct.agg_info* %193, i32 8, i32 45060)
  %195 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %196 = call i32 @wp_wrreg(%struct.agg_info* %195, i32 9, i32 27)
  %197 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %198 = call i32 @wp_wrreg(%struct.agg_info* %197, i32 10, i32 32768)
  %199 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %200 = call i32 @wp_wrreg(%struct.agg_info* %199, i32 11, i32 16183)
  %201 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %202 = load i32, i32* @WPREG_BASE, align 4
  %203 = call i32 @wp_wrreg(%struct.agg_info* %201, i32 %202, i32 34200)
  %204 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %205 = load i32, i32* @WPREG_BASE, align 4
  %206 = add nsw i32 %205, 1
  %207 = call i32 @wp_wrreg(%struct.agg_info* %204, i32 %206, i32 30258)
  %208 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %209 = load i32, i32* @RINGBUS_SRC_ADC, align 4
  %210 = load i32, i32* @RINGBUS_DEST_STEREO, align 4
  %211 = load i32, i32* @RINGBUS_DEST_DSOUND_IN, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @ringbus_setdest(%struct.agg_info* %208, i32 %209, i32 %212)
  %214 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %215 = load i32, i32* @RINGBUS_SRC_DSOUND, align 4
  %216 = load i32, i32* @RINGBUS_DEST_STEREO, align 4
  %217 = load i32, i32* @RINGBUS_DEST_DAC, align 4
  %218 = or i32 %216, %217
  %219 = call i32 @ringbus_setdest(%struct.agg_info* %214, i32 %215, i32 %218)
  %220 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %221 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* @CONF_MAESTRO, align 4
  %224 = call i32 @pci_read_config(i32 %222, i32 %223, i32 4)
  %225 = load i32, i32* @MAESTRO_SPDIF, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %184
  %229 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %230 = load i32, i32* @PORT_RINGBUS_CTRL_B, align 4
  %231 = load i32, i32* @RINGBUS_CTRL_SPDIF, align 4
  %232 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %233 = load i32, i32* @PORT_RINGBUS_CTRL_B, align 4
  %234 = call i32 @AGG_RD(%struct.agg_info* %232, i32 %233, i32 1)
  %235 = or i32 %231, %234
  %236 = call i32 @AGG_WR(%struct.agg_info* %229, i32 %230, i32 %235, i32 1)
  br label %237

237:                                              ; preds = %228, %184
  %238 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %239 = load i32, i32* @PORT_ASSP_CTRL_B, align 4
  %240 = call i32 @AGG_WR(%struct.agg_info* %238, i32 %239, i32 0, i32 1)
  %241 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %242 = load i32, i32* @PORT_ASSP_CTRL_A, align 4
  %243 = call i32 @AGG_WR(%struct.agg_info* %241, i32 %242, i32 3, i32 1)
  %244 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %245 = load i32, i32* @PORT_ASSP_CTRL_C, align 4
  %246 = call i32 @AGG_WR(%struct.agg_info* %244, i32 %245, i32 0, i32 1)
  %247 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %248 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @pci_get_subvendor(i32 %249)
  %251 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %252 = getelementptr inbounds %struct.agg_info, %struct.agg_info* %251, i32 0, i32 1
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @pci_get_subdevice(i32 %253)
  %255 = shl i32 %254, 16
  %256 = or i32 %250, %255
  switch i32 %256, label %271 [
    i32 129, label %257
    i32 128, label %257
  ]

257:                                              ; preds = %237, %237
  %258 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %259 = load i32, i32* @PORT_GPIO_MASK, align 4
  %260 = call i32 @AGG_WR(%struct.agg_info* %258, i32 %259, i32 2559, i32 2)
  %261 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %262 = load i32, i32* @PORT_GPIO_DIR, align 4
  %263 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %264 = load i32, i32* @PORT_GPIO_DIR, align 4
  %265 = call i32 @AGG_RD(%struct.agg_info* %263, i32 %264, i32 2)
  %266 = or i32 %265, 1536
  %267 = call i32 @AGG_WR(%struct.agg_info* %261, i32 %262, i32 %266, i32 2)
  %268 = load %struct.agg_info*, %struct.agg_info** %2, align 8
  %269 = load i32, i32* @PORT_GPIO_DATA, align 4
  %270 = call i32 @AGG_WR(%struct.agg_info* %268, i32 %269, i32 512, i32 2)
  br label %271

271:                                              ; preds = %237, %257
  ret void
}

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @agg_stopclock(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @AGG_WR(%struct.agg_info*, i32, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @wp_wrreg(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @wc_wrreg(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @agg_initcodec(%struct.agg_info*) #1

declare dso_local i32 @ringbus_setdest(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @AGG_RD(%struct.agg_info*, i32, i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
