; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwi/extr_bwimac.c_bwi_mac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwi_mac = type { i32, i32, %struct.TYPE_4__, i32, i32, %struct.bwi_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.bwi_softc = type { i32, i32 (%struct.bwi_softc*, i32)*, i32 (%struct.bwi_softc*)*, i32 (%struct.bwi_softc*)*, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@BWI_REGWIN_T_BUSPCIE = common dso_local global i64 0, align 8
@BWI_CONF_LO = common dso_local global i32 0, align 4
@BWI_CONF_LO_SERVTO = common dso_local global i32 0, align 4
@BWI_CONF_LO_SERVTO_MASK = common dso_local global i32 0, align 4
@BWI_CONF_LO_REQTO = common dso_local global i32 0, align 4
@BWI_CONF_LO_REQTO_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"PHY calibrate failed\0A\00", align 1
@BWI_MAC_STATUS = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_UCODE_JUMP0 = common dso_local global i32 0, align 4
@BWI_MAC_STATUS_IHREN = common dso_local global i32 0, align 4
@BWI_BBP_ATTEN = common dso_local global i32 0, align 4
@BWI_MAC_INTR_STATUS = common dso_local global i32 0, align 4
@BWI_INTR_TIMER1 = common dso_local global i32 0, align 4
@BWI_TXRX_NRING = common dso_local global i32 0, align 4
@BWI_TXRX_RX_INTRS = common dso_local global i32 0, align 4
@BWI_TXRX_TX_INTRS = common dso_local global i32 0, align 4
@BWI_STATE_LO = common dso_local global i32 0, align 4
@BWI_MAC_POWERUP_DELAY = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ = common dso_local global i32 0, align 4
@BWI_COMM_MOBJ_MACREV = common dso_local global i32 0, align 4
@BWI_TX_NRING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"can't initialize %dth TX ring\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"can't initialize RX ring\0A\00", align 1
@BWI_MAC_F_HAS_TXSTATS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"can't initialize TX stats ring\0A\00", align 1
@BWI_MAC_F_INITED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bwi_mac_init(%struct.bwi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bwi_mac*, align 8
  %4 = alloca %struct.bwi_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.bwi_mac* %0, %struct.bwi_mac** %3, align 8
  %8 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %9 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %8, i32 0, i32 5
  %10 = load %struct.bwi_softc*, %struct.bwi_softc** %9, align 8
  store %struct.bwi_softc* %10, %struct.bwi_softc** %4, align 8
  %11 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %12 = call i32 @bwi_mac_setup_tpctl(%struct.bwi_mac* %11)
  %13 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %14 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %13, i32 0, i32 2
  %15 = call i32 @bwi_rf_clear_state(%struct.TYPE_4__* %14)
  %16 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %17 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %16, i32 0, i32 4
  %18 = call i32 @bwi_phy_clear_state(i32* %17)
  %19 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %20 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %21 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %20, i32 0, i32 3
  %22 = call i32 @bwi_regwin_is_enabled(%struct.bwi_softc* %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %26 = call i32 @bwi_mac_reset(%struct.bwi_mac* %25, i32 1)
  br label %27

27:                                               ; preds = %24, %1
  %28 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %29 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %30 = call i32 @bwi_bus_init(%struct.bwi_softc* %28, %struct.bwi_mac* %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %5, align 4
  store i32 %34, i32* %2, align 4
  br label %252

35:                                               ; preds = %27
  %36 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %37 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 5
  br i1 %40, label %41, label %59

41:                                               ; preds = %35
  %42 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %43 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BWI_REGWIN_T_BUSPCIE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %50 = load i32, i32* @BWI_CONF_LO, align 4
  %51 = load i32, i32* @BWI_CONF_LO_SERVTO, align 4
  %52 = load i32, i32* @BWI_CONF_LO_SERVTO_MASK, align 4
  %53 = call i32 @__SHIFTIN(i32 %51, i32 %52)
  %54 = load i32, i32* @BWI_CONF_LO_REQTO, align 4
  %55 = load i32, i32* @BWI_CONF_LO_REQTO_MASK, align 4
  %56 = call i32 @__SHIFTIN(i32 %54, i32 %55)
  %57 = or i32 %53, %56
  %58 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %49, i32 %50, i32 %57)
  br label %59

59:                                               ; preds = %48, %41, %35
  %60 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %61 = call i32 @bwi_phy_calibrate(%struct.bwi_mac* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %66 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i8*, ...) @device_printf(i32 %67, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* %5, align 4
  store i32 %69, i32* %2, align 4
  br label %252

70:                                               ; preds = %59
  %71 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %72 = load i32, i32* @BWI_MAC_STATUS, align 4
  %73 = load i32, i32* @BWI_MAC_STATUS_UCODE_JUMP0, align 4
  %74 = load i32, i32* @BWI_MAC_STATUS_IHREN, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %71, i32 %72, i32 %75)
  %77 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %78 = call i32 @bwi_mac_fw_load(%struct.bwi_mac* %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %70
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %252

83:                                               ; preds = %70
  %84 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %85 = call i32 @bwi_mac_gpio_init(%struct.bwi_mac* %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %5, align 4
  store i32 %89, i32* %2, align 4
  br label %252

90:                                               ; preds = %83
  %91 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %92 = call i32 @bwi_mac_fw_init(%struct.bwi_mac* %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %90
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %252

97:                                               ; preds = %90
  %98 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %99 = call i32 @bwi_rf_on(%struct.bwi_mac* %98)
  %100 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %101 = load i32, i32* @BWI_BBP_ATTEN, align 4
  %102 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %100, i32 %101, i32 0)
  %103 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %104 = call i32 @bwi_phy_init(%struct.bwi_mac* %103)
  %105 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %106 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %107 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @bwi_rf_set_ant_mode(%struct.bwi_mac* %105, i32 %109)
  %111 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %112 = call i32 @bwi_mac_opmode_init(%struct.bwi_mac* %111)
  %113 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %114 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp slt i32 %115, 3
  br i1 %116, label %117, label %126

117:                                              ; preds = %97
  %118 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %119 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %118, i32 1550, i32 0)
  %120 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %121 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %120, i32 1552, i32 32768)
  %122 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %123 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %122, i32 1540, i32 0)
  %124 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %125 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %124, i32 1542, i32 512)
  br label %131

126:                                              ; preds = %97
  %127 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %128 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %127, i32 392, i32 -2147483648)
  %129 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %130 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %129, i32 396, i32 33554432)
  br label %131

