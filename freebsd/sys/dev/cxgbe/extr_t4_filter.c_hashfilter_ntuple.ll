; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_hashfilter_ntuple.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_filter.c_hashfilter_ntuple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.tp_params }
%struct.tp_params = type { i64, i64, i64, i64, i64, i32, i64, i64, i64, i64, i64, i64 }
%struct.t4_filter_specification = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i64, i64, i32, i32, i64, i64, i64, i64, i64 }

@F_FT_VLAN_VLD = common dso_local global i64 0, align 8
@M_FT_VLAN = common dso_local global i64 0, align 8
@M_FT_PORT = common dso_local global i64 0, align 8
@M_FT_PROTOCOL = common dso_local global i64 0, align 8
@M_FT_TOS = common dso_local global i64 0, align 8
@F_VNIC = common dso_local global i32 0, align 4
@M_FT_VNIC_ID = common dso_local global i64 0, align 8
@M_FT_MACMATCH = common dso_local global i64 0, align 8
@M_FT_ETHERTYPE = common dso_local global i64 0, align 8
@M_FT_MPSHITTYPE = common dso_local global i64 0, align 8
@M_FT_FRAGMENTATION = common dso_local global i64 0, align 8
@M_FT_FCOE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.t4_filter_specification*, i64*)* @hashfilter_ntuple to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hashfilter_ntuple(%struct.adapter* %0, %struct.t4_filter_specification* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.t4_filter_specification*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.tp_params*, align 8
  %9 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.t4_filter_specification* %1, %struct.t4_filter_specification** %6, align 8
  store i64* %2, i64** %7, align 8
  %10 = load %struct.adapter*, %struct.adapter** %5, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tp_params* %12, %struct.tp_params** %8, align 8
  store i64 0, i64* %9, align 8
  %13 = load i64*, i64** %7, align 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %15 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp uge i64 %16, 0
  br i1 %17, label %18, label %45

18:                                               ; preds = %3
  %19 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %20 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 11
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %18
  %25 = load i64, i64* @F_FT_VLAN_VLD, align 8
  %26 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %27 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = or i64 %25, %29
  %31 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %32 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = shl i64 %30, %33
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %35, align 8
  %37 = or i64 %36, %34
  store i64 %37, i64* %35, align 8
  %38 = load i64, i64* @M_FT_VLAN, align 8
  %39 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %40 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = shl i64 %38, %41
  %43 = load i64, i64* %9, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %9, align 8
  br label %45

45:                                               ; preds = %24, %18, %3
  %46 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %47 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %48, 0
  br i1 %49, label %50, label %75

50:                                               ; preds = %45
  %51 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %52 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 10
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %75

56:                                               ; preds = %50
  %57 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %58 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 9
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %62 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = shl i64 %60, %63
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* %65, align 8
  %67 = or i64 %66, %64
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* @M_FT_PORT, align 8
  %69 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %70 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = shl i64 %68, %71
  %73 = load i64, i64* %9, align 8
  %74 = or i64 %73, %72
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %56, %50, %45
  %76 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %77 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = icmp uge i64 %78, 0
  br i1 %79, label %80, label %105

80:                                               ; preds = %75
  %81 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %82 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 9
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %80
  %87 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %88 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 8
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %92 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = shl i64 %90, %93
  %95 = load i64*, i64** %7, align 8
  %96 = load i64, i64* %95, align 8
  %97 = or i64 %96, %94
  store i64 %97, i64* %95, align 8
  %98 = load i64, i64* @M_FT_PROTOCOL, align 8
  %99 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %100 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = shl i64 %98, %101
  %103 = load i64, i64* %9, align 8
  %104 = or i64 %103, %102
  store i64 %104, i64* %9, align 8
  br label %105

105:                                              ; preds = %86, %80, %75
  %106 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %107 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp uge i64 %108, 0
  br i1 %109, label %110, label %135

110:                                              ; preds = %105
  %111 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %112 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 8
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %135

116:                                              ; preds = %110
  %117 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %118 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %122 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = shl i64 %120, %123
  %125 = load i64*, i64** %7, align 8
  %126 = load i64, i64* %125, align 8
  %127 = or i64 %126, %124
  store i64 %127, i64* %125, align 8
  %128 = load i64, i64* @M_FT_TOS, align 8
  %129 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %130 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = shl i64 %128, %131
  %133 = load i64, i64* %9, align 8
  %134 = or i64 %133, %132
  store i64 %134, i64* %9, align 8
  br label %135

135:                                              ; preds = %116, %110, %105
  %136 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %137 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %136, i32 0, i32 4
  %138 = load i64, i64* %137, align 8
  %139 = icmp uge i64 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %135
  %141 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %142 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 7
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %185

146:                                              ; preds = %140
  %147 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %148 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %147, i32 0, i32 5
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @F_VNIC, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %146
  %154 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %155 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @MPASS(i32 %157)
  br label %165

159:                                              ; preds = %146
  %160 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %161 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @MPASS(i32 %163)
  br label %165

165:                                              ; preds = %159, %153
  %166 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %167 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = or i64 65536, %169
  %171 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %172 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %171, i32 0, i32 4
  %173 = load i64, i64* %172, align 8
  %174 = shl i64 %170, %173
  %175 = load i64*, i64** %7, align 8
  %176 = load i64, i64* %175, align 8
  %177 = or i64 %176, %174
  store i64 %177, i64* %175, align 8
  %178 = load i64, i64* @M_FT_VNIC_ID, align 8
  %179 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %180 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %179, i32 0, i32 4
  %181 = load i64, i64* %180, align 8
  %182 = shl i64 %178, %181
  %183 = load i64, i64* %9, align 8
  %184 = or i64 %183, %182
  store i64 %184, i64* %9, align 8
  br label %185

185:                                              ; preds = %165, %140, %135
  %186 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %187 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %186, i32 0, i32 6
  %188 = load i64, i64* %187, align 8
  %189 = icmp uge i64 %188, 0
  br i1 %189, label %190, label %215

190:                                              ; preds = %185
  %191 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %192 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 4
  %194 = load i64, i64* %193, align 8
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %215

196:                                              ; preds = %190
  %197 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %198 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %202 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %201, i32 0, i32 6
  %203 = load i64, i64* %202, align 8
  %204 = shl i64 %200, %203
  %205 = load i64*, i64** %7, align 8
  %206 = load i64, i64* %205, align 8
  %207 = or i64 %206, %204
  store i64 %207, i64* %205, align 8
  %208 = load i64, i64* @M_FT_MACMATCH, align 8
  %209 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %210 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %209, i32 0, i32 6
  %211 = load i64, i64* %210, align 8
  %212 = shl i64 %208, %211
  %213 = load i64, i64* %9, align 8
  %214 = or i64 %213, %212
  store i64 %214, i64* %9, align 8
  br label %215

215:                                              ; preds = %196, %190, %185
  %216 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %217 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %216, i32 0, i32 7
  %218 = load i64, i64* %217, align 8
  %219 = icmp uge i64 %218, 0
  br i1 %219, label %220, label %245

220:                                              ; preds = %215
  %221 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %222 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %221, i32 0, i32 1
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 3
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %220
  %227 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %228 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 5
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %232 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %231, i32 0, i32 7
  %233 = load i64, i64* %232, align 8
  %234 = shl i64 %230, %233
  %235 = load i64*, i64** %7, align 8
  %236 = load i64, i64* %235, align 8
  %237 = or i64 %236, %234
  store i64 %237, i64* %235, align 8
  %238 = load i64, i64* @M_FT_ETHERTYPE, align 8
  %239 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %240 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %239, i32 0, i32 7
  %241 = load i64, i64* %240, align 8
  %242 = shl i64 %238, %241
  %243 = load i64, i64* %9, align 8
  %244 = or i64 %243, %242
  store i64 %244, i64* %9, align 8
  br label %245

245:                                              ; preds = %226, %220, %215
  %246 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %247 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %246, i32 0, i32 8
  %248 = load i64, i64* %247, align 8
  %249 = icmp uge i64 %248, 0
  br i1 %249, label %250, label %275

250:                                              ; preds = %245
  %251 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %252 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %251, i32 0, i32 1
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 2
  %254 = load i64, i64* %253, align 8
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %256, label %275

256:                                              ; preds = %250
  %257 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %258 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 4
  %260 = load i64, i64* %259, align 8
  %261 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %262 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %261, i32 0, i32 8
  %263 = load i64, i64* %262, align 8
  %264 = shl i64 %260, %263
  %265 = load i64*, i64** %7, align 8
  %266 = load i64, i64* %265, align 8
  %267 = or i64 %266, %264
  store i64 %267, i64* %265, align 8
  %268 = load i64, i64* @M_FT_MPSHITTYPE, align 8
  %269 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %270 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %269, i32 0, i32 8
  %271 = load i64, i64* %270, align 8
  %272 = shl i64 %268, %271
  %273 = load i64, i64* %9, align 8
  %274 = or i64 %273, %272
  store i64 %274, i64* %9, align 8
  br label %275

275:                                              ; preds = %256, %250, %245
  %276 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %277 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %276, i32 0, i32 9
  %278 = load i64, i64* %277, align 8
  %279 = icmp uge i64 %278, 0
  br i1 %279, label %280, label %305

280:                                              ; preds = %275
  %281 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %282 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %282, i32 0, i32 1
  %284 = load i64, i64* %283, align 8
  %285 = icmp ne i64 %284, 0
  br i1 %285, label %286, label %305

286:                                              ; preds = %280
  %287 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %288 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %288, i32 0, i32 3
  %290 = load i64, i64* %289, align 8
  %291 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %292 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %291, i32 0, i32 9
  %293 = load i64, i64* %292, align 8
  %294 = shl i64 %290, %293
  %295 = load i64*, i64** %7, align 8
  %296 = load i64, i64* %295, align 8
  %297 = or i64 %296, %294
  store i64 %297, i64* %295, align 8
  %298 = load i64, i64* @M_FT_FRAGMENTATION, align 8
  %299 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %300 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %299, i32 0, i32 9
  %301 = load i64, i64* %300, align 8
  %302 = shl i64 %298, %301
  %303 = load i64, i64* %9, align 8
  %304 = or i64 %303, %302
  store i64 %304, i64* %9, align 8
  br label %305

305:                                              ; preds = %286, %280, %275
  %306 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %307 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %306, i32 0, i32 10
  %308 = load i64, i64* %307, align 8
  %309 = icmp uge i64 %308, 0
  br i1 %309, label %310, label %335

310:                                              ; preds = %305
  %311 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %312 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %312, i32 0, i32 0
  %314 = load i64, i64* %313, align 8
  %315 = icmp ne i64 %314, 0
  br i1 %315, label %316, label %335

316:                                              ; preds = %310
  %317 = load %struct.t4_filter_specification*, %struct.t4_filter_specification** %6, align 8
  %318 = getelementptr inbounds %struct.t4_filter_specification, %struct.t4_filter_specification* %317, i32 0, i32 0
  %319 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %318, i32 0, i32 2
  %320 = load i64, i64* %319, align 8
  %321 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %322 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %321, i32 0, i32 10
  %323 = load i64, i64* %322, align 8
  %324 = shl i64 %320, %323
  %325 = load i64*, i64** %7, align 8
  %326 = load i64, i64* %325, align 8
  %327 = or i64 %326, %324
  store i64 %327, i64* %325, align 8
  %328 = load i64, i64* @M_FT_FCOE, align 8
  %329 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %330 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %329, i32 0, i32 10
  %331 = load i64, i64* %330, align 8
  %332 = shl i64 %328, %331
  %333 = load i64, i64* %9, align 8
  %334 = or i64 %333, %332
  store i64 %334, i64* %9, align 8
  br label %335

335:                                              ; preds = %316, %310, %305
  %336 = load i64, i64* %9, align 8
  %337 = load %struct.tp_params*, %struct.tp_params** %8, align 8
  %338 = getelementptr inbounds %struct.tp_params, %struct.tp_params* %337, i32 0, i32 11
  %339 = load i64, i64* %338, align 8
  %340 = icmp ne i64 %336, %339
  br i1 %340, label %341, label %343

341:                                              ; preds = %335
  %342 = load i32, i32* @EINVAL, align 4
  store i32 %342, i32* %4, align 4
  br label %344

343:                                              ; preds = %335
  store i32 0, i32* %4, align 4
  br label %344

344:                                              ; preds = %343, %341
  %345 = load i32, i32* %4, align 4
  ret i32 %345
}

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
