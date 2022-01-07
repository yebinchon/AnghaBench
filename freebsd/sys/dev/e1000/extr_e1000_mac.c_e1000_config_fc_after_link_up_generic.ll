; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_config_fc_after_link_up_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_config_fc_after_link_up_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.e1000_mac_info }
%struct.TYPE_8__ = type { i64, i8* }
%struct.TYPE_7__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 (%struct.e1000_hw.0*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_mac_info = type { i64, %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i64 (%struct.e1000_hw.1*, i64*, i64*)* }
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"e1000_config_fc_after_link_up_generic\00", align 1
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@e1000_media_type_internal_serdes = common dso_local global i64 0, align 8
@e1000_media_type_copper = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Error forcing flow control settings\0A\00", align 1
@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_AUTONEG_COMPLETE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [44 x i8] c"Copper PHY and Auto Neg has not completed.\0A\00", align 1
@PHY_AUTONEG_ADV = common dso_local global i32 0, align 4
@PHY_LP_ABILITY = common dso_local global i32 0, align 4
@NWAY_AR_PAUSE = common dso_local global i64 0, align 8
@NWAY_LPAR_PAUSE = common dso_local global i64 0, align 8
@e1000_fc_full = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Flow Control = FULL.\0A\00", align 1
@e1000_fc_rx_pause = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [38 x i8] c"Flow Control = Rx PAUSE frames only.\0A\00", align 1
@NWAY_AR_ASM_DIR = common dso_local global i64 0, align 8
@NWAY_LPAR_ASM_DIR = common dso_local global i64 0, align 8
@e1000_fc_tx_pause = common dso_local global i8* null, align 8
@.str.5 = private unnamed_addr constant [38 x i8] c"Flow Control = Tx PAUSE frames only.\0A\00", align 1
@e1000_fc_none = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"Flow Control = NONE.\0A\00", align 1
@.str.7 = private unnamed_addr constant [37 x i8] c"Error getting link speed and duplex\0A\00", align 1
@HALF_DUPLEX = common dso_local global i64 0, align 8
@E1000_PCS_LSTAT = common dso_local global i32 0, align 4
@E1000_PCS_LSTS_AN_COMPLETE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [33 x i8] c"PCS Auto Neg has not completed.\0A\00", align 1
@E1000_PCS_ANADV = common dso_local global i32 0, align 4
@E1000_PCS_LPAB = common dso_local global i32 0, align 4
@E1000_TXCW_PAUSE = common dso_local global i32 0, align 4
@E1000_TXCW_ASM_DIR = common dso_local global i32 0, align 4
@E1000_PCS_LCTL = common dso_local global i32 0, align 4
@E1000_PCS_LCTL_FORCE_FCTRL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_config_fc_after_link_up_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_mac_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %16 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %15, i32 0, i32 2
  store %struct.e1000_mac_info* %16, %struct.e1000_mac_info** %4, align 8
  %17 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %17, i64* %5, align 8
  %18 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %20 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %41

23:                                               ; preds = %1
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %25 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @e1000_media_type_fiber, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %37, label %30

30:                                               ; preds = %23
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30, %23
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = call i64 @e1000_force_mac_fc_generic(%struct.e1000_hw* %38)
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %37, %30
  br label %52

41:                                               ; preds = %1
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %43 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @e1000_media_type_copper, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = call i64 @e1000_force_mac_fc_generic(%struct.e1000_hw* %49)
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %48, %41
  br label %52

52:                                               ; preds = %51, %40
  %53 = load i64, i64* %5, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %52
  %56 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %2, align 8
  br label %397

58:                                               ; preds = %52
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @e1000_media_type_copper, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %256

65:                                               ; preds = %58
  %66 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %256

70:                                               ; preds = %65
  %71 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %72 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %74, align 8
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %77 = bitcast %struct.e1000_hw* %76 to %struct.e1000_hw.0*
  %78 = load i32, i32* @PHY_STATUS, align 4
  %79 = call i64 %75(%struct.e1000_hw.0* %77, i32 %78, i64* %10)
  store i64 %79, i64* %5, align 8
  %80 = load i64, i64* %5, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %70
  %83 = load i64, i64* %5, align 8
  store i64 %83, i64* %2, align 8
  br label %397

84:                                               ; preds = %70
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %88, align 8
  %90 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %91 = bitcast %struct.e1000_hw* %90 to %struct.e1000_hw.0*
  %92 = load i32, i32* @PHY_STATUS, align 4
  %93 = call i64 %89(%struct.e1000_hw.0* %91, i32 %92, i64* %10)
  store i64 %93, i64* %5, align 8
  %94 = load i64, i64* %5, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %84
  %97 = load i64, i64* %5, align 8
  store i64 %97, i64* %2, align 8
  br label %397

98:                                               ; preds = %84
  %99 = load i64, i64* %10, align 8
  %100 = load i64, i64* @MII_SR_AUTONEG_COMPLETE, align 8
  %101 = and i64 %99, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %98
  %104 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %105 = load i64, i64* %5, align 8
  store i64 %105, i64* %2, align 8
  br label %397

106:                                              ; preds = %98
  %107 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %108 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %110, align 8
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %113 = bitcast %struct.e1000_hw* %112 to %struct.e1000_hw.0*
  %114 = load i32, i32* @PHY_AUTONEG_ADV, align 4
  %115 = call i64 %111(%struct.e1000_hw.0* %113, i32 %114, i64* %11)
  store i64 %115, i64* %5, align 8
  %116 = load i64, i64* %5, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %106
  %119 = load i64, i64* %5, align 8
  store i64 %119, i64* %2, align 8
  br label %397

120:                                              ; preds = %106
  %121 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %122 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  %125 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %124, align 8
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %127 = bitcast %struct.e1000_hw* %126 to %struct.e1000_hw.0*
  %128 = load i32, i32* @PHY_LP_ABILITY, align 4
  %129 = call i64 %125(%struct.e1000_hw.0* %127, i32 %128, i64* %12)
  store i64 %129, i64* %5, align 8
  %130 = load i64, i64* %5, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %120
  %133 = load i64, i64* %5, align 8
  store i64 %133, i64* %2, align 8
  br label %397

134:                                              ; preds = %120
  %135 = load i64, i64* %11, align 8
  %136 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %137 = and i64 %135, %136
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %134
  %140 = load i64, i64* %12, align 8
  %141 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %165

144:                                              ; preds = %139
  %145 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %146 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @e1000_fc_full, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load i64, i64* @e1000_fc_full, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %155 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 1
  store i8* %153, i8** %156, align 8
  %157 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %164

158:                                              ; preds = %144
  %159 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %160 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %161 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  store i8* %159, i8** %162, align 8
  %163 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %164

164:                                              ; preds = %158, %151
  br label %225

165:                                              ; preds = %139, %134
  %166 = load i64, i64* %11, align 8
  %167 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %168 = and i64 %166, %167
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %191, label %170

170:                                              ; preds = %165
  %171 = load i64, i64* %11, align 8
  %172 = load i64, i64* @NWAY_AR_ASM_DIR, align 8
  %173 = and i64 %171, %172
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %191

175:                                              ; preds = %170
  %176 = load i64, i64* %12, align 8
  %177 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %178 = and i64 %176, %177
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %191

180:                                              ; preds = %175
  %181 = load i64, i64* %12, align 8
  %182 = load i64, i64* @NWAY_LPAR_ASM_DIR, align 8
  %183 = and i64 %181, %182
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %191

185:                                              ; preds = %180
  %186 = load i8*, i8** @e1000_fc_tx_pause, align 8
  %187 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %188 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 1
  store i8* %186, i8** %189, align 8
  %190 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %224

191:                                              ; preds = %180, %175, %170, %165
  %192 = load i64, i64* %11, align 8
  %193 = load i64, i64* @NWAY_AR_PAUSE, align 8
  %194 = and i64 %192, %193
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %217

196:                                              ; preds = %191
  %197 = load i64, i64* %11, align 8
  %198 = load i64, i64* @NWAY_AR_ASM_DIR, align 8
  %199 = and i64 %197, %198
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %217

201:                                              ; preds = %196
  %202 = load i64, i64* %12, align 8
  %203 = load i64, i64* @NWAY_LPAR_PAUSE, align 8
  %204 = and i64 %202, %203
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %217, label %206

206:                                              ; preds = %201
  %207 = load i64, i64* %12, align 8
  %208 = load i64, i64* @NWAY_LPAR_ASM_DIR, align 8
  %209 = and i64 %207, %208
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %217

211:                                              ; preds = %206
  %212 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %213 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %214 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 1
  store i8* %212, i8** %215, align 8
  %216 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %223

217:                                              ; preds = %206, %201, %196, %191
  %218 = load i8*, i8** @e1000_fc_none, align 8
  %219 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %220 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 1
  store i8* %218, i8** %221, align 8
  %222 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %223

223:                                              ; preds = %217, %211
  br label %224

224:                                              ; preds = %223, %185
  br label %225

225:                                              ; preds = %224, %164
  %226 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %227 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %226, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %227, i32 0, i32 0
  %229 = load i64 (%struct.e1000_hw.1*, i64*, i64*)*, i64 (%struct.e1000_hw.1*, i64*, i64*)** %228, align 8
  %230 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %231 = bitcast %struct.e1000_hw* %230 to %struct.e1000_hw.1*
  %232 = call i64 %229(%struct.e1000_hw.1* %231, i64* %13, i64* %14)
  store i64 %232, i64* %5, align 8
  %233 = load i64, i64* %5, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %238

235:                                              ; preds = %225
  %236 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  %237 = load i64, i64* %5, align 8
  store i64 %237, i64* %2, align 8
  br label %397

238:                                              ; preds = %225
  %239 = load i64, i64* %14, align 8
  %240 = load i64, i64* @HALF_DUPLEX, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %247

242:                                              ; preds = %238
  %243 = load i8*, i8** @e1000_fc_none, align 8
  %244 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %245 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %244, i32 0, i32 0
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 1
  store i8* %243, i8** %246, align 8
  br label %247

247:                                              ; preds = %242, %238
  %248 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %249 = call i64 @e1000_force_mac_fc_generic(%struct.e1000_hw* %248)
  store i64 %249, i64* %5, align 8
  %250 = load i64, i64* %5, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %255

252:                                              ; preds = %247
  %253 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %254 = load i64, i64* %5, align 8
  store i64 %254, i64* %2, align 8
  br label %397

255:                                              ; preds = %247
  br label %256

256:                                              ; preds = %255, %65, %58
  %257 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %258 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @e1000_media_type_internal_serdes, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %395

263:                                              ; preds = %256
  %264 = load %struct.e1000_mac_info*, %struct.e1000_mac_info** %4, align 8
  %265 = getelementptr inbounds %struct.e1000_mac_info, %struct.e1000_mac_info* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %395

268:                                              ; preds = %263
  %269 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %270 = load i32, i32* @E1000_PCS_LSTAT, align 4
  %271 = call i32 @E1000_READ_REG(%struct.e1000_hw* %269, i32 %270)
  store i32 %271, i32* %6, align 4
  %272 = load i32, i32* %6, align 4
  %273 = load i32, i32* @E1000_PCS_LSTS_AN_COMPLETE, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %279, label %276

276:                                              ; preds = %268
  %277 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.8, i64 0, i64 0))
  %278 = load i64, i64* %5, align 8
  store i64 %278, i64* %2, align 8
  br label %397