131:                                              ; preds = %126, %117
  %132 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %133 = load i32, i32* @BWI_MAC_INTR_STATUS, align 4
  %134 = load i32, i32* @BWI_INTR_TIMER1, align 4
  %135 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %132, i32 %133, i32 %134)
  store i32 0, i32* %6, align 4
  br label %136

136:                                              ; preds = %154, %131
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* @BWI_TXRX_NRING, align 4
  %139 = icmp slt i32 %137, %138
  br i1 %139, label %140, label %157

140:                                              ; preds = %136
  %141 = load i32, i32* %6, align 4
  %142 = call i64 @BWI_TXRX_IS_RX(i32 %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %140
  %145 = load i32, i32* @BWI_TXRX_RX_INTRS, align 4
  store i32 %145, i32* %7, align 4
  br label %148

146:                                              ; preds = %140
  %147 = load i32, i32* @BWI_TXRX_TX_INTRS, align 4
  store i32 %147, i32* %7, align 4
  br label %148

148:                                              ; preds = %146, %144
  %149 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @BWI_TXRX_INTR_MASK(i32 %150)
  %152 = load i32, i32* %7, align 4
  %153 = call i32 @CSR_WRITE_4(%struct.bwi_softc* %149, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %148
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %6, align 4
  br label %136

157:                                              ; preds = %136
  %158 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %159 = load i32, i32* @BWI_STATE_LO, align 4
  %160 = call i32 @CSR_SETBITS_4(%struct.bwi_softc* %158, i32 %159, i32 1048576)
  %161 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %162 = load i32, i32* @BWI_MAC_POWERUP_DELAY, align 4
  %163 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %164 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %161, i32 %162, i32 %165)
  %167 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %168 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %169 = load i32, i32* @BWI_COMM_MOBJ_MACREV, align 4
  %170 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %171 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %167, i32 %168, i32 %169, i32 %172)
  %174 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %175 = call i32 @bwi_mac_hostflags_init(%struct.bwi_mac* %174)
  %176 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %177 = call i32 @bwi_mac_bss_param_init(%struct.bwi_mac* %176)
  store i32 0, i32* %6, align 4
  br label %178

