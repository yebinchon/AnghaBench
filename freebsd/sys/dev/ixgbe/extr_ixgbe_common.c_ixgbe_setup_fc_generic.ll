; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_setup_fc_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_ixgbe_common.c_ixgbe_setup_fc_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.3*, i32*, i32*)* }
%struct.ixgbe_hw.2 = type opaque
%struct.ixgbe_hw.3 = type opaque
%struct.TYPE_6__ = type { i32, i64 }

@IXGBE_SUCCESS = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"ixgbe_setup_fc_generic\00", align 1
@IXGBE_ERROR_UNSUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"ixgbe_fc_rx_pause not valid in strict IEEE mode\0A\00", align 1
@IXGBE_ERR_INVALID_LINK_SETTINGS = common dso_local global i64 0, align 8
@ixgbe_fc_default = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_ADVT = common dso_local global i32 0, align 4
@IXGBE_MDIO_AUTO_NEG_DEV_TYPE = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_PCS1GANA_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_AUTOC_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_AUTOC_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_TAF_SYM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_TAF_ASM_PAUSE = common dso_local global i32 0, align 4
@IXGBE_ERROR_ARGUMENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Flow control param set incorrectly\0A\00", align 1
@IXGBE_ERR_CONFIG = common dso_local global i64 0, align 8
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_PCS1GLCTL = common dso_local global i32 0, align 4
@IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"Set up FC; PCS1GLCTL = 0x%08X\0A\00", align 1
@IXGBE_AUTOC_AN_RESTART = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ixgbe_setup_fc_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %8 = load i64, i64* @IXGBE_SUCCESS, align 8
  store i64 %8, i64* %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %9 = load i32, i32* @FALSE, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %12 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 134
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* @IXGBE_ERROR_UNSUPPORTED, align 4
  %24 = call i32 @ERROR_REPORT1(i32 %23, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i64, i64* @IXGBE_ERR_INVALID_LINK_SETTINGS, align 8
  store i64 %25, i64* %3, align 8
  br label %265

26:                                               ; preds = %16, %1
  %27 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @ixgbe_fc_default, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  store i32 136, i32* %36, align 8
  br label %37

37:                                               ; preds = %33, %26
  %38 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %71 [
    i32 132, label %42
    i32 129, label %56
    i32 128, label %56
    i32 130, label %56
    i32 131, label %60
  ]

42:                                               ; preds = %37
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  %47 = load i64 (%struct.ixgbe_hw.3*, i32*, i32*)*, i64 (%struct.ixgbe_hw.3*, i32*, i32*)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.3*
  %50 = call i64 %47(%struct.ixgbe_hw.3* %49, i32* %7, i32* %5)
  store i64 %50, i64* %3, align 8
  %51 = load i64, i64* %3, align 8
  %52 = load i64, i64* @IXGBE_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %42
  br label %265

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %37, %37, %37, %55
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %58 = load i32, i32* @IXGBE_PCS1GANA, align 4
  %59 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %72

60:                                               ; preds = %37
  %61 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32*)** %64, align 8
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %67 = bitcast %struct.ixgbe_hw* %66 to %struct.ixgbe_hw.1*
  %68 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_ADVT, align 4
  %69 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %70 = call i32 %65(%struct.ixgbe_hw.1* %67, i32 %68, i32 %69, i32* %6)
  br label %72

71:                                               ; preds = %37
  br label %72

72:                                               ; preds = %71, %60, %56
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %74 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  switch i32 %76, label %179 [
    i32 135, label %77
    i32 133, label %111
    i32 134, label %148
    i32 136, label %148
  ]

77:                                               ; preds = %72
  %78 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %79 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %80 = or i32 %78, %79
  %81 = xor i32 %80, -1
  %82 = load i32, i32* %4, align 4
  %83 = and i32 %82, %81
  store i32 %83, i32* %4, align 4
  %84 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %85 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 132
  br i1 %88, label %89, label %96

89:                                               ; preds = %77
  %90 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %91 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %92 = or i32 %90, %91
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %5, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %5, align 4
  br label %110

96:                                               ; preds = %77
  %97 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %98 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp eq i32 %100, 131
  br i1 %101, label %102, label %109

102:                                              ; preds = %96
  %103 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %104 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %105 = or i32 %103, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %6, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %6, align 4
  br label %109

109:                                              ; preds = %102, %96
  br label %110

110:                                              ; preds = %109, %89
  br label %183

111:                                              ; preds = %72
  %112 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %113 = load i32, i32* %4, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %4, align 4
  %115 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %4, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %4, align 4
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp eq i32 %122, 132
  br i1 %123, label %124, label %132

124:                                              ; preds = %111
  %125 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %126 = load i32, i32* %5, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %5, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %5, align 4
  br label %147

132:                                              ; preds = %111
  %133 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %134 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 131
  br i1 %137, label %138, label %146

138:                                              ; preds = %132
  %139 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %140 = load i32, i32* %6, align 4
  %141 = or i32 %140, %139
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %143 = xor i32 %142, -1
  %144 = load i32, i32* %6, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %6, align 4
  br label %146

146:                                              ; preds = %138, %132
  br label %147

147:                                              ; preds = %146, %124
  br label %183

