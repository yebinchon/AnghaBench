; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8727_read_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_8727_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32, i64 }
%struct.elink_params = type { i32, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }
%struct.elink_vars = type { i64, i32, i32 }

@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXSTAT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"8727 RX_ALARM_STATUS  0x%x\0A\00", align 1
@MDIO_PMA_LASI_TXSTAT = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_TXCTRL = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_STAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"8727 LASI status 0x%x\0A\00", align 1
@MDIO_PMA_REG_M8051_MSGOUT_REG = common dso_local global i32 0, align 4
@ELINK_FLAGS_NOC = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_GPIO_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"8727 Power fault has been detected on port %d\0A\00", align 1
@ELINK_LOG_ID_OVER_CURRENT = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXCTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_PHY_IDENTIFIER = common dso_local global i32 0, align 4
@ELINK_FLAGS_SFP_NOT_APPROVED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Enabling 8727 TX laser\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Tx is disabled\0A\00", align 1
@MDIO_PMA_REG_8073_SPEED_LINK_STATUS = common dso_local global i32 0, align 4
@ELINK_SPEED_10000 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [34 x i8] c"port %x: External link up in 10G\0A\00", align 1
@ELINK_SPEED_1000 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [33 x i8] c"port %x: External link up in 1G\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"port %x: External link is down\0A\00", align 1
@DUPLEX_FULL = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [15 x i8] c"duplex = 0x%x\0A\00", align 1
@MDIO_PMA_REG_8727_PCS_GP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*)* @elink_8727_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_8727_read_status(%struct.elink_phy* %0, %struct.elink_params* %1, %struct.elink_vars* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.elink_phy*, align 8
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca %struct.elink_vars*, align 8
  %8 = alloca %struct.bxe_softc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %5, align 8
  store %struct.elink_params* %1, %struct.elink_params** %6, align 8
  store %struct.elink_vars* %2, %struct.elink_vars** %7, align 8
  %15 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %16 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %15, i32 0, i32 1
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %16, align 8
  store %struct.bxe_softc* %17, %struct.bxe_softc** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %19 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %20 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %21 = load i32, i32* @MDIO_PMA_LASI_CTRL, align 4
  %22 = call i32 @elink_cl45_read(%struct.bxe_softc* %18, %struct.elink_phy* %19, i32 %20, i32 %21, i32* %12)
  %23 = load i32, i32* %12, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %274

26:                                               ; preds = %3
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %28 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %29 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %30 = load i32, i32* @MDIO_PMA_LASI_RXSTAT, align 4
  %31 = call i32 @elink_cl45_read(%struct.bxe_softc* %27, %struct.elink_phy* %28, i32 %29, i32 %30, i32* %11)
  %32 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %33 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %34, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %38 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %39 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %40 = load i32, i32* @MDIO_PMA_LASI_TXCTRL, align 4
  %41 = call i32 @elink_sfp_mask_fault(%struct.bxe_softc* %37, %struct.elink_phy* %38, i32 %39, i32 %40)
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %43 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %44 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %45 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %46 = call i32 @elink_cl45_read(%struct.bxe_softc* %42, %struct.elink_phy* %43, i32 %44, i32 %45, i32* %13)
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %48 = load i32, i32* %13, align 4
  %49 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %47, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %51 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %52 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %53 = load i32, i32* @MDIO_PMA_REG_M8051_MSGOUT_REG, align 4
  %54 = call i32 @elink_cl45_read(%struct.bxe_softc* %50, %struct.elink_phy* %51, i32 %52, i32 %53, i32* %13)
  %55 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %56 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ELINK_FLAGS_NOC, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %126, label %61

61:                                               ; preds = %26
  %62 = load i32, i32* %11, align 4
  %63 = and i32 %62, 32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %126, label %65

65:                                               ; preds = %61
  %66 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %67 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %68 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %69 = load i32, i32* @MDIO_PMA_REG_8727_GPIO_CTRL, align 4
  %70 = call i32 @elink_cl45_read(%struct.bxe_softc* %66, %struct.elink_phy* %67, i32 %68, i32 %69, i32* %13)
  %71 = load i32, i32* %13, align 4
  %72 = and i32 %71, 256
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %125

74:                                               ; preds = %65
  %75 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %76 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  store i32 %77, i32* %14, align 4
  %78 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %79 = call i32 @CHIP_IS_E1x(%struct.bxe_softc* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %89, label %81

81:                                               ; preds = %74
  %82 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %83 = call i32 @SC_PATH(%struct.bxe_softc* %82)
  %84 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %85 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = shl i32 %86, 1
  %88 = add nsw i32 %83, %87
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %81, %74
  %90 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %91 = load i32, i32* %14, align 4
  %92 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %90, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  %93 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %94 = load i32, i32* @ELINK_LOG_ID_OVER_CURRENT, align 4
  %95 = load i32, i32* %14, align 4
  %96 = call i32 @elink_cb_event_log(%struct.bxe_softc* %93, i32 %94, i32 %95)
  %97 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %98 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %99 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %100 = load i32, i32* @MDIO_PMA_LASI_RXCTRL, align 4
  %101 = call i32 @elink_cl45_write(%struct.bxe_softc* %97, %struct.elink_phy* %98, i32 %99, i32 %100, i32 32)
  %102 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %103 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %104 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %105 = load i32, i32* @MDIO_PMA_REG_PHY_IDENTIFIER, align 4
  %106 = call i32 @elink_cl45_read(%struct.bxe_softc* %102, %struct.elink_phy* %103, i32 %104, i32 %105, i32* %13)
  %107 = load i32, i32* %13, align 4
  %108 = or i32 %107, 256
  store i32 %108, i32* %13, align 4
  %109 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %110 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %111 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %112 = load i32, i32* @MDIO_PMA_REG_PHY_IDENTIFIER, align 4
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @elink_cl45_write(%struct.bxe_softc* %109, %struct.elink_phy* %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %116 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %117 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %118 = load i32, i32* @MDIO_PMA_LASI_RXSTAT, align 4
  %119 = call i32 @elink_cl45_read(%struct.bxe_softc* %115, %struct.elink_phy* %116, i32 %117, i32 %118, i32* %11)
  %120 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %121 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %120, i32 0, i32 1
  %122 = load %struct.bxe_softc*, %struct.bxe_softc** %121, align 8
  %123 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %124 = call i32 @elink_8727_power_module(%struct.bxe_softc* %122, %struct.elink_phy* %123, i32 0)
  store i32 0, i32* %4, align 4
  br label %274

125:                                              ; preds = %65
  br label %126

126:                                              ; preds = %125, %61, %26
  %127 = load i32, i32* %11, align 4
  %128 = and i32 %127, 32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %139

130:                                              ; preds = %126
  %131 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %132 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %133 = call i32 @elink_8727_handle_mod_abs(%struct.elink_phy* %131, %struct.elink_params* %132)
  %134 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %135 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %136 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %137 = load i32, i32* @MDIO_PMA_LASI_RXCTRL, align 4
  %138 = call i32 @elink_cl45_write(%struct.bxe_softc* %134, %struct.elink_phy* %135, i32 %136, i32 %137, i32 36)
  br label %139

139:                                              ; preds = %130, %126
  %140 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %141 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @ELINK_FLAGS_SFP_NOT_APPROVED, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %152, label %146

146:                                              ; preds = %139
  %147 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %148 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %147, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  %149 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %150 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %151 = call i32 @elink_sfp_set_transmitter(%struct.elink_params* %149, %struct.elink_phy* %150, i32 1)
  br label %155

152:                                              ; preds = %139
  %153 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %154 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %274

155:                                              ; preds = %146
  %156 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %157 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %158 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %159 = load i32, i32* @MDIO_PMA_REG_8073_SPEED_LINK_STATUS, align 4
  %160 = call i32 @elink_cl45_read(%struct.bxe_softc* %156, %struct.elink_phy* %157, i32 %158, i32 %159, i32* %10)
  %161 = load i32, i32* %10, align 4
  %162 = and i32 %161, 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %155
  %165 = load i32, i32* %10, align 4
  %166 = and i32 %165, 32768
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %177, label %168

168:                                              ; preds = %164
  store i32 1, i32* %9, align 4
  %169 = load i64, i64* @ELINK_SPEED_10000, align 8
  %170 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %171 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %170, i32 0, i32 0
  store i64 %169, i64* %171, align 8
  %172 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %173 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %174 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %172, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0), i32 %175)
  br label %201

177:                                              ; preds = %164, %155
  %178 = load i32, i32* %10, align 4
  %179 = and i32 %178, 1
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %194

181:                                              ; preds = %177
  %182 = load i32, i32* %10, align 4
  %183 = and i32 %182, 8192
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %194, label %185

185:                                              ; preds = %181
  store i32 1, i32* %9, align 4
  %186 = load i64, i64* @ELINK_SPEED_1000, align 8
  %187 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %188 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %187, i32 0, i32 0
  store i64 %186, i64* %188, align 8
  %189 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %190 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %191 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %189, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %192)
  br label %200

