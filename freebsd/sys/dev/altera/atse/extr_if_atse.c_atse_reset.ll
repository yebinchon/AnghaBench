; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/altera/atse/extr_if_atse.c_atse_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atse_softc = type { i32 }

@PCS_EXT_LINK_TIMER_0 = common dso_local global i32 0, align 4
@PCS_EXT_LINK_TIMER_1 = common dso_local global i32 0, align 4
@PCS_EXT_IF_MODE_SGMII_ENA = common dso_local global i32 0, align 4
@PCS_EXT_IF_MODE_USE_SGMII_AN = common dso_local global i32 0, align 4
@PCS_EXT_IF_MODE = common dso_local global i32 0, align 4
@PCS_CONTROL = common dso_local global i32 0, align 4
@PCS_CONTROL_ISOLATE = common dso_local global i32 0, align 4
@PCS_CONTROL_POWERDOWN = common dso_local global i32 0, align 4
@PCS_CONTROL_LOOPBACK = common dso_local global i32 0, align 4
@PCS_CONTROL_AUTO_NEGOTIATION_ENABLE = common dso_local global i32 0, align 4
@PCS_CONTROL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PCS reset timed out.\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_TX_ENA = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_RX_ENA = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Disabling MAC TX/RX timed out.\0A\00", align 1
@BASE_CFG_TX_SECTION_EMPTY = common dso_local global i32 0, align 4
@FIFO_DEPTH_TX = common dso_local global i32 0, align 4
@BASE_CFG_TX_ALMOST_FULL = common dso_local global i32 0, align 4
@BASE_CFG_TX_ALMOST_EMPTY = common dso_local global i32 0, align 4
@BASE_CFG_RX_SECTION_EMPTY = common dso_local global i32 0, align 4
@FIFO_DEPTH_RX = common dso_local global i32 0, align 4
@BASE_CFG_RX_ALMOST_FULL = common dso_local global i32 0, align 4
@BASE_CFG_RX_ALMOST_EMPTY = common dso_local global i32 0, align 4
@BASE_CFG_TX_SECTION_FULL = common dso_local global i32 0, align 4
@BASE_CFG_RX_SECTION_FULL = common dso_local global i32 0, align 4
@ATSE_ETH_ADDR_ALL = common dso_local global i32 0, align 4
@BASE_CFG_FRM_LENGTH = common dso_local global i32 0, align 4
@BASE_CFG_TX_IPG_LENGTH = common dso_local global i32 0, align 4
@BASE_CFG_PAUSE_QUANT = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_ETH_SPEED = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_ENA_10 = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_PAD_EN = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_CRC_FWD = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_RX_ERR_DISC = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_LOOP_ENA = common dso_local global i32 0, align 4
@TX_CMD_STAT = common dso_local global i32 0, align 4
@TX_CMD_STAT_OMIT_CRC = common dso_local global i32 0, align 4
@TX_CMD_STAT_TX_SHIFT16 = common dso_local global i32 0, align 4
@RX_CMD_STAT = common dso_local global i32 0, align 4
@RX_CMD_STAT_RX_SHIFT16 = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_SW_RESET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"MAC reset timed out.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Enabling MAC TX/RX timed out.\0A\00", align 1
@BASE_CFG_COMMAND_CONFIG_CNTL_FRM_ENA = common dso_local global i32 0, align 4
@BASE_CFG_COMMAND_CONFIG_TX_ADDR_INS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atse_softc*)* @atse_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atse_reset(%struct.atse_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atse_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.atse_softc* %0, %struct.atse_softc** %3, align 8
  %8 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %9 = load i32, i32* @PCS_EXT_LINK_TIMER_0, align 4
  %10 = call i32 @PCS_WRITE_2(%struct.atse_softc* %8, i32 %9, i32 3392)
  %11 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %12 = load i32, i32* @PCS_EXT_LINK_TIMER_1, align 4
  %13 = call i32 @PCS_WRITE_2(%struct.atse_softc* %11, i32 %12, i32 3)
  %14 = load i32, i32* @PCS_EXT_IF_MODE_SGMII_ENA, align 4
  %15 = load i32, i32* @PCS_EXT_IF_MODE_USE_SGMII_AN, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %6, align 4
  %17 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %18 = load i32, i32* @PCS_EXT_IF_MODE, align 4
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @PCS_WRITE_2(%struct.atse_softc* %17, i32 %18, i32 %19)
  %21 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %22 = load i32, i32* @PCS_CONTROL, align 4
  %23 = call i32 @PCS_READ_2(%struct.atse_softc* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* @PCS_CONTROL_ISOLATE, align 4
  %25 = load i32, i32* @PCS_CONTROL_POWERDOWN, align 4
  %26 = or i32 %24, %25
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %6, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* @PCS_CONTROL_LOOPBACK, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %6, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* @PCS_CONTROL_AUTO_NEGOTIATION_ENABLE, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  %37 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %38 = load i32, i32* @PCS_CONTROL, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @PCS_WRITE_2(%struct.atse_softc* %37, i32 %38, i32 %39)
  %41 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %42 = load i32, i32* @PCS_CONTROL, align 4
  %43 = call i32 @PCS_READ_2(%struct.atse_softc* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* @PCS_CONTROL_RESET, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  %47 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %48 = load i32, i32* @PCS_CONTROL, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @PCS_WRITE_2(%struct.atse_softc* %47, i32 %48, i32 %49)
  store i32 0, i32* %7, align 4
  br label %51

51:                                               ; preds = %65, %1
  %52 = load i32, i32* %7, align 4
  %53 = icmp slt i32 %52, 100
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %56 = load i32, i32* @PCS_CONTROL, align 4
  %57 = call i32 @PCS_READ_2(%struct.atse_softc* %55, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @PCS_CONTROL_RESET, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %68

63:                                               ; preds = %54
  %64 = call i32 @DELAY(i32 10)
  br label %65

65:                                               ; preds = %63
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %51

68:                                               ; preds = %62, %51
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @PCS_CONTROL_RESET, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %68
  %74 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %75 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @device_printf(i32 %76, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %78 = load i32, i32* @ENXIO, align 4
  store i32 %78, i32* %2, align 4
  br label %304

79:                                               ; preds = %68
  %80 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_TX_ENA, align 4
  %81 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_RX_ENA, align 4
  %82 = or i32 %80, %81
  store i32 %82, i32* %5, align 4
  %83 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %84 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %85 = call i32 @CSR_READ_4(%struct.atse_softc* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %5, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %4, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %4, align 4
  %90 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %91 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @CSR_WRITE_4(%struct.atse_softc* %90, i32 %91, i32 %92)
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %108, %79
  %95 = load i32, i32* %7, align 4
  %96 = icmp slt i32 %95, 100
  br i1 %96, label %97, label %111

97:                                               ; preds = %94
  %98 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %99 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %100 = call i32 @CSR_READ_4(%struct.atse_softc* %98, i32 %99)
  store i32 %100, i32* %4, align 4
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* %5, align 4
  %103 = and i32 %101, %102
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %97
  br label %111

106:                                              ; preds = %97
  %107 = call i32 @DELAY(i32 10)
  br label %108

108:                                              ; preds = %106
  %109 = load i32, i32* %7, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %7, align 4
  br label %94

111:                                              ; preds = %105, %94
  %112 = load i32, i32* %4, align 4
  %113 = load i32, i32* %5, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %118 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @device_printf(i32 %119, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %121 = load i32, i32* @ENXIO, align 4
  store i32 %121, i32* %2, align 4
  br label %304

122:                                              ; preds = %111
  %123 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %124 = load i32, i32* @BASE_CFG_TX_SECTION_EMPTY, align 4
  %125 = load i32, i32* @FIFO_DEPTH_TX, align 4
  %126 = sub nsw i32 %125, 16
  %127 = call i32 @CSR_WRITE_4(%struct.atse_softc* %123, i32 %124, i32 %126)
  %128 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %129 = load i32, i32* @BASE_CFG_TX_ALMOST_FULL, align 4
  %130 = call i32 @CSR_WRITE_4(%struct.atse_softc* %128, i32 %129, i32 3)
  %131 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %132 = load i32, i32* @BASE_CFG_TX_ALMOST_EMPTY, align 4
  %133 = call i32 @CSR_WRITE_4(%struct.atse_softc* %131, i32 %132, i32 8)
  %134 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %135 = load i32, i32* @BASE_CFG_RX_SECTION_EMPTY, align 4
  %136 = load i32, i32* @FIFO_DEPTH_RX, align 4
  %137 = sub nsw i32 %136, 16
  %138 = call i32 @CSR_WRITE_4(%struct.atse_softc* %134, i32 %135, i32 %137)
  %139 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %140 = load i32, i32* @BASE_CFG_RX_ALMOST_FULL, align 4
  %141 = call i32 @CSR_WRITE_4(%struct.atse_softc* %139, i32 %140, i32 8)
  %142 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %143 = load i32, i32* @BASE_CFG_RX_ALMOST_EMPTY, align 4
  %144 = call i32 @CSR_WRITE_4(%struct.atse_softc* %142, i32 %143, i32 8)
  %145 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %146 = load i32, i32* @BASE_CFG_TX_SECTION_FULL, align 4
  %147 = call i32 @CSR_WRITE_4(%struct.atse_softc* %145, i32 %146, i32 0)
  %148 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %149 = load i32, i32* @BASE_CFG_RX_SECTION_FULL, align 4
  %150 = call i32 @CSR_WRITE_4(%struct.atse_softc* %148, i32 %149, i32 0)
  %151 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %152 = call i32 @atse_get_eth_address(%struct.atse_softc* %151)
  %153 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %154 = load i32, i32* @ATSE_ETH_ADDR_ALL, align 4
  %155 = call i32 @atse_set_eth_address(%struct.atse_softc* %153, i32 %154)
  %156 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %157 = load i32, i32* @BASE_CFG_FRM_LENGTH, align 4
  %158 = call i32 @CSR_WRITE_4(%struct.atse_softc* %156, i32 %157, i32 1518)
  %159 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %160 = load i32, i32* @BASE_CFG_TX_IPG_LENGTH, align 4
  %161 = call i32 @CSR_WRITE_4(%struct.atse_softc* %159, i32 %160, i32 12)
  %162 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %163 = load i32, i32* @BASE_CFG_PAUSE_QUANT, align 4
  %164 = call i32 @CSR_WRITE_4(%struct.atse_softc* %162, i32 %163, i32 65535)
  %165 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %166 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %167 = call i32 @CSR_READ_4(%struct.atse_softc* %165, i32 %166)
  store i32 %167, i32* %4, align 4
  %168 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ETH_SPEED, align 4
  %169 = xor i32 %168, -1
  %170 = load i32, i32* %4, align 4
  %171 = and i32 %170, %169
  store i32 %171, i32* %4, align 4
  %172 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_ENA_10, align 4
  %173 = xor i32 %172, -1
  %174 = load i32, i32* %4, align 4
  %175 = and i32 %174, %173
  store i32 %175, i32* %4, align 4
  %176 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_PAD_EN, align 4
  %177 = load i32, i32* %4, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %4, align 4
  %179 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_CRC_FWD, align 4
  %180 = xor i32 %179, -1
  %181 = load i32, i32* %4, align 4
  %182 = and i32 %181, %180
  store i32 %182, i32* %4, align 4
  %183 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_RX_ERR_DISC, align 4
  %184 = load i32, i32* %4, align 4
  %185 = or i32 %184, %183
  store i32 %185, i32* %4, align 4
  %186 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_LOOP_ENA, align 4
  %187 = xor i32 %186, -1
  %188 = load i32, i32* %6, align 4
  %189 = and i32 %188, %187
  store i32 %189, i32* %6, align 4
  %190 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %191 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %192 = load i32, i32* %4, align 4
  %193 = call i32 @CSR_WRITE_4(%struct.atse_softc* %190, i32 %191, i32 %192)
  %194 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %195 = load i32, i32* @TX_CMD_STAT, align 4
  %196 = call i32 @CSR_READ_4(%struct.atse_softc* %194, i32 %195)
  store i32 %196, i32* %4, align 4
  %197 = load i32, i32* @TX_CMD_STAT_OMIT_CRC, align 4
  %198 = load i32, i32* @TX_CMD_STAT_TX_SHIFT16, align 4
  %199 = or i32 %197, %198
  %200 = xor i32 %199, -1
  %201 = load i32, i32* %4, align 4
  %202 = and i32 %201, %200
  store i32 %202, i32* %4, align 4
  %203 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %204 = load i32, i32* @TX_CMD_STAT, align 4
  %205 = load i32, i32* %4, align 4
  %206 = call i32 @CSR_WRITE_4(%struct.atse_softc* %203, i32 %204, i32 %205)
  %207 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %208 = load i32, i32* @RX_CMD_STAT, align 4
  %209 = call i32 @CSR_READ_4(%struct.atse_softc* %207, i32 %208)
  store i32 %209, i32* %4, align 4
  %210 = load i32, i32* @RX_CMD_STAT_RX_SHIFT16, align 4
  %211 = xor i32 %210, -1
  %212 = load i32, i32* %4, align 4
  %213 = and i32 %212, %211
  store i32 %213, i32* %4, align 4
  %214 = load i32, i32* @RX_CMD_STAT_RX_SHIFT16, align 4
  %215 = load i32, i32* %4, align 4
  %216 = or i32 %215, %214
  store i32 %216, i32* %4, align 4
  %217 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %218 = load i32, i32* @RX_CMD_STAT, align 4
  %219 = load i32, i32* %4, align 4
  %220 = call i32 @CSR_WRITE_4(%struct.atse_softc* %217, i32 %218, i32 %219)
  %221 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %222 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %223 = call i32 @CSR_READ_4(%struct.atse_softc* %221, i32 %222)
  store i32 %223, i32* %4, align 4
  %224 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_SW_RESET, align 4
  %225 = load i32, i32* %4, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %4, align 4
  %227 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %228 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %229 = load i32, i32* %4, align 4
  %230 = call i32 @CSR_WRITE_4(%struct.atse_softc* %227, i32 %228, i32 %229)
  store i32 0, i32* %7, align 4
  br label %231

231:                                              ; preds = %245, %122
  %232 = load i32, i32* %7, align 4
  %233 = icmp slt i32 %232, 100
  br i1 %233, label %234, label %248

234:                                              ; preds = %231
  %235 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %236 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %237 = call i32 @CSR_READ_4(%struct.atse_softc* %235, i32 %236)
  store i32 %237, i32* %4, align 4
  %238 = load i32, i32* %4, align 4
  %239 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_SW_RESET, align 4
  %240 = and i32 %238, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %243

242:                                              ; preds = %234
  br label %248

243:                                              ; preds = %234
  %244 = call i32 @DELAY(i32 10)
  br label %245

245:                                              ; preds = %243
  %246 = load i32, i32* %7, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %7, align 4
  br label %231

248:                                              ; preds = %242, %231
  %249 = load i32, i32* %4, align 4
  %250 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_SW_RESET, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %248
  %254 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %255 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = call i32 @device_printf(i32 %256, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %258 = load i32, i32* @ENXIO, align 4
  store i32 %258, i32* %2, align 4
  br label %304

259:                                              ; preds = %248
  %260 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_TX_ENA, align 4
  %261 = load i32, i32* @BASE_CFG_COMMAND_CONFIG_RX_ENA, align 4
  %262 = or i32 %260, %261
  store i32 %262, i32* %5, align 4
  %263 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %264 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %265 = call i32 @CSR_READ_4(%struct.atse_softc* %263, i32 %264)
  store i32 %265, i32* %4, align 4
  %266 = load i32, i32* %5, align 4
  %267 = load i32, i32* %4, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %4, align 4
  %269 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %270 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %271 = load i32, i32* %4, align 4
  %272 = call i32 @CSR_WRITE_4(%struct.atse_softc* %269, i32 %270, i32 %271)
  store i32 0, i32* %7, align 4
  br label %273

273:                                              ; preds = %288, %259
  %274 = load i32, i32* %7, align 4
  %275 = icmp slt i32 %274, 100
  br i1 %275, label %276, label %291

276:                                              ; preds = %273
  %277 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %278 = load i32, i32* @BASE_CFG_COMMAND_CONFIG, align 4
  %279 = call i32 @CSR_READ_4(%struct.atse_softc* %277, i32 %278)
  store i32 %279, i32* %4, align 4
  %280 = load i32, i32* %4, align 4
  %281 = load i32, i32* %5, align 4
  %282 = and i32 %280, %281
  %283 = load i32, i32* %5, align 4
  %284 = icmp eq i32 %282, %283
  br i1 %284, label %285, label %286

285:                                              ; preds = %276
  br label %291

286:                                              ; preds = %276
  %287 = call i32 @DELAY(i32 10)
  br label %288

288:                                              ; preds = %286
  %289 = load i32, i32* %7, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %7, align 4
  br label %273

291:                                              ; preds = %285, %273
  %292 = load i32, i32* %4, align 4
  %293 = load i32, i32* %5, align 4
  %294 = and i32 %292, %293
  %295 = load i32, i32* %5, align 4
  %296 = icmp ne i32 %294, %295
  br i1 %296, label %297, label %303

297:                                              ; preds = %291
  %298 = load %struct.atse_softc*, %struct.atse_softc** %3, align 8
  %299 = getelementptr inbounds %struct.atse_softc, %struct.atse_softc* %298, i32 0, i32 0
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @device_printf(i32 %300, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %302 = load i32, i32* @ENXIO, align 4
  store i32 %302, i32* %2, align 4
  br label %304

303:                                              ; preds = %291
  store i32 0, i32* %2, align 4
  br label %304

304:                                              ; preds = %303, %297, %253, %116, %73
  %305 = load i32, i32* %2, align 4
  ret i32 %305
}

declare dso_local i32 @PCS_WRITE_2(%struct.atse_softc*, i32, i32) #1

declare dso_local i32 @PCS_READ_2(%struct.atse_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @CSR_READ_4(%struct.atse_softc*, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.atse_softc*, i32, i32) #1

declare dso_local i32 @atse_get_eth_address(%struct.atse_softc*) #1

declare dso_local i32 @atse_set_eth_address(%struct.atse_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