178:                                              ; preds = %199, %157
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* @BWI_TX_NRING, align 4
  %181 = icmp slt i32 %179, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %178
  %183 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %184 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %183, i32 0, i32 1
  %185 = load i32 (%struct.bwi_softc*, i32)*, i32 (%struct.bwi_softc*, i32)** %184, align 8
  %186 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %187 = load i32, i32* %6, align 4
  %188 = call i32 %185(%struct.bwi_softc* %186, i32 %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %198

191:                                              ; preds = %182
  %192 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %193 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %192, i32 0, i32 4
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = call i32 (i32, i8*, ...) @device_printf(i32 %194, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %5, align 4
  store i32 %197, i32* %2, align 4
  br label %252

198:                                              ; preds = %182
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %178

202:                                              ; preds = %178
  %203 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %204 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %203, i32 0, i32 2
  %205 = load i32 (%struct.bwi_softc*)*, i32 (%struct.bwi_softc*)** %204, align 8
  %206 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %207 = call i32 %205(%struct.bwi_softc* %206)
  store i32 %207, i32* %5, align 4
  %208 = load i32, i32* %5, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %216

210:                                              ; preds = %202
  %211 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %212 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i32, i8*, ...) @device_printf(i32 %213, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %215 = load i32, i32* %5, align 4
  store i32 %215, i32* %2, align 4
  br label %252

216:                                              ; preds = %202
  %217 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %218 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @BWI_MAC_F_HAS_TXSTATS, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %238

223:                                              ; preds = %216
  %224 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %225 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %224, i32 0, i32 3
  %226 = load i32 (%struct.bwi_softc*)*, i32 (%struct.bwi_softc*)** %225, align 8
  %227 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %228 = call i32 %226(%struct.bwi_softc* %227)
  store i32 %228, i32* %5, align 4
  %229 = load i32, i32* %5, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %237

231:                                              ; preds = %223
  %232 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %233 = getelementptr inbounds %struct.bwi_softc, %struct.bwi_softc* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 8
  %235 = call i32 (i32, i8*, ...) @device_printf(i32 %234, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %236 = load i32, i32* %5, align 4
  store i32 %236, i32* %2, align 4
  br label %252

237:                                              ; preds = %223
  br label %238

238:                                              ; preds = %237, %216
  %239 = load %struct.bwi_softc*, %struct.bwi_softc** %4, align 8
  %240 = call i32 @CSR_WRITE_2(%struct.bwi_softc* %239, i32 1554, i32 80)
  %241 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %242 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %243 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %241, i32 %242, i32 1046, i32 80)
  %244 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %245 = load i32, i32* @BWI_COMM_MOBJ, align 4
  %246 = call i32 @MOBJ_WRITE_2(%struct.bwi_mac* %244, i32 %245, i32 1044, i32 500)
  %247 = load i32, i32* @BWI_MAC_F_INITED, align 4
  %248 = load %struct.bwi_mac*, %struct.bwi_mac** %3, align 8
  %249 = getelementptr inbounds %struct.bwi_mac, %struct.bwi_mac* %248, i32 0, i32 1
  %250 = load i32, i32* %249, align 4
  %251 = or i32 %250, %247
  store i32 %251, i32* %249, align 4
  store i32 0, i32* %2, align 4
  br label %252

252:                                              ; preds = %238, %231, %210, %191, %95, %88, %81, %64, %33
  %253 = load i32, i32* %2, align 4
  ret i32 %253
}

declare dso_local i32 @bwi_mac_setup_tpctl(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_clear_state(%struct.TYPE_4__*) #1

declare dso_local i32 @bwi_phy_clear_state(i32*) #1

declare dso_local i32 @bwi_regwin_is_enabled(%struct.bwi_softc*, i32*) #1

declare dso_local i32 @bwi_mac_reset(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_bus_init(%struct.bwi_softc*, %struct.bwi_mac*) #1

declare dso_local i32 @CSR_SETBITS_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @__SHIFTIN(i32, i32) #1

declare dso_local i32 @bwi_phy_calibrate(%struct.bwi_mac*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @CSR_WRITE_4(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @bwi_mac_fw_load(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_gpio_init(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_fw_init(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_on(%struct.bwi_mac*) #1

declare dso_local i32 @CSR_WRITE_2(%struct.bwi_softc*, i32, i32) #1

declare dso_local i32 @bwi_phy_init(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_rf_set_ant_mode(%struct.bwi_mac*, i32) #1

declare dso_local i32 @bwi_mac_opmode_init(%struct.bwi_mac*) #1

declare dso_local i64 @BWI_TXRX_IS_RX(i32) #1

declare dso_local i32 @BWI_TXRX_INTR_MASK(i32) #1

declare dso_local i32 @MOBJ_WRITE_2(%struct.bwi_mac*, i32, i32, i32) #1

declare dso_local i32 @bwi_mac_hostflags_init(%struct.bwi_mac*) #1

declare dso_local i32 @bwi_mac_bss_param_init(%struct.bwi_mac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