194:                                              ; preds = %181, %177
  store i32 0, i32* %9, align 4
  %195 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %196 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %197 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %195, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %194, %185
  br label %201

201:                                              ; preds = %200, %168
  %202 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %203 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @ELINK_SPEED_10000, align 8
  %206 = icmp eq i64 %204, %205
  br i1 %206, label %207, label %225

207:                                              ; preds = %201
  %208 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %209 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %210 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %211 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %212 = call i32 @elink_cl45_read(%struct.bxe_softc* %208, %struct.elink_phy* %209, i32 %210, i32 %211, i32* %13)
  %213 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %214 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %215 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %216 = load i32, i32* @MDIO_PMA_LASI_TXSTAT, align 4
  %217 = call i32 @elink_cl45_read(%struct.bxe_softc* %213, %struct.elink_phy* %214, i32 %215, i32 %216, i32* %13)
  %218 = load i32, i32* %13, align 4
  %219 = and i32 %218, 1
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %224

221:                                              ; preds = %207
  %222 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %223 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %222, i32 0, i32 1
  store i32 1, i32* %223, align 8
  br label %224

224:                                              ; preds = %221, %207
  br label %225

225:                                              ; preds = %224, %201
  %226 = load i32, i32* %9, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %241

228:                                              ; preds = %225
  %229 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %230 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %231 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %232 = call i32 @elink_ext_phy_resolve_fc(%struct.elink_phy* %229, %struct.elink_params* %230, %struct.elink_vars* %231)
  %233 = load i32, i32* @DUPLEX_FULL, align 4
  %234 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %235 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %234, i32 0, i32 2
  store i32 %233, i32* %235, align 4
  %236 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %237 = load %struct.elink_vars*, %struct.elink_vars** %7, align 8
  %238 = getelementptr inbounds %struct.elink_vars, %struct.elink_vars* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @ELINK_DEBUG_P1(%struct.bxe_softc* %236, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.8, i64 0, i64 0), i32 %239)
  br label %241

