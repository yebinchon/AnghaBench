; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_init_device_features.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ix.c_ixgbe_init_device_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@IXGBE_FEATURE_NETMAP = common dso_local global i32 0, align 4
@IXGBE_FEATURE_RSS = common dso_local global i32 0, align 4
@IXGBE_FEATURE_MSI = common dso_local global i32 0, align 4
@IXGBE_FEATURE_MSIX = common dso_local global i32 0, align 4
@IXGBE_FEATURE_LEGACY_IRQ = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82598AT = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FAN_FAIL = common dso_local global i32 0, align 4
@IXGBE_FEATURE_SRIOV = common dso_local global i32 0, align 4
@IXGBE_FEATURE_FDIR = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X540_BYPASS = common dso_local global i32 0, align 4
@IXGBE_FEATURE_BYPASS = common dso_local global i32 0, align 4
@IXGBE_FEATURE_TEMP_SENSOR = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_X550EM_A_1G_T_L = common dso_local global i32 0, align 4
@IXGBE_FEATURE_EEE = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82599_BYPASS = common dso_local global i32 0, align 4
@IXGBE_DEV_ID_82599_QSFP_SF_QP = common dso_local global i32 0, align 4
@ixgbe_enable_fdir = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [57 x i8] c"Device does not support Flow Director. Leaving disabled.\00", align 1
@ixgbe_enable_msix = common dso_local global i32 0, align 4
@ixgbe_enable_rss = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @ixgbe_init_device_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_init_device_features(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %3 = load i32, i32* @IXGBE_FEATURE_NETMAP, align 4
  %4 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @IXGBE_FEATURE_MSI, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @IXGBE_FEATURE_MSIX, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @IXGBE_FEATURE_LEGACY_IRQ, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.adapter*, %struct.adapter** %2, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.adapter*, %struct.adapter** %2, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %178 [
    i32 133, label %19
    i32 131, label %33
    i32 130, label %64
    i32 128, label %80
    i32 129, label %91
    i32 132, label %133
  ]

19:                                               ; preds = %1
  %20 = load %struct.adapter*, %struct.adapter** %2, align 8
  %21 = getelementptr inbounds %struct.adapter, %struct.adapter* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IXGBE_DEV_ID_82598AT, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load i32, i32* @IXGBE_FEATURE_FAN_FAIL, align 4
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = getelementptr inbounds %struct.adapter, %struct.adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %19
  br label %179

33:                                               ; preds = %1
  %34 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = getelementptr inbounds %struct.adapter, %struct.adapter* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.adapter*, %struct.adapter** %2, align 8
  %45 = getelementptr inbounds %struct.adapter, %struct.adapter* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @IXGBE_DEV_ID_X540_BYPASS, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %33
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = getelementptr inbounds %struct.adapter, %struct.adapter* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @IXGBE_FEATURE_BYPASS, align 4
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %50, %33
  br label %179

64:                                               ; preds = %1
  %65 = load i32, i32* @IXGBE_FEATURE_TEMP_SENSOR, align 4
  %66 = load %struct.adapter*, %struct.adapter** %2, align 8
  %67 = getelementptr inbounds %struct.adapter, %struct.adapter* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %71 = load %struct.adapter*, %struct.adapter** %2, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  %75 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %76 = load %struct.adapter*, %struct.adapter** %2, align 8
  %77 = getelementptr inbounds %struct.adapter, %struct.adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %179

80:                                               ; preds = %1
  %81 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %82 = load %struct.adapter*, %struct.adapter** %2, align 8
  %83 = getelementptr inbounds %struct.adapter, %struct.adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %87 = load %struct.adapter*, %struct.adapter** %2, align 8
  %88 = getelementptr inbounds %struct.adapter, %struct.adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 4
  br label %179

91:                                               ; preds = %1
  %92 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %93 = load %struct.adapter*, %struct.adapter** %2, align 8
  %94 = getelementptr inbounds %struct.adapter, %struct.adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 4
  %97 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %98 = load %struct.adapter*, %struct.adapter** %2, align 8
  %99 = getelementptr inbounds %struct.adapter, %struct.adapter* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @IXGBE_FEATURE_LEGACY_IRQ, align 4
  %103 = xor i32 %102, -1
  %104 = load %struct.adapter*, %struct.adapter** %2, align 8
  %105 = getelementptr inbounds %struct.adapter, %struct.adapter* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, %103
  store i32 %107, i32* %105, align 4
  %108 = load %struct.adapter*, %struct.adapter** %2, align 8
  %109 = getelementptr inbounds %struct.adapter, %struct.adapter* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %121, label %114

114:                                              ; preds = %91
  %115 = load %struct.adapter*, %struct.adapter** %2, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @IXGBE_DEV_ID_X550EM_A_1G_T_L, align 4
  %120 = icmp eq i32 %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %114, %91
  %122 = load i32, i32* @IXGBE_FEATURE_TEMP_SENSOR, align 4
  %123 = load %struct.adapter*, %struct.adapter** %2, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = or i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* @IXGBE_FEATURE_EEE, align 4
  %128 = load %struct.adapter*, %struct.adapter** %2, align 8
  %129 = getelementptr inbounds %struct.adapter, %struct.adapter* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %121, %114
  br label %179

133:                                              ; preds = %1
  %134 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %135 = load %struct.adapter*, %struct.adapter** %2, align 8
  %136 = getelementptr inbounds %struct.adapter, %struct.adapter* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 4
  %139 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %140 = load %struct.adapter*, %struct.adapter** %2, align 8
  %141 = getelementptr inbounds %struct.adapter, %struct.adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 4
  %144 = load %struct.adapter*, %struct.adapter** %2, align 8
  %145 = getelementptr inbounds %struct.adapter, %struct.adapter* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IXGBE_DEV_ID_82599_BYPASS, align 4
  %149 = icmp eq i32 %147, %148
  br i1 %149, label %150, label %163

150:                                              ; preds = %133
  %151 = load %struct.adapter*, %struct.adapter** %2, align 8
  %152 = getelementptr inbounds %struct.adapter, %struct.adapter* %151, i32 0, i32 3
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %163

157:                                              ; preds = %150
  %158 = load i32, i32* @IXGBE_FEATURE_BYPASS, align 4
  %159 = load %struct.adapter*, %struct.adapter** %2, align 8
  %160 = getelementptr inbounds %struct.adapter, %struct.adapter* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %157, %150, %133
  %164 = load %struct.adapter*, %struct.adapter** %2, align 8
  %165 = getelementptr inbounds %struct.adapter, %struct.adapter* %164, i32 0, i32 3
  %166 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @IXGBE_DEV_ID_82599_QSFP_SF_QP, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %177

170:                                              ; preds = %163
  %171 = load i32, i32* @IXGBE_FEATURE_LEGACY_IRQ, align 4
  %172 = xor i32 %171, -1
  %173 = load %struct.adapter*, %struct.adapter** %2, align 8
  %174 = getelementptr inbounds %struct.adapter, %struct.adapter* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = and i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %170, %163
  br label %179

178:                                              ; preds = %1
  br label %179

179:                                              ; preds = %178, %177, %132, %80, %64, %63, %32
  %180 = load %struct.adapter*, %struct.adapter** %2, align 8
  %181 = getelementptr inbounds %struct.adapter, %struct.adapter* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @IXGBE_FEATURE_FAN_FAIL, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %192

186:                                              ; preds = %179
  %187 = load i32, i32* @IXGBE_FEATURE_FAN_FAIL, align 4
  %188 = load %struct.adapter*, %struct.adapter** %2, align 8
  %189 = getelementptr inbounds %struct.adapter, %struct.adapter* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 4
  br label %192

192:                                              ; preds = %186, %179
  %193 = load %struct.adapter*, %struct.adapter** %2, align 8
  %194 = getelementptr inbounds %struct.adapter, %struct.adapter* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = load i32, i32* @IXGBE_FEATURE_NETMAP, align 4
  %197 = and i32 %195, %196
  %198 = icmp ne i32 %197, 0
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load i32, i32* @IXGBE_FEATURE_NETMAP, align 4
  %201 = load %struct.adapter*, %struct.adapter** %2, align 8
  %202 = getelementptr inbounds %struct.adapter, %struct.adapter* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 4
  %204 = or i32 %203, %200
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %199, %192
  %206 = load %struct.adapter*, %struct.adapter** %2, align 8
  %207 = getelementptr inbounds %struct.adapter, %struct.adapter* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* @IXGBE_FEATURE_EEE, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %218

212:                                              ; preds = %205
  %213 = load i32, i32* @IXGBE_FEATURE_EEE, align 4
  %214 = load %struct.adapter*, %struct.adapter** %2, align 8
  %215 = getelementptr inbounds %struct.adapter, %struct.adapter* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = or i32 %216, %213
  store i32 %217, i32* %215, align 4
  br label %218

218:                                              ; preds = %212, %205
  %219 = load %struct.adapter*, %struct.adapter** %2, align 8
  %220 = getelementptr inbounds %struct.adapter, %struct.adapter* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 4
  %222 = load i32, i32* @IXGBE_FEATURE_TEMP_SENSOR, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %231

225:                                              ; preds = %218
  %226 = load i32, i32* @IXGBE_FEATURE_TEMP_SENSOR, align 4
  %227 = load %struct.adapter*, %struct.adapter** %2, align 8
  %228 = getelementptr inbounds %struct.adapter, %struct.adapter* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = or i32 %229, %226
  store i32 %230, i32* %228, align 4
  br label %231

231:                                              ; preds = %225, %218
  %232 = load i64, i64* @ixgbe_enable_fdir, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %253

234:                                              ; preds = %231
  %235 = load %struct.adapter*, %struct.adapter** %2, align 8
  %236 = getelementptr inbounds %struct.adapter, %struct.adapter* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %247

241:                                              ; preds = %234
  %242 = load i32, i32* @IXGBE_FEATURE_FDIR, align 4
  %243 = load %struct.adapter*, %struct.adapter** %2, align 8
  %244 = getelementptr inbounds %struct.adapter, %struct.adapter* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 4
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 4
  br label %252

247:                                              ; preds = %234
  %248 = load %struct.adapter*, %struct.adapter** %2, align 8
  %249 = getelementptr inbounds %struct.adapter, %struct.adapter* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  %251 = call i32 @device_printf(i32 %250, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  br label %252

252:                                              ; preds = %247, %241
  br label %253

253:                                              ; preds = %252, %231
  %254 = load i32, i32* @ixgbe_enable_msix, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %263, label %256

256:                                              ; preds = %253
  %257 = load i32, i32* @IXGBE_FEATURE_MSIX, align 4
  %258 = xor i32 %257, -1
  %259 = load %struct.adapter*, %struct.adapter** %2, align 8
  %260 = getelementptr inbounds %struct.adapter, %struct.adapter* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 4
  %262 = and i32 %261, %258
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %256, %253
  %264 = load %struct.adapter*, %struct.adapter** %2, align 8
  %265 = getelementptr inbounds %struct.adapter, %struct.adapter* %264, i32 0, i32 0
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %268 = and i32 %266, %267
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %279

270:                                              ; preds = %263
  %271 = load i64, i64* @ixgbe_enable_rss, align 8
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %270
  %274 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %275 = load %struct.adapter*, %struct.adapter** %2, align 8
  %276 = getelementptr inbounds %struct.adapter, %struct.adapter* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = or i32 %277, %274
  store i32 %278, i32* %276, align 4
  br label %279

279:                                              ; preds = %273, %270, %263
  %280 = load %struct.adapter*, %struct.adapter** %2, align 8
  %281 = getelementptr inbounds %struct.adapter, %struct.adapter* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @IXGBE_FEATURE_MSIX, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %311, label %286

286:                                              ; preds = %279
  %287 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %288 = xor i32 %287, -1
  %289 = load %struct.adapter*, %struct.adapter** %2, align 8
  %290 = getelementptr inbounds %struct.adapter, %struct.adapter* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = and i32 %291, %288
  store i32 %292, i32* %290, align 4
  %293 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %294 = xor i32 %293, -1
  %295 = load %struct.adapter*, %struct.adapter** %2, align 8
  %296 = getelementptr inbounds %struct.adapter, %struct.adapter* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = and i32 %297, %294
  store i32 %298, i32* %296, align 4
  %299 = load i32, i32* @IXGBE_FEATURE_RSS, align 4
  %300 = xor i32 %299, -1
  %301 = load %struct.adapter*, %struct.adapter** %2, align 8
  %302 = getelementptr inbounds %struct.adapter, %struct.adapter* %301, i32 0, i32 1
  %303 = load i32, i32* %302, align 4
  %304 = and i32 %303, %300
  store i32 %304, i32* %302, align 4
  %305 = load i32, i32* @IXGBE_FEATURE_SRIOV, align 4
  %306 = xor i32 %305, -1
  %307 = load %struct.adapter*, %struct.adapter** %2, align 8
  %308 = getelementptr inbounds %struct.adapter, %struct.adapter* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  %310 = and i32 %309, %306
  store i32 %310, i32* %308, align 4
  br label %311

311:                                              ; preds = %286, %279
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