279:                                              ; preds = %268
  %280 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %281 = load i32, i32* @E1000_PCS_ANADV, align 4
  %282 = call i32 @E1000_READ_REG(%struct.e1000_hw* %280, i32 %281)
  store i32 %282, i32* %7, align 4
  %283 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %284 = load i32, i32* @E1000_PCS_LPAB, align 4
  %285 = call i32 @E1000_READ_REG(%struct.e1000_hw* %283, i32 %284)
  store i32 %285, i32* %8, align 4
  %286 = load i32, i32* %7, align 4
  %287 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %288 = and i32 %286, %287
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %316

290:                                              ; preds = %279
  %291 = load i32, i32* %8, align 4
  %292 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %293 = and i32 %291, %292
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %316

295:                                              ; preds = %290
  %296 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %297 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %296, i32 0, i32 0
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 0
  %299 = load i64, i64* %298, align 8
  %300 = load i64, i64* @e1000_fc_full, align 8
  %301 = icmp eq i64 %299, %300
  br i1 %301, label %302, label %309

302:                                              ; preds = %295
  %303 = load i64, i64* @e1000_fc_full, align 8
  %304 = inttoptr i64 %303 to i8*
  %305 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %306 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 1
  store i8* %304, i8** %307, align 8
  %308 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %315

