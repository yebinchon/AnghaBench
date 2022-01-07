; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_set_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_vesa.c_vesa_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_19__, %struct.TYPE_20__, i64, i8*, i8*, i32, i32, i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { i64, i64 }
%struct.TYPE_18__ = type { i32 (%struct.TYPE_22__*, i32)*, i64 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*)* }
%struct.TYPE_21__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_23__ = type { i32 (%struct.TYPE_22__*, i32, i32)* }

@vesa_adp = common dso_local global %struct.TYPE_22__* null, align 8
@prevvidsw = common dso_local global %struct.TYPE_18__* null, align 8
@V_ADP_COLOR = common dso_local global i32 0, align 4
@V_ADP_DAC8 = common dso_local global i32 0, align 4
@V_INFO_LINEAR = common dso_local global i32 0, align 4
@vesa_vmem_max = common dso_local global i32 0, align 4
@V_INFO_GRAPHICS = common dso_local global i32 0, align 4
@vesa_adp_info = common dso_local global %struct.TYPE_24__* null, align 8
@V_DAC8 = common dso_local global i32 0, align 4
@V_INFO_COLOR = common dso_local global i32 0, align 4
@COLOR_CRTC = common dso_local global i32 0, align 4
@MONO_CRTC = common dso_local global i32 0, align 4
@V_ADP_CWIDTH9 = common dso_local global i32 0, align 4
@PAT_WRITE_COMBINING = common dso_local global i32 0, align 4
@vidsw = common dso_local global %struct.TYPE_23__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32)* @vesa_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_set_mode(%struct.TYPE_22__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %8 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %9 = icmp ne %struct.TYPE_22__* %7, %8
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** @prevvidsw, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %12, align 8
  %14 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 %13(%struct.TYPE_22__* %14, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %318

17:                                               ; preds = %2
  %18 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %18, i32 0, i32 14
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @V_ADP_COLOR, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @vesa_map_gen_mode_num(i32 %20, i32 %25, i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @VESA_MODE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %80

33:                                               ; preds = %17
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @VESA_MODE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %79, label %37

37:                                               ; preds = %33
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** @prevvidsw, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 1
  %40 = load i64 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*)*, i64 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*)** %39, align 8
  %41 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 %40(%struct.TYPE_22__* %41, i32 %42, %struct.TYPE_21__* %6)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %79

45:                                               ; preds = %37
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @V_ADP_DAC8, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %60

52:                                               ; preds = %45
  %53 = call i32 @vesa_bios_set_dac(i32 6)
  %54 = load i32, i32* @V_ADP_DAC8, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 8
  br label %60

60:                                               ; preds = %52, %45
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @int10_set_mode(i32 %63)
  %65 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %65, i32 0, i32 7
  %67 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @V_INFO_LINEAR, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %60
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 11
  %75 = load i8*, i8** %74, align 8
  %76 = load i32, i32* @vesa_vmem_max, align 4
  %77 = call i32 @pmap_unmapdev(i8* %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %60
  br label %79

79:                                               ; preds = %78, %37, %33
  br label %80

80:                                               ; preds = %79, %17
  %81 = load i32, i32* %5, align 4
  %82 = call i64 @VESA_MODE(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** @prevvidsw, align 8
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load i32 (%struct.TYPE_22__*, i32)*, i32 (%struct.TYPE_22__*, i32)** %86, align 8
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i32 %87(%struct.TYPE_22__* %88, i32 %89)
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %318

93:                                               ; preds = %84, %80
  %94 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %95 = load i32, i32* %5, align 4
  %96 = call i64 @vesa_get_info(%struct.TYPE_22__* %94, i32 %95, %struct.TYPE_21__* %6)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %93
  store i32 1, i32* %3, align 4
  br label %318

99:                                               ; preds = %93
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @V_ADP_DAC8, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = call i32 @vesa_bios_set_dac(i32 6)
  %108 = load i32, i32* @V_ADP_DAC8, align 4
  %109 = xor i32 %108, -1
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  br label %114

114:                                              ; preds = %106, %99
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load i32, i32* @V_INFO_LINEAR, align 4
  %122 = xor i32 %121, -1
  %123 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %124, %122
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %114
  %127 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load i32, i32* @V_INFO_LINEAR, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %126
  %133 = load i32, i32* %5, align 4
  %134 = or i32 %133, 16384
  store i32 %134, i32* %5, align 4
  br label %135

135:                                              ; preds = %132, %126
  %136 = load i32, i32* %5, align 4
  %137 = or i32 %136, 32768
  %138 = call i64 @vesa_bios_set_mode(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %135
  store i32 1, i32* %3, align 4
  br label %318

141:                                              ; preds = %135
  %142 = load %struct.TYPE_24__*, %struct.TYPE_24__** @vesa_adp_info, align 8
  %143 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @V_DAC8, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %163

148:                                              ; preds = %141
  %149 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %163

154:                                              ; preds = %148
  %155 = call i32 @vesa_bios_set_dac(i32 8)
  %156 = icmp sgt i32 %155, 6
  br i1 %156, label %157, label %163

157:                                              ; preds = %154
  %158 = load i32, i32* @V_ADP_DAC8, align 4
  %159 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %157, %154, %148, %141
  %164 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %165 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %164, i32 0, i32 7
  %166 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = load i32, i32* @V_INFO_LINEAR, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %177

171:                                              ; preds = %163
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 11
  %174 = load i8*, i8** %173, align 8
  %175 = load i32, i32* @vesa_vmem_max, align 4
  %176 = call i32 @pmap_unmapdev(i8* %174, i32 %175)
  br label %177

177:                                              ; preds = %171, %163
  %178 = load i32, i32* %5, align 4
  %179 = and i32 %178, 511
  %180 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %181 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 4
  %182 = load i32, i32* @V_ADP_COLOR, align 4
  %183 = xor i32 %182, -1
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = and i32 %186, %183
  store i32 %187, i32* %185, align 8
  %188 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @V_INFO_COLOR, align 4
  %191 = and i32 %189, %190
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %195

193:                                              ; preds = %177
  %194 = load i32, i32* @V_ADP_COLOR, align 4
  br label %196

195:                                              ; preds = %177
  br label %196

196:                                              ; preds = %195, %193
  %197 = phi i32 [ %194, %193 ], [ 0, %195 ]
  %198 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %199 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = or i32 %200, %197
  store i32 %201, i32* %199, align 8
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @V_ADP_COLOR, align 4
  %206 = and i32 %204, %205
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %210

208:                                              ; preds = %196
  %209 = load i32, i32* @COLOR_CRTC, align 4
  br label %212

210:                                              ; preds = %196
  %211 = load i32, i32* @MONO_CRTC, align 4
  br label %212

212:                                              ; preds = %210, %208
  %213 = phi i32 [ %209, %208 ], [ %211, %210 ]
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %215 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %214, i32 0, i32 12
  store i32 %213, i32* %215, align 8
  %216 = load i32, i32* @V_ADP_CWIDTH9, align 4
  %217 = xor i32 %216, -1
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = and i32 %220, %217
  store i32 %221, i32* %219, align 8
  %222 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = sdiv i32 %223, %225
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 2
  store i32 %226, i32* %228, align 8
  %229 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = load i32, i32* @V_INFO_GRAPHICS, align 4
  %232 = and i32 %230, %231
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %241

234:                                              ; preds = %212
  %235 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 3
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %238 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = sdiv i32 %239, %236
  store i32 %240, i32* %238, align 8
  br label %241

241:                                              ; preds = %234, %212
  %242 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @V_INFO_LINEAR, align 4
  %245 = and i32 %243, %244
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %275

247:                                              ; preds = %241
  %248 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 8
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @vesa_vmem_max, align 4
  %251 = load i32, i32* @PAT_WRITE_COMBINING, align 4
  %252 = call i64 @pmap_mapdev_attr(i32 %249, i32 %250, i32 %251)
  %253 = inttoptr i64 %252 to i8*
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 11
  store i8* %253, i8** %255, align 8
  %256 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %257 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %256, i32 0, i32 11
  %258 = load i8*, i8** %257, align 8
  %259 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %260 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %259, i32 0, i32 10
  store i8* %258, i8** %260, align 8
  %261 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 3
  %264 = load i32, i32* %263, align 4
  %265 = sdiv i32 %262, %264
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %269 = load i32, i32* %268, align 4
  %270 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = sdiv i32 %269, %271
  %273 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %274 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %273, i32 0, i32 4
  store i32 %272, i32* %274, align 8
  br label %292

275:                                              ; preds = %241
  %276 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %277 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %276, i32 0, i32 11
  store i8* null, i8** %277, align 8
  %278 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 7
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @x86bios_offset(i32 %279)
  %281 = inttoptr i64 %280 to i8*
  %282 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %283 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %282, i32 0, i32 10
  store i8* %281, i8** %283, align 8
  %284 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 4
  %285 = load i32, i32* %284, align 4
  %286 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %287 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %286, i32 0, i32 3
  store i32 %285, i32* %287, align 4
  %288 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 4
  store i32 %289, i32* %291, align 8
  br label %292

292:                                              ; preds = %275, %247
  %293 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %6, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %296 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %295, i32 0, i32 5
  store i32 %294, i32* %296, align 4
  %297 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %298 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %297, i32 0, i32 9
  store i64 0, i64* %298, align 8
  %299 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %300 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %299, i32 0, i32 8
  %301 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %300, i32 0, i32 1
  store i64 0, i64* %301, align 8
  %302 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %303 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %302, i32 0, i32 8
  %304 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %303, i32 0, i32 0
  store i64 0, i64* %304, align 8
  %305 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %306 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %305, i32 0, i32 7
  %307 = call i32 @bcopy(%struct.TYPE_21__* %6, %struct.TYPE_19__* %306, i32 4)
  %308 = load %struct.TYPE_23__**, %struct.TYPE_23__*** @vidsw, align 8
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %310 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %309, i32 0, i32 6
  %311 = load i64, i64* %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %308, i64 %311
  %313 = load %struct.TYPE_23__*, %struct.TYPE_23__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %313, i32 0, i32 0
  %315 = load i32 (%struct.TYPE_22__*, i32, i32)*, i32 (%struct.TYPE_22__*, i32, i32)** %314, align 8
  %316 = load %struct.TYPE_22__*, %struct.TYPE_22__** @vesa_adp, align 8
  %317 = call i32 %315(%struct.TYPE_22__* %316, i32 -1, i32 -1)
  store i32 0, i32* %3, align 4
  br label %318

318:                                              ; preds = %292, %140, %98, %92, %10
  %319 = load i32, i32* %3, align 4
  ret i32 %319
}

declare dso_local i32 @vesa_map_gen_mode_num(i32, i32, i32) #1

declare dso_local i64 @VESA_MODE(i32) #1

declare dso_local i32 @vesa_bios_set_dac(i32) #1

declare dso_local i32 @int10_set_mode(i32) #1

declare dso_local i32 @pmap_unmapdev(i8*, i32) #1

declare dso_local i64 @vesa_get_info(%struct.TYPE_22__*, i32, %struct.TYPE_21__*) #1

declare dso_local i64 @vesa_bios_set_mode(i32) #1

declare dso_local i64 @pmap_mapdev_attr(i32, i32, i32) #1

declare dso_local i64 @x86bios_offset(i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_21__*, %struct.TYPE_19__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
