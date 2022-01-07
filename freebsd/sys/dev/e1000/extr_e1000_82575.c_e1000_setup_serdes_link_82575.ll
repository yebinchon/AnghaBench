; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_setup_serdes_link_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_setup_serdes_link_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.e1000_hw.0*, i32, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.TYPE_7__ = type { i64, i32 }
%struct.TYPE_6__ = type { i64 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"e1000_setup_serdes_link_82575\00", align 1
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@E1000_SCTL = common dso_local global i32 0, align 4
@E1000_SCTL_DISABLE_SERDES_LOOPBACK = common dso_local global i32 0, align 4
@E1000_CTRL_EXT = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_SDP3_DATA = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_SLU = common dso_local global i32 0, align 4
@e1000_82575 = common dso_local global i64 0, align 8
@e1000_82576 = common dso_local global i64 0, align 8
@E1000_CTRL_SWDPIN0 = common dso_local global i32 0, align 4
@E1000_CTRL_SWDPIN1 = common dso_local global i32 0, align 4
@E1000_PCS_LCTL = common dso_local global i32 0, align 4
@E1000_CTRL_EXT_LINK_MODE_MASK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_AN_TIMEOUT = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@NVM_COMPAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"NVM Read Error\0A\00", align 1
@E1000_EEPROM_PCS_AUTONEG_DISABLE_BIT = common dso_local global i32 0, align 4
@E1000_CTRL_SPD_1000 = common dso_local global i32 0, align 4
@E1000_CTRL_FRCSPD = common dso_local global i32 0, align 4
@E1000_CTRL_FD = common dso_local global i32 0, align 4
@E1000_CTRL_FRCDPX = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FSV_1000 = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FDV_FULL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_AN_ENABLE = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FLV_LINK_UP = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FSD = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FORCE_LINK = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_AN_RESTART = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FORCE_FCTRL = common dso_local global i32 0, align 4
@E1000_PCS_ANADV = common dso_local global i32 0, align 4
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Configuring Autoneg:PCS_LCTL=0x%08X\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"Configuring Forced Link:PCS_LCTL=0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_setup_serdes_link_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_setup_serdes_link_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %11 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %11, i32* %9, align 4
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %14 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %21 = call i32 @e1000_sgmii_active_82575(%struct.e1000_hw* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %2, align 4
  br label %221

25:                                               ; preds = %19, %1
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %27 = load i32, i32* @E1000_SCTL, align 4
  %28 = load i32, i32* @E1000_SCTL_DISABLE_SERDES_LOOPBACK, align 4
  %29 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %31 = load i32, i32* @E1000_CTRL_EXT, align 4
  %32 = call i32 @E1000_READ_REG(%struct.e1000_hw* %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @E1000_CTRL_EXT_SDP3_DATA, align 4
  %34 = xor i32 %33, -1
  %35 = load i32, i32* %4, align 4
  %36 = and i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @E1000_CTRL_EXT, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %37, i32 %38, i32 %39)
  %41 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %42 = load i32, i32* @E1000_CTRL, align 4
  %43 = call i32 @E1000_READ_REG(%struct.e1000_hw* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @E1000_CTRL_SLU, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %48 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @e1000_82575, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %25
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @e1000_82576, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %53, %25
  %61 = load i32, i32* @E1000_CTRL_SWDPIN0, align 4
  %62 = load i32, i32* @E1000_CTRL_SWDPIN1, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %68 = load i32, i32* @E1000_PCS_LCTL, align 4
  %69 = call i32 @E1000_READ_REG(%struct.e1000_hw* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @E1000_CTRL_EXT_LINK_MODE_MASK, align 4
  %76 = and i32 %74, %75
  switch i32 %76, label %85 [
    i32 131, label %77
    i32 132, label %83
  ]

77:                                               ; preds = %66
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* @E1000_PCS_LCTL_AN_TIMEOUT, align 4
  %80 = xor i32 %79, -1
  %81 = load i32, i32* %6, align 4
  %82 = and i32 %81, %80
  store i32 %82, i32* %6, align 4
  br label %137

83:                                               ; preds = %66
  %84 = load i32, i32* @FALSE, align 4
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %66, %83
  %86 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %87 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @e1000_82575, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %99, label %92

92:                                               ; preds = %85
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @e1000_82576, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %122

99:                                               ; preds = %92, %85
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %101 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (%struct.e1000_hw.0*, i32, i32, i32*)*, i32 (%struct.e1000_hw.0*, i32, i32, i32*)** %103, align 8
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %106 = bitcast %struct.e1000_hw* %105 to %struct.e1000_hw.0*
  %107 = load i32, i32* @NVM_COMPAT, align 4
  %108 = call i32 %104(%struct.e1000_hw.0* %106, i32 %107, i32 1, i32* %10)
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %9, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %99
  %112 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* %9, align 4
  store i32 %113, i32* %2, align 4
  br label %221

114:                                              ; preds = %99
  %115 = load i32, i32* %10, align 4
  %116 = load i32, i32* @E1000_EEPROM_PCS_AUTONEG_DISABLE_BIT, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %114
  %120 = load i32, i32* @FALSE, align 4
  store i32 %120, i32* %8, align 4
  br label %121

121:                                              ; preds = %119, %114
  br label %122

122:                                              ; preds = %121, %92
  %123 = load i32, i32* @E1000_CTRL_SPD_1000, align 4
  %124 = load i32, i32* @E1000_CTRL_FRCSPD, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @E1000_CTRL_FD, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @E1000_CTRL_FRCDPX, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %5, align 4
  %132 = load i32, i32* @E1000_PCS_LCTL_FSV_1000, align 4
  %133 = load i32, i32* @E1000_PCS_LCTL_FDV_FULL, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  br label %137

137:                                              ; preds = %122, %77
  %138 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %139 = load i32, i32* @E1000_CTRL, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %138, i32 %139, i32 %140)
  %142 = load i32, i32* @E1000_PCS_LCTL_AN_ENABLE, align 4
  %143 = load i32, i32* @E1000_PCS_LCTL_FLV_LINK_UP, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* @E1000_PCS_LCTL_FSD, align 4
  %146 = or i32 %144, %145
  %147 = load i32, i32* @E1000_PCS_LCTL_FORCE_LINK, align 4
  %148 = or i32 %146, %147
  %149 = xor i32 %148, -1
  %150 = load i32, i32* %6, align 4
  %151 = and i32 %150, %149
  store i32 %151, i32* %6, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %196

154:                                              ; preds = %137
  %155 = load i32, i32* @E1000_PCS_LCTL_AN_ENABLE, align 4
  %156 = load i32, i32* @E1000_PCS_LCTL_AN_RESTART, align 4
  %157 = or i32 %155, %156
  %158 = load i32, i32* %6, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %6, align 4
  %160 = load i32, i32* @E1000_PCS_LCTL_FORCE_FCTRL, align 4
  %161 = xor i32 %160, -1
  %162 = load i32, i32* %6, align 4
  %163 = and i32 %162, %161
  store i32 %163, i32* %6, align 4
  %164 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %165 = load i32, i32* @E1000_PCS_ANADV, align 4
  %166 = call i32 @E1000_READ_REG(%struct.e1000_hw* %164, i32 %165)
  store i32 %166, i32* %7, align 4
  %167 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %168 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %169 = or i32 %167, %168
  %170 = xor i32 %169, -1
  %171 = load i32, i32* %7, align 4
  %172 = and i32 %171, %170
  store i32 %172, i32* %7, align 4
  %173 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %174 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %188 [
    i32 130, label %177
    i32 129, label %177
    i32 128, label %184
  ]

177:                                              ; preds = %154, %154
  %178 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %179 = load i32, i32* %7, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %7, align 4
  %181 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %182 = load i32, i32* %7, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %7, align 4
  br label %189

184:                                              ; preds = %154
  %185 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %186 = load i32, i32* %7, align 4
  %187 = or i32 %186, %185
  store i32 %187, i32* %7, align 4
  br label %189

188:                                              ; preds = %154
  br label %189

189:                                              ; preds = %188, %184, %177
  %190 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %191 = load i32, i32* @E1000_PCS_ANADV, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %190, i32 %191, i32 %192)
  %194 = load i32, i32* %6, align 4
  %195 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %194)
  br label %205

196:                                              ; preds = %137
  %197 = load i32, i32* @E1000_PCS_LCTL_FSD, align 4
  %198 = load i32, i32* %6, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %6, align 4
  %200 = load i32, i32* @E1000_PCS_LCTL_FORCE_FCTRL, align 4
  %201 = load i32, i32* %6, align 4
  %202 = or i32 %201, %200
  store i32 %202, i32* %6, align 4
  %203 = load i32, i32* %6, align 4
  %204 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i32 %203)
  br label %205

205:                                              ; preds = %196, %189
  %206 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %207 = load i32, i32* @E1000_PCS_LCTL, align 4
  %208 = load i32, i32* %6, align 4
  %209 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %206, i32 %207, i32 %208)
  %210 = load i32, i32* %8, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %219, label %212

212:                                              ; preds = %205
  %213 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %214 = call i32 @e1000_sgmii_active_82575(%struct.e1000_hw* %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %219, label %216

216:                                              ; preds = %212
  %217 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %218 = call i32 @e1000_force_mac_fc_generic(%struct.e1000_hw* %217)
  br label %219

219:                                              ; preds = %216, %212, %205
  %220 = load i32, i32* %9, align 4
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %219, %111, %23
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_sgmii_active_82575(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i32 @e1000_force_mac_fc_generic(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