309:                                              ; preds = %295
  %310 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %311 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %312 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %312, i32 0, i32 1
  store i8* %310, i8** %313, align 8
  %314 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %315

315:                                              ; preds = %309, %302
  br label %376

316:                                              ; preds = %290, %279
  %317 = load i32, i32* %7, align 4
  %318 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %319 = and i32 %317, %318
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %342, label %321

321:                                              ; preds = %316
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %324 = and i32 %322, %323
  %325 = icmp ne i32 %324, 0
  br i1 %325, label %326, label %342

326:                                              ; preds = %321
  %327 = load i32, i32* %8, align 4
  %328 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %329 = and i32 %327, %328
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %342

331:                                              ; preds = %326
  %332 = load i32, i32* %8, align 4
  %333 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %334 = and i32 %332, %333
  %335 = icmp ne i32 %334, 0
  br i1 %335, label %336, label %342

336:                                              ; preds = %331
  %337 = load i8*, i8** @e1000_fc_tx_pause, align 8
  %338 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %339 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %338, i32 0, i32 0
  %340 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %339, i32 0, i32 1
  store i8* %337, i8** %340, align 8
  %341 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  br label %375

342:                                              ; preds = %331, %326, %321, %316
  %343 = load i32, i32* %7, align 4
  %344 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %345 = and i32 %343, %344
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %368