148:                                              ; preds = %72, %72
  %149 = load i32, i32* @IXGBE_PCS1GANA_SYM_PAUSE, align 4
  %150 = load i32, i32* @IXGBE_PCS1GANA_ASM_PAUSE, align 4
  %151 = or i32 %149, %150
  %152 = load i32, i32* %4, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %4, align 4
  %154 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %155 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 132
  br i1 %158, label %159, label %165

159:                                              ; preds = %148
  %160 = load i32, i32* @IXGBE_AUTOC_SYM_PAUSE, align 4
  %161 = load i32, i32* @IXGBE_AUTOC_ASM_PAUSE, align 4
  %162 = or i32 %160, %161
  %163 = load i32, i32* %5, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %5, align 4
  br label %178

165:                                              ; preds = %148
  %166 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %167 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = icmp eq i32 %169, 131
  br i1 %170, label %171, label %177

171:                                              ; preds = %165
  %172 = load i32, i32* @IXGBE_TAF_SYM_PAUSE, align 4
  %173 = load i32, i32* @IXGBE_TAF_ASM_PAUSE, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* %6, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %6, align 4
  br label %177

177:                                              ; preds = %171, %165
  br label %178

178:                                              ; preds = %177, %159
  br label %183

179:                                              ; preds = %72
  %180 = load i32, i32* @IXGBE_ERROR_ARGUMENT, align 4
  %181 = call i32 @ERROR_REPORT1(i32 %180, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %182 = load i64, i64* @IXGBE_ERR_CONFIG, align 8
  store i64 %182, i64* %3, align 8
  br label %265

183:                                              ; preds = %178, %147, %110
  %184 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %185 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %184, i32 0, i32 1
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = load i64, i64* @ixgbe_mac_X540, align 8
  %189 = icmp slt i64 %187, %188
  br i1 %189, label %190, label %215

190:                                              ; preds = %183
  %191 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %192 = load i32, i32* @IXGBE_PCS1GANA, align 4
  %193 = load i32, i32* %4, align 4
  %194 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %191, i32 %192, i32 %193)
  %195 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %196 = load i32, i32* @IXGBE_PCS1GLCTL, align 4
  %197 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %195, i32 %196)
  store i32 %197, i32* %4, align 4
  %198 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %199 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 1
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %208

203:                                              ; preds = %190
  %204 = load i32, i32* @IXGBE_PCS1GLCTL_AN_1G_TIMEOUT_EN, align 4
  %205 = xor i32 %204, -1
  %206 = load i32, i32* %4, align 4
  %207 = and i32 %206, %205
  store i32 %207, i32* %4, align 4
  br label %208

208:                                              ; preds = %203, %190
  %209 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %210 = load i32, i32* @IXGBE_PCS1GLCTL, align 4
  %211 = load i32, i32* %4, align 4
  %212 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %209, i32 %210, i32 %211)
  %213 = load i32, i32* %4, align 4
  %214 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %208, %183
  %216 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %217 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp eq i32 %219, 132
  br i1 %220, label %221, label %239

221:                                              ; preds = %215
  %222 = load i32, i32* @IXGBE_AUTOC_AN_RESTART, align 4
  %223 = load i32, i32* %5, align 4
  %224 = or i32 %223, %222
  store i32 %224, i32* %5, align 4
  %225 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %226 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %227, i32 0, i32 0
  %229 = load i64 (%struct.ixgbe_hw.2*, i32, i32)*, i64 (%struct.ixgbe_hw.2*, i32, i32)** %228, align 8
  %230 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %231 = bitcast %struct.ixgbe_hw* %230 to %struct.ixgbe_hw.2*
  %232 = load i32, i32* %5, align 4
  %233 = load i32, i32* %7, align 4
  %234 = call i64 %229(%struct.ixgbe_hw.2* %231, i32 %232, i32 %233)
  store i64 %234, i64* %3, align 8
  %235 = load i64, i64* %3, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %221
  br label %265

238:                                              ; preds = %221
  br label %262

239:                                              ; preds = %215
  %240 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %241 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = icmp eq i32 %243, 131
  br i1 %244, label %245, label %261

245:                                              ; preds = %239
  %246 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %247 = call i64 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw* %246)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %245
  %250 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %251 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %250, i32 0, i32 0
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 0
  %254 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32)** %253, align 8
  %255 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %256 = bitcast %struct.ixgbe_hw* %255 to %struct.ixgbe_hw.0*
  %257 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_ADVT, align 4
  %258 = load i32, i32* @IXGBE_MDIO_AUTO_NEG_DEV_TYPE, align 4
  %259 = load i32, i32* %6, align 4
  %260 = call i32 %254(%struct.ixgbe_hw.0* %256, i32 %257, i32 %258, i32 %259)
  br label %261

261:                                              ; preds = %249, %245, %239
  br label %262

262:                                              ; preds = %261, %238
  %263 = load i32, i32* %4, align 4
  %264 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %263)
  br label %265

265:                                              ; preds = %262, %237, %179, %54, %22
  %266 = load i64, i64* %3, align 8
  ret i64 %266
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @ERROR_REPORT1(i32, i8*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @DEBUGOUT1(i8*, i32) #1

declare dso_local i64 @ixgbe_device_supports_autoneg_fc(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