241:                                              ; preds = %228, %225
  %242 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %243 = call i64 @ELINK_DUAL_MEDIA(%struct.elink_params* %242)
  %244 = icmp ne i64 %243, 0
  br i1 %244, label %245, label %272

245:                                              ; preds = %241
  %246 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %247 = getelementptr inbounds %struct.elink_phy, %struct.elink_phy* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load i64, i64* @ELINK_SPEED_1000, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %272

251:                                              ; preds = %245
  %252 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %253 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %254 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %255 = load i32, i32* @MDIO_PMA_REG_8727_PCS_GP, align 4
  %256 = call i32 @elink_cl45_read(%struct.bxe_softc* %252, %struct.elink_phy* %253, i32 %254, i32 %255, i32* %13)
  %257 = load i32, i32* %9, align 4
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %262

259:                                              ; preds = %251
  %260 = load i32, i32* %13, align 4
  %261 = and i32 %260, -3073
  store i32 %261, i32* %13, align 4
  br label %265

262:                                              ; preds = %251
  %263 = load i32, i32* %13, align 4
  %264 = or i32 %263, 3072
  store i32 %264, i32* %13, align 4
  br label %265

265:                                              ; preds = %262, %259
  %266 = load %struct.bxe_softc*, %struct.bxe_softc** %8, align 8
  %267 = load %struct.elink_phy*, %struct.elink_phy** %5, align 8
  %268 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %269 = load i32, i32* @MDIO_PMA_REG_8727_PCS_GP, align 4
  %270 = load i32, i32* %13, align 4
  %271 = call i32 @elink_cl45_write(%struct.bxe_softc* %266, %struct.elink_phy* %267, i32 %268, i32 %269, i32 %270)
  br label %272

272:                                              ; preds = %265, %245, %241
  %273 = load i32, i32* %9, align 4
  store i32 %273, i32* %4, align 4
  br label %274

274:                                              ; preds = %272, %152, %89, %25
  %275 = load i32, i32* %4, align 4
  ret i32 %275
}

declare dso_local i32 @elink_cl45_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32*) #1

declare dso_local i32 @ELINK_DEBUG_P1(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @elink_sfp_mask_fault(%struct.bxe_softc*, %struct.elink_phy*, i32, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bxe_softc*) #1

declare dso_local i32 @SC_PATH(%struct.bxe_softc*) #1

declare dso_local i32 @elink_cb_event_log(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @elink_cl45_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32, i32) #1

declare dso_local i32 @elink_8727_power_module(%struct.bxe_softc*, %struct.elink_phy*, i32) #1

declare dso_local i32 @elink_8727_handle_mod_abs(%struct.elink_phy*, %struct.elink_params*) #1

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @elink_sfp_set_transmitter(%struct.elink_params*, %struct.elink_phy*, i32) #1

declare dso_local i32 @elink_ext_phy_resolve_fc(%struct.elink_phy*, %struct.elink_params*, %struct.elink_vars*) #1

declare dso_local i64 @ELINK_DUAL_MEDIA(%struct.elink_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
