; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_add_media_types.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_add_media_types.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@IXGBE_PHYSICAL_LAYER_10GBASE_T = common dso_local global i32 0, align 4
@IFM_ETHER = common dso_local global i32 0, align 4
@IFM_10G_T = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_T = common dso_local global i32 0, align 4
@IFM_1000_T = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_100BASE_TX = common dso_local global i32 0, align 4
@IFM_100_TX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10BASE_T = common dso_local global i32 0, align 4
@IFM_10_T = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA = common dso_local global i32 0, align 4
@IFM_10G_TWINAX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_LR = common dso_local global i32 0, align 4
@IFM_10G_LR = common dso_local global i32 0, align 4
@IFM_1000_LX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_SR = common dso_local global i32 0, align 4
@IFM_10G_SR = common dso_local global i32 0, align 4
@IFM_1000_SX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_SX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_CX4 = common dso_local global i32 0, align 4
@IFM_10G_CX4 = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_10GBASE_KR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Media supported: 10GbaseKR\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"10GbaseKR mapped to 10GbaseSR\0A\00", align 1
@IXGBE_PHYSICAL_LAYER_10GBASE_KX4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Media supported: 10GbaseKX4\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"10GbaseKX4 mapped to 10GbaseCX4\0A\00", align 1
@IXGBE_PHYSICAL_LAYER_1000BASE_KX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Media supported: 1000baseKX\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"1000baseKX mapped to 1000baseCX\0A\00", align 1
@IFM_1000_CX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_2500BASE_KX = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"Media supported: 2500baseKX\0A\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"2500baseKX mapped to 2500baseSX\0A\00", align 1
@IFM_2500_SX = common dso_local global i32 0, align 4
@IXGBE_PHYSICAL_LAYER_1000BASE_BX = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [29 x i8] c"Media supported: 1000baseBX\0A\00", align 1
@IXGBE_DEV_ID_82598AT = common dso_local global i64 0, align 8
@IFM_FDX = common dso_local global i32 0, align 4
@IFM_AUTO = common dso_local global i32 0, align 4
@IFM_1000_KX = common dso_local global i32 0, align 4
@IFM_10G_KR = common dso_local global i32 0, align 4
@IFM_10G_KX4 = common dso_local global i32 0, align 4
@IFM_2500_KX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixgbe_add_media_types to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_add_media_types(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call %struct.adapter* @iflib_get_softc(i32 %7)
  store %struct.adapter* %8, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 2
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %4, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @iflib_get_dev(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %14 = call i32 @ixgbe_get_supported_physical_layer(%struct.ixgbe_hw* %13)
  %15 = load %struct.adapter*, %struct.adapter** %3, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  store i32 %14, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_T, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.adapter*, %struct.adapter** %3, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @IFM_ETHER, align 4
  %26 = load i32, i32* @IFM_10G_T, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ifmedia_add(i32 %24, i32 %27, i32 0, i32* null)
  br label %29

29:                                               ; preds = %21, %1
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_T, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %29
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @IFM_ETHER, align 4
  %39 = load i32, i32* @IFM_1000_T, align 4
  %40 = or i32 %38, %39
  %41 = call i32 @ifmedia_add(i32 %37, i32 %40, i32 0, i32* null)
  br label %42

42:                                               ; preds = %34, %29
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @IXGBE_PHYSICAL_LAYER_100BASE_TX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %42
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = getelementptr inbounds %struct.adapter, %struct.adapter* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IFM_ETHER, align 4
  %52 = load i32, i32* @IFM_100_TX, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @ifmedia_add(i32 %50, i32 %53, i32 0, i32* null)
  br label %55

55:                                               ; preds = %47, %42
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10BASE_T, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %55
  %61 = load %struct.adapter*, %struct.adapter** %3, align 8
  %62 = getelementptr inbounds %struct.adapter, %struct.adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @IFM_ETHER, align 4
  %65 = load i32, i32* @IFM_10_T, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @ifmedia_add(i32 %63, i32 %66, i32 0, i32* null)
  br label %68

68:                                               ; preds = %60, %55
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_PLUS_CU, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @IXGBE_PHYSICAL_LAYER_SFP_ACTIVE_DA, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %73, %68
  %79 = load %struct.adapter*, %struct.adapter** %3, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @IFM_ETHER, align 4
  %83 = load i32, i32* @IFM_10G_TWINAX, align 4
  %84 = or i32 %82, %83
  %85 = call i32 @ifmedia_add(i32 %81, i32 %84, i32 0, i32* null)
  br label %86

86:                                               ; preds = %78, %73
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_LR, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %113

91:                                               ; preds = %86
  %92 = load %struct.adapter*, %struct.adapter** %3, align 8
  %93 = getelementptr inbounds %struct.adapter, %struct.adapter* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @IFM_ETHER, align 4
  %96 = load i32, i32* @IFM_10G_LR, align 4
  %97 = or i32 %95, %96
  %98 = call i32 @ifmedia_add(i32 %94, i32 %97, i32 0, i32* null)
  %99 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %91
  %105 = load %struct.adapter*, %struct.adapter** %3, align 8
  %106 = getelementptr inbounds %struct.adapter, %struct.adapter* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @IFM_ETHER, align 4
  %109 = load i32, i32* @IFM_1000_LX, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @ifmedia_add(i32 %107, i32 %110, i32 0, i32* null)
  br label %112

112:                                              ; preds = %104, %91
  br label %113

113:                                              ; preds = %112, %86
  %114 = load i32, i32* %6, align 4
  %115 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_SR, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %140

118:                                              ; preds = %113
  %119 = load %struct.adapter*, %struct.adapter** %3, align 8
  %120 = getelementptr inbounds %struct.adapter, %struct.adapter* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @IFM_ETHER, align 4
  %123 = load i32, i32* @IFM_10G_SR, align 4
  %124 = or i32 %122, %123
  %125 = call i32 @ifmedia_add(i32 %121, i32 %124, i32 0, i32* null)
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %118
  %132 = load %struct.adapter*, %struct.adapter** %3, align 8
  %133 = getelementptr inbounds %struct.adapter, %struct.adapter* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* @IFM_ETHER, align 4
  %136 = load i32, i32* @IFM_1000_SX, align 4
  %137 = or i32 %135, %136
  %138 = call i32 @ifmedia_add(i32 %134, i32 %137, i32 0, i32* null)
  br label %139

139:                                              ; preds = %131, %118
  br label %154

140:                                              ; preds = %113
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_SX, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %140
  %146 = load %struct.adapter*, %struct.adapter** %3, align 8
  %147 = getelementptr inbounds %struct.adapter, %struct.adapter* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @IFM_ETHER, align 4
  %150 = load i32, i32* @IFM_1000_SX, align 4
  %151 = or i32 %149, %150
  %152 = call i32 @ifmedia_add(i32 %148, i32 %151, i32 0, i32* null)
  br label %153

153:                                              ; preds = %145, %140
  br label %154

154:                                              ; preds = %153, %139
  %155 = load i32, i32* %6, align 4
  %156 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_CX4, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %154
  %160 = load %struct.adapter*, %struct.adapter** %3, align 8
  %161 = getelementptr inbounds %struct.adapter, %struct.adapter* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @IFM_ETHER, align 4
  %164 = load i32, i32* @IFM_10G_CX4, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @ifmedia_add(i32 %162, i32 %165, i32 0, i32* null)
  br label %167

167:                                              ; preds = %159, %154
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KR, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %184

172:                                              ; preds = %167
  %173 = load i32, i32* %5, align 4
  %174 = call i32 @device_printf(i32 %173, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %175 = load i32, i32* %5, align 4
  %176 = call i32 @device_printf(i32 %175, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %177 = load %struct.adapter*, %struct.adapter** %3, align 8
  %178 = getelementptr inbounds %struct.adapter, %struct.adapter* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* @IFM_ETHER, align 4
  %181 = load i32, i32* @IFM_10G_SR, align 4
  %182 = or i32 %180, %181
  %183 = call i32 @ifmedia_add(i32 %179, i32 %182, i32 0, i32* null)
  br label %184

184:                                              ; preds = %172, %167
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* @IXGBE_PHYSICAL_LAYER_10GBASE_KX4, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %201

189:                                              ; preds = %184
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @device_printf(i32 %190, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @device_printf(i32 %192, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %194 = load %struct.adapter*, %struct.adapter** %3, align 8
  %195 = getelementptr inbounds %struct.adapter, %struct.adapter* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @IFM_ETHER, align 4
  %198 = load i32, i32* @IFM_10G_CX4, align 4
  %199 = or i32 %197, %198
  %200 = call i32 @ifmedia_add(i32 %196, i32 %199, i32 0, i32* null)
  br label %201

201:                                              ; preds = %189, %184
  %202 = load i32, i32* %6, align 4
  %203 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_KX, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %218

206:                                              ; preds = %201
  %207 = load i32, i32* %5, align 4
  %208 = call i32 @device_printf(i32 %207, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %209 = load i32, i32* %5, align 4
  %210 = call i32 @device_printf(i32 %209, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %211 = load %struct.adapter*, %struct.adapter** %3, align 8
  %212 = getelementptr inbounds %struct.adapter, %struct.adapter* %211, i32 0, i32 1
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @IFM_ETHER, align 4
  %215 = load i32, i32* @IFM_1000_CX, align 4
  %216 = or i32 %214, %215
  %217 = call i32 @ifmedia_add(i32 %213, i32 %216, i32 0, i32* null)
  br label %218

218:                                              ; preds = %206, %201
  %219 = load i32, i32* %6, align 4
  %220 = load i32, i32* @IXGBE_PHYSICAL_LAYER_2500BASE_KX, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %235

223:                                              ; preds = %218
  %224 = load i32, i32* %5, align 4
  %225 = call i32 @device_printf(i32 %224, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %226 = load i32, i32* %5, align 4
  %227 = call i32 @device_printf(i32 %226, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0))
  %228 = load %struct.adapter*, %struct.adapter** %3, align 8
  %229 = getelementptr inbounds %struct.adapter, %struct.adapter* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @IFM_ETHER, align 4
  %232 = load i32, i32* @IFM_2500_SX, align 4
  %233 = or i32 %231, %232
  %234 = call i32 @ifmedia_add(i32 %230, i32 %233, i32 0, i32* null)
  br label %235

235:                                              ; preds = %223, %218
  %236 = load i32, i32* %6, align 4
  %237 = load i32, i32* @IXGBE_PHYSICAL_LAYER_1000BASE_BX, align 4
  %238 = and i32 %236, %237
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %243

240:                                              ; preds = %235
  %241 = load i32, i32* %5, align 4
  %242 = call i32 @device_printf(i32 %241, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i64 0, i64 0))
  br label %243

243:                                              ; preds = %240, %235
  %244 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %245 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %244, i32 0, i32 0
  %246 = load i64, i64* %245, align 8
  %247 = load i64, i64* @IXGBE_DEV_ID_82598AT, align 8
  %248 = icmp eq i64 %246, %247
  br i1 %248, label %249, label %266

249:                                              ; preds = %243
  %250 = load %struct.adapter*, %struct.adapter** %3, align 8
  %251 = getelementptr inbounds %struct.adapter, %struct.adapter* %250, i32 0, i32 1
  %252 = load i32, i32* %251, align 4
  %253 = load i32, i32* @IFM_ETHER, align 4
  %254 = load i32, i32* @IFM_1000_T, align 4
  %255 = or i32 %253, %254
  %256 = load i32, i32* @IFM_FDX, align 4
  %257 = or i32 %255, %256
  %258 = call i32 @ifmedia_add(i32 %252, i32 %257, i32 0, i32* null)
  %259 = load %struct.adapter*, %struct.adapter** %3, align 8
  %260 = getelementptr inbounds %struct.adapter, %struct.adapter* %259, i32 0, i32 1
  %261 = load i32, i32* %260, align 4
  %262 = load i32, i32* @IFM_ETHER, align 4
  %263 = load i32, i32* @IFM_1000_T, align 4
  %264 = or i32 %262, %263
  %265 = call i32 @ifmedia_add(i32 %261, i32 %264, i32 0, i32* null)
  br label %266

266:                                              ; preds = %249, %243
  %267 = load %struct.adapter*, %struct.adapter** %3, align 8
  %268 = getelementptr inbounds %struct.adapter, %struct.adapter* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = load i32, i32* @IFM_ETHER, align 4
  %271 = load i32, i32* @IFM_AUTO, align 4
  %272 = or i32 %270, %271
  %273 = call i32 @ifmedia_add(i32 %269, i32 %272, i32 0, i32* null)
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @ixgbe_get_supported_physical_layer(%struct.ixgbe_hw*) #1

declare dso_local i32 @ifmedia_add(i32, i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