347:                                              ; preds = %342
  %348 = load i32, i32* %7, align 4
  %349 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %350 = and i32 %348, %349
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %368

352:                                              ; preds = %347
  %353 = load i32, i32* %8, align 4
  %354 = load i32, i32* @E1000_TXCW_PAUSE, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %368, label %357

357:                                              ; preds = %352
  %358 = load i32, i32* %8, align 4
  %359 = load i32, i32* @E1000_TXCW_ASM_DIR, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %368

362:                                              ; preds = %357
  %363 = load i8*, i8** @e1000_fc_rx_pause, align 8
  %364 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %365 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %364, i32 0, i32 0
  %366 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %365, i32 0, i32 1
  store i8* %363, i8** %366, align 8
  %367 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  br label %374

368:                                              ; preds = %357, %352, %347, %342
  %369 = load i8*, i8** @e1000_fc_none, align 8
  %370 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %371 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %370, i32 0, i32 0
  %372 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %371, i32 0, i32 1
  store i8* %369, i8** %372, align 8
  %373 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %374

374:                                              ; preds = %368, %362
  br label %375

375:                                              ; preds = %374, %336
  br label %376

376:                                              ; preds = %375, %315
  %377 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %378 = load i32, i32* @E1000_PCS_LCTL, align 4
  %379 = call i32 @E1000_READ_REG(%struct.e1000_hw* %377, i32 %378)
  store i32 %379, i32* %9, align 4
  %380 = load i32, i32* @E1000_PCS_LCTL_FORCE_FCTRL, align 4
  %381 = load i32, i32* %9, align 4
  %382 = or i32 %381, %380
  store i32 %382, i32* %9, align 4
  %383 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %384 = load i32, i32* @E1000_PCS_LCTL, align 4
  %385 = load i32, i32* %9, align 4
  %386 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %383, i32 %384, i32 %385)
  %387 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %388 = call i64 @e1000_force_mac_fc_generic(%struct.e1000_hw* %387)
  store i64 %388, i64* %5, align 8
  %389 = load i64, i64* %5, align 8
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %376
  %392 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %393 = load i64, i64* %5, align 8
  store i64 %393, i64* %2, align 8
  br label %397

394:                                              ; preds = %376
  br label %395

395:                                              ; preds = %394, %263, %256
  %396 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %396, i64* %2, align 8
  br label %397

397:                                              ; preds = %395, %391, %276, %252, %235, %132, %118, %103, %96, %82, %55
  %398 = load i64, i64* %2, align 8
  ret i64 %398
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i64 @e1000_force_mac_fc_generic(%struct.e1000_hw*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
