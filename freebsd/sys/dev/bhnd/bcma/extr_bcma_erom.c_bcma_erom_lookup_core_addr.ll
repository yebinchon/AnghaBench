; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_lookup_core_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bhnd/bcma/extr_bcma_erom.c_bcma_erom_lookup_core_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bhnd_core_match = type { i32 }
%struct.bhnd_core_info = type { i32 }
%struct.bcma_erom = type { i32 }
%struct.bcma_erom_core = type { i64 }
%struct.bcma_erom_sport_region = type { i32, i32 }

@REGION = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@REGION_TYPE = common dso_local global i32 0, align 4
@REGION_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.bhnd_core_match*, i64, i64, i64, %struct.bhnd_core_info*, i32*, i32*)* @bcma_erom_lookup_core_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_lookup_core_addr(i32* %0, %struct.bhnd_core_match* %1, i64 %2, i64 %3, i64 %4, %struct.bhnd_core_info* %5, i32* %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.bhnd_core_match*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.bhnd_core_info*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.bcma_erom*, align 8
  %19 = alloca %struct.bcma_erom_core, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca %struct.bcma_erom_sport_region, align 4
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  store i32* %0, i32** %10, align 8
  store %struct.bhnd_core_match* %1, %struct.bhnd_core_match** %11, align 8
  store i64 %2, i64* %12, align 8
  store i64 %3, i64* %13, align 8
  store i64 %4, i64* %14, align 8
  store %struct.bhnd_core_info* %5, %struct.bhnd_core_info** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = bitcast i32* %36 to %struct.bcma_erom*
  store %struct.bcma_erom* %37, %struct.bcma_erom** %18, align 8
  %38 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %39 = load %struct.bhnd_core_match*, %struct.bhnd_core_match** %11, align 8
  %40 = load %struct.bhnd_core_info*, %struct.bhnd_core_info** %15, align 8
  %41 = call i32 @bcma_erom_seek_matching_core(%struct.bcma_erom* %38, %struct.bhnd_core_match* %39, %struct.bhnd_core_info* %40)
  store i32 %41, i32* %24, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %8
  %44 = load i32, i32* %24, align 4
  store i32 %44, i32* %9, align 4
  br label %252

45:                                               ; preds = %8
  %46 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %47 = call i32 @bcma_erom_parse_core(%struct.bcma_erom* %46, %struct.bcma_erom_core* %19)
  store i32 %47, i32* %24, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* %24, align 4
  store i32 %50, i32* %9, align 4
  br label %252

51:                                               ; preds = %45
  store i64 0, i64* %25, align 8
  br label %52

52:                                               ; preds = %64, %51
  %53 = load i64, i64* %25, align 8
  %54 = getelementptr inbounds %struct.bcma_erom_core, %struct.bcma_erom_core* %19, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp slt i64 %53, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %52
  %58 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %59 = call i32 @bcma_erom_skip_mport(%struct.bcma_erom* %58)
  store i32 %59, i32* %24, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %57
  %62 = load i32, i32* %24, align 4
  store i32 %62, i32* %9, align 4
  br label %252

63:                                               ; preds = %57
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %25, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %25, align 8
  br label %52

67:                                               ; preds = %52
  store i32 0, i32* %23, align 4
  br label %68

68:                                               ; preds = %67, %103
  %69 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %70 = call i32 @bcma_erom_peek32(%struct.bcma_erom* %69, i32* %20)
  store i32 %70, i32* %24, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* %24, align 4
  store i32 %73, i32* %9, align 4
  br label %252

74:                                               ; preds = %68
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @REGION, align 4
  %77 = call i32 @BCMA_EROM_ENTRY_IS(i32 %75, i32 %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %81, label %79

79:                                               ; preds = %74
  %80 = load i32, i32* @ENOENT, align 4
  store i32 %80, i32* %9, align 4
  br label %252

81:                                               ; preds = %74
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* @REGION_TYPE, align 4
  %84 = call i64 @BCMA_EROM_GET_ATTR(i32 %82, i32 %83)
  store i64 %84, i64* %27, align 8
  %85 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %86 = load i64, i64* %27, align 8
  %87 = call i32 @bcma_erom_region_to_port_type(%struct.bcma_erom* %85, i64 %86, i64* %26)
  store i32 %87, i32* %24, align 4
  %88 = load i32, i32* %24, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %81
  %91 = load i32, i32* %24, align 4
  store i32 %91, i32* %9, align 4
  br label %252

92:                                               ; preds = %81
  %93 = load i64, i64* %26, align 8
  %94 = load i64, i64* %12, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %23, align 4
  br label %104

97:                                               ; preds = %92
  %98 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %99 = call i32 @bcma_erom_skip_sport_region(%struct.bcma_erom* %98)
  store i32 %99, i32* %24, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %97
  %102 = load i32, i32* %24, align 4
  store i32 %102, i32* %9, align 4
  br label %252

103:                                              ; preds = %97
  br label %68

104:                                              ; preds = %96
  %105 = load i32, i32* %23, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %104
  %108 = load i32, i32* @ENOENT, align 4
  store i32 %108, i32* %9, align 4
  br label %252

109:                                              ; preds = %104
  store i32 0, i32* %23, align 4
  store i64 0, i64* %28, align 8
  br label %110

110:                                              ; preds = %188, %109
  %111 = load i64, i64* %28, align 8
  %112 = load i64, i64* %13, align 8
  %113 = icmp sle i64 %111, %112
  br i1 %113, label %114, label %191

114:                                              ; preds = %110
  %115 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %116 = call i32 @bcma_erom_peek32(%struct.bcma_erom* %115, i32* %20)
  store i32 %116, i32* %24, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = load i32, i32* %24, align 4
  store i32 %119, i32* %9, align 4
  br label %252

120:                                              ; preds = %114
  %121 = load i32, i32* %20, align 4
  %122 = load i32, i32* @REGION, align 4
  %123 = call i32 @BCMA_EROM_ENTRY_IS(i32 %121, i32 %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %127, label %125

125:                                              ; preds = %120
  %126 = load i32, i32* @ENOENT, align 4
  store i32 %126, i32* %9, align 4
  br label %252

127:                                              ; preds = %120
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* @REGION_TYPE, align 4
  %130 = call i64 @BCMA_EROM_GET_ATTR(i32 %128, i32 %129)
  store i64 %130, i64* %22, align 8
  %131 = load i32, i32* %20, align 4
  %132 = load i32, i32* @REGION_PORT, align 4
  %133 = call i64 @BCMA_EROM_GET_ATTR(i32 %131, i32 %132)
  store i64 %133, i64* %21, align 8
  %134 = load i64, i64* %28, align 8
  %135 = load i64, i64* %13, align 8
  %136 = icmp eq i64 %134, %135
  br i1 %136, label %137, label %151

137:                                              ; preds = %127
  %138 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %139 = load i64, i64* %22, align 8
  %140 = call i32 @bcma_erom_region_to_port_type(%struct.bcma_erom* %138, i64 %139, i64* %29)
  store i32 %140, i32* %24, align 4
  %141 = load i32, i32* %24, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* %24, align 4
  store i32 %144, i32* %9, align 4
  br label %252

145:                                              ; preds = %137
  %146 = load i64, i64* %29, align 8
  %147 = load i64, i64* %12, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %145
  store i32 1, i32* %23, align 4
  br label %150

150:                                              ; preds = %149, %145
  br label %191

151:                                              ; preds = %127
  br label %152

152:                                              ; preds = %151, %186
  %153 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %154 = call i32 @bcma_erom_skip_sport_region(%struct.bcma_erom* %153)
  store i32 %154, i32* %24, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %152
  %157 = load i32, i32* %24, align 4
  store i32 %157, i32* %9, align 4
  br label %252

158:                                              ; preds = %152
  %159 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %160 = call i32 @bcma_erom_peek32(%struct.bcma_erom* %159, i32* %20)
  store i32 %160, i32* %24, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i32, i32* %24, align 4
  store i32 %163, i32* %9, align 4
  br label %252

164:                                              ; preds = %158
  %165 = load i32, i32* %20, align 4
  %166 = load i32, i32* @REGION, align 4
  %167 = call i32 @BCMA_EROM_ENTRY_IS(i32 %165, i32 %166)
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %171, label %169

169:                                              ; preds = %164
  %170 = load i32, i32* @ENOENT, align 4
  store i32 %170, i32* %9, align 4
  br label %252

171:                                              ; preds = %164
  %172 = load i32, i32* %20, align 4
  %173 = load i32, i32* @REGION_TYPE, align 4
  %174 = call i64 @BCMA_EROM_GET_ATTR(i32 %172, i32 %173)
  store i64 %174, i64* %30, align 8
  %175 = load i32, i32* %20, align 4
  %176 = load i32, i32* @REGION_PORT, align 4
  %177 = call i64 @BCMA_EROM_GET_ATTR(i32 %175, i32 %176)
  store i64 %177, i64* %31, align 8
  %178 = load i64, i64* %30, align 8
  %179 = load i64, i64* %22, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %185, label %181

181:                                              ; preds = %171
  %182 = load i64, i64* %31, align 8
  %183 = load i64, i64* %21, align 8
  %184 = icmp ne i64 %182, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %181, %171
  br label %187

186:                                              ; preds = %181
  br label %152

187:                                              ; preds = %185
  br label %188

188:                                              ; preds = %187
  %189 = load i64, i64* %28, align 8
  %190 = add nsw i64 %189, 1
  store i64 %190, i64* %28, align 8
  br label %110

191:                                              ; preds = %150, %110
  %192 = load i32, i32* %23, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %196, label %194

194:                                              ; preds = %191
  %195 = load i32, i32* @ENOENT, align 4
  store i32 %195, i32* %9, align 4
  br label %252

196:                                              ; preds = %191
  store i64 0, i64* %32, align 8
  br label %197

197:                                              ; preds = %247, %196
  %198 = load i64, i64* %32, align 8
  %199 = load i64, i64* %14, align 8
  %200 = icmp sle i64 %198, %199
  br i1 %200, label %201, label %250

201:                                              ; preds = %197
  %202 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %203 = call i32 @bcma_erom_peek32(%struct.bcma_erom* %202, i32* %20)
  store i32 %203, i32* %24, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i32, i32* %24, align 4
  store i32 %206, i32* %9, align 4
  br label %252

207:                                              ; preds = %201
  %208 = load i32, i32* %20, align 4
  %209 = load i32, i32* @REGION, align 4
  %210 = call i32 @BCMA_EROM_ENTRY_IS(i32 %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %207
  %213 = load i32, i32* @ENOENT, align 4
  store i32 %213, i32* %9, align 4
  br label %252

214:                                              ; preds = %207
  %215 = load i32, i32* %20, align 4
  %216 = load i32, i32* @REGION_TYPE, align 4
  %217 = call i64 @BCMA_EROM_GET_ATTR(i32 %215, i32 %216)
  store i64 %217, i64* %35, align 8
  %218 = load i32, i32* %20, align 4
  %219 = load i32, i32* @REGION_PORT, align 4
  %220 = call i64 @BCMA_EROM_GET_ATTR(i32 %218, i32 %219)
  store i64 %220, i64* %34, align 8
  %221 = load i64, i64* %35, align 8
  %222 = load i64, i64* %22, align 8
  %223 = icmp ne i64 %221, %222
  br i1 %223, label %228, label %224

224:                                              ; preds = %214
  %225 = load i64, i64* %34, align 8
  %226 = load i64, i64* %21, align 8
  %227 = icmp ne i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %224, %214
  br label %250

229:                                              ; preds = %224
  %230 = load %struct.bcma_erom*, %struct.bcma_erom** %18, align 8
  %231 = call i32 @bcma_erom_parse_sport_region(%struct.bcma_erom* %230, %struct.bcma_erom_sport_region* %33)
  store i32 %231, i32* %24, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %235

233:                                              ; preds = %229
  %234 = load i32, i32* %24, align 4
  store i32 %234, i32* %9, align 4
  br label %252

235:                                              ; preds = %229
  %236 = load i64, i64* %32, align 8
  %237 = load i64, i64* %14, align 8
  %238 = icmp eq i64 %236, %237
  br i1 %238, label %239, label %246

239:                                              ; preds = %235
  %240 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %33, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = load i32*, i32** %16, align 8
  store i32 %241, i32* %242, align 4
  %243 = getelementptr inbounds %struct.bcma_erom_sport_region, %struct.bcma_erom_sport_region* %33, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %17, align 8
  store i32 %244, i32* %245, align 4
  store i32 0, i32* %9, align 4
  br label %252

246:                                              ; preds = %235
  br label %247

247:                                              ; preds = %246
  %248 = load i64, i64* %32, align 8
  %249 = add nsw i64 %248, 1
  store i64 %249, i64* %32, align 8
  br label %197

250:                                              ; preds = %228, %197
  %251 = load i32, i32* @ENOENT, align 4
  store i32 %251, i32* %9, align 4
  br label %252

252:                                              ; preds = %250, %239, %233, %212, %205, %194, %169, %162, %156, %143, %125, %118, %107, %101, %90, %79, %72, %61, %49, %43
  %253 = load i32, i32* %9, align 4
  ret i32 %253
}

declare dso_local i32 @bcma_erom_seek_matching_core(%struct.bcma_erom*, %struct.bhnd_core_match*, %struct.bhnd_core_info*) #1

declare dso_local i32 @bcma_erom_parse_core(%struct.bcma_erom*, %struct.bcma_erom_core*) #1

declare dso_local i32 @bcma_erom_skip_mport(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_peek32(%struct.bcma_erom*, i32*) #1

declare dso_local i32 @BCMA_EROM_ENTRY_IS(i32, i32) #1

declare dso_local i64 @BCMA_EROM_GET_ATTR(i32, i32) #1

declare dso_local i32 @bcma_erom_region_to_port_type(%struct.bcma_erom*, i64, i64*) #1

declare dso_local i32 @bcma_erom_skip_sport_region(%struct.bcma_erom*) #1

declare dso_local i32 @bcma_erom_parse_sport_region(%struct.bcma_erom*, %struct.bcma_erom_sport_region*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
