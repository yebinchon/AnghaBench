; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_parse_jobspec.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/lpr/common_source/extr_matchjobs.c_parse_jobspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jobspec_hdr = type { i32 }
%struct.jobspec = type { i32, i32, i8*, i8* }

@errno = common dso_local global i64 0, align 8
@nextjs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @parse_jobspec(i8* %0, %struct.jobspec_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jobspec_hdr*, align 8
  %6 = alloca %struct.jobspec*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.jobspec_hdr* %1, %struct.jobspec_hdr** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = load i8, i8* %17, align 1
  %19 = sext i8 %18 to i32
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16, %2
  store i32 0, i32* %3, align 4
  br label %277

22:                                               ; preds = %16
  %23 = call %struct.jobspec* @malloc(i32 24)
  store %struct.jobspec* %23, %struct.jobspec** %6, align 8
  %24 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %25 = call i32 @memset(%struct.jobspec* %24, i32 0, i32 24)
  %26 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %27 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %26, i32 0, i32 1
  store i32 -1, i32* %27, align 4
  %28 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %29 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %28, i32 0, i32 0
  store i32 -1, i32* %29, align 8
  store i8* null, i8** %10, align 8
  %30 = load i8*, i8** %4, align 8
  %31 = call i8* @strchr(i8* %30, i8 signext 64)
  store i8* %31, i8** %7, align 8
  %32 = load i8*, i8** %4, align 8
  %33 = call i8* @strchr(i8* %32, i8 signext 58)
  store i8* %33, i8** %8, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i8*, i8** %7, align 8
  store i8 0, i8* %37, align 1
  br label %38

38:                                               ; preds = %36, %22
  %39 = load i8*, i8** %8, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = load i8*, i8** %8, align 8
  store i8 0, i8* %42, align 1
  br label %43

43:                                               ; preds = %41, %38
  %44 = load i8*, i8** %7, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %58

46:                                               ; preds = %43
  %47 = load i8*, i8** %7, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  store i8* %48, i8** %12, align 8
  %49 = load i8*, i8** %12, align 8
  %50 = load i8, i8* %49, align 1
  %51 = sext i8 %50 to i32
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i8*, i8** %12, align 8
  %55 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %56 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %55, i32 0, i32 2
  store i8* %54, i8** %56, align 8
  br label %57

57:                                               ; preds = %53, %46
  br label %58

58:                                               ; preds = %57, %43
  store i8* null, i8** %12, align 8
  %59 = load i8*, i8** %8, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %58
  %62 = load i8*, i8** %8, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i8* null, i8** %12, align 8
  br label %69

69:                                               ; preds = %68, %61
  br label %70

70:                                               ; preds = %69, %58
  store i8* null, i8** %9, align 8
  %71 = load i8*, i8** %4, align 8
  %72 = load i8, i8* %71, align 1
  %73 = sext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %4, align 8
  store i8* %76, i8** %9, align 8
  br label %77

77:                                               ; preds = %75, %70
  %78 = load i8*, i8** %9, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %125

80:                                               ; preds = %77
  %81 = load i8*, i8** %12, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %125

83:                                               ; preds = %80
  %84 = load i8*, i8** %9, align 8
  %85 = load i8, i8* %84, align 1
  %86 = call i64 @isdigitch(i8 signext %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %83
  %89 = load i8*, i8** %12, align 8
  %90 = load i8, i8* %89, align 1
  %91 = call i64 @isdigitch(i8 signext %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %260

94:                                               ; preds = %88
  %95 = load i8*, i8** %9, align 8
  store i8* %95, i8** %10, align 8
  %96 = load i8*, i8** %12, align 8
  %97 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %98 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %97, i32 0, i32 3
  store i8* %96, i8** %98, align 8
  br label %124

99:                                               ; preds = %83
  %100 = load i8*, i8** %12, align 8
  %101 = load i8, i8* %100, align 1
  %102 = call i64 @isdigitch(i8 signext %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %122

104:                                              ; preds = %99
  %105 = load i8*, i8** %12, align 8
  store i8* %105, i8** %10, align 8
  %106 = load i8*, i8** %9, align 8
  %107 = call i8* @strchr(i8* %106, i8 signext 46)
  store i8* %107, i8** %11, align 8
  %108 = load i8*, i8** %7, align 8
  %109 = icmp eq i8* %108, null
  br i1 %109, label %110, label %117

110:                                              ; preds = %104
  %111 = load i8*, i8** %11, align 8
  %112 = icmp ne i8* %111, null
  br i1 %112, label %113, label %117

113:                                              ; preds = %110
  %114 = load i8*, i8** %9, align 8
  %115 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %116 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  br label %121

117:                                              ; preds = %110, %104
  %118 = load i8*, i8** %9, align 8
  %119 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %120 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %119, i32 0, i32 3
  store i8* %118, i8** %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  br label %123

122:                                              ; preds = %99
  br label %260

123:                                              ; preds = %121
  br label %124

124:                                              ; preds = %123, %94
  br label %157

125:                                              ; preds = %80, %77
  %126 = load i8*, i8** %9, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %140

128:                                              ; preds = %125
  %129 = load i8*, i8** %9, align 8
  %130 = load i8, i8* %129, align 1
  %131 = call i64 @isdigitch(i8 signext %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = load i8*, i8** %9, align 8
  store i8* %134, i8** %10, align 8
  br label %139

135:                                              ; preds = %128
  %136 = load i8*, i8** %9, align 8
  %137 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %138 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  br label %139

139:                                              ; preds = %135, %133
  br label %156

140:                                              ; preds = %125
  %141 = load i8*, i8** %12, align 8
  %142 = icmp ne i8* %141, null
  br i1 %142, label %143, label %155

143:                                              ; preds = %140
  %144 = load i8*, i8** %12, align 8
  %145 = load i8, i8* %144, align 1
  %146 = call i64 @isdigitch(i8 signext %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %150

148:                                              ; preds = %143
  %149 = load i8*, i8** %12, align 8
  store i8* %149, i8** %10, align 8
  br label %154

150:                                              ; preds = %143
  %151 = load i8*, i8** %12, align 8
  %152 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %153 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %152, i32 0, i32 3
  store i8* %151, i8** %153, align 8
  br label %154

154:                                              ; preds = %150, %148
  br label %155

155:                                              ; preds = %154, %140
  br label %156

156:                                              ; preds = %155, %139
  br label %157

157:                                              ; preds = %156, %124
  %158 = load i8*, i8** %10, align 8
  %159 = icmp ne i8* %158, null
  br i1 %159, label %160, label %239

160:                                              ; preds = %157
  store i64 0, i64* @errno, align 8
  %161 = load i8*, i8** %10, align 8
  %162 = call i32 @strtol(i8* %161, i8** %10, i32 10)
  store i32 %162, i32* %13, align 4
  %163 = load i64, i64* @errno, align 8
  %164 = icmp ne i64 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %160
  br label %260

166:                                              ; preds = %160
  %167 = load i32, i32* %13, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %166
  br label %260

170:                                              ; preds = %166
  %171 = load i32, i32* %13, align 4
  %172 = icmp sgt i32 %171, 99999
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %260

174:                                              ; preds = %170
  %175 = load i32, i32* %13, align 4
  %176 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %177 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %176, i32 0, i32 1
  store i32 %175, i32* %177, align 4
  %178 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %179 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %178, i32 0, i32 0
  store i32 %175, i32* %179, align 8
  %180 = load i8*, i8** %10, align 8
  %181 = load i8, i8* %180, align 1
  %182 = sext i8 %181 to i32
  %183 = icmp eq i32 %182, 45
  br i1 %183, label %184, label %213

184:                                              ; preds = %174
  %185 = load i8*, i8** %10, align 8
  %186 = getelementptr inbounds i8, i8* %185, i64 1
  %187 = load i8, i8* %186, align 1
  %188 = call i64 @isdigitch(i8 signext %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %213

190:                                              ; preds = %184
  %191 = load i8*, i8** %10, align 8
  %192 = getelementptr inbounds i8, i8* %191, i32 1
  store i8* %192, i8** %10, align 8
  store i64 0, i64* @errno, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = call i32 @strtol(i8* %193, i8** %10, i32 10)
  store i32 %194, i32* %13, align 4
  %195 = load i64, i64* @errno, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %190
  br label %260

198:                                              ; preds = %190
  %199 = load i32, i32* %13, align 4
  %200 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %201 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %198
  br label %260

205:                                              ; preds = %198
  %206 = load i32, i32* %13, align 4
  %207 = icmp sgt i32 %206, 99999
  br i1 %207, label %208, label %209

208:                                              ; preds = %205
  br label %260

209:                                              ; preds = %205
  %210 = load i32, i32* %13, align 4
  %211 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %212 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %211, i32 0, i32 1
  store i32 %210, i32* %212, align 4
  br label %213

213:                                              ; preds = %209, %184, %174
  %214 = load i8*, i8** %10, align 8
  %215 = load i8, i8* %214, align 1
  %216 = sext i8 %215 to i32
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %238

218:                                              ; preds = %213
  %219 = load i8*, i8** %7, align 8
  %220 = icmp ne i8* %219, null
  br i1 %220, label %221, label %222

221:                                              ; preds = %218
  br label %260

222:                                              ; preds = %218
  %223 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %224 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %223, i32 0, i32 2
  %225 = load i8*, i8** %224, align 8
  %226 = icmp ne i8* %225, null
  br i1 %226, label %227, label %228

227:                                              ; preds = %222
  br label %260

228:                                              ; preds = %222
  %229 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %230 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %229, i32 0, i32 3
  %231 = load i8*, i8** %230, align 8
  %232 = icmp ne i8* %231, null
  br i1 %232, label %233, label %234

233:                                              ; preds = %228
  br label %260

234:                                              ; preds = %228
  %235 = load i8*, i8** %10, align 8
  %236 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %237 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %236, i32 0, i32 2
  store i8* %235, i8** %237, align 8
  br label %238

238:                                              ; preds = %234, %213
  br label %239

239:                                              ; preds = %238, %157
  %240 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %241 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %255

244:                                              ; preds = %239
  %245 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %246 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %245, i32 0, i32 3
  %247 = load i8*, i8** %246, align 8
  %248 = icmp eq i8* %247, null
  br i1 %248, label %249, label %255

249:                                              ; preds = %244
  %250 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %251 = getelementptr inbounds %struct.jobspec, %struct.jobspec* %250, i32 0, i32 2
  %252 = load i8*, i8** %251, align 8
  %253 = icmp eq i8* %252, null
  br i1 %253, label %254, label %255

254:                                              ; preds = %249
  br label %260

255:                                              ; preds = %249, %244, %239
  %256 = load %struct.jobspec_hdr*, %struct.jobspec_hdr** %5, align 8
  %257 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %258 = load i32, i32* @nextjs, align 4
  %259 = call i32 @STAILQ_INSERT_TAIL(%struct.jobspec_hdr* %256, %struct.jobspec* %257, i32 %258)
  store i32 1, i32* %3, align 4
  br label %277

260:                                              ; preds = %254, %233, %227, %221, %208, %204, %197, %173, %169, %165, %122, %93
  %261 = load i8*, i8** %7, align 8
  %262 = icmp ne i8* %261, null
  br i1 %262, label %263, label %265

263:                                              ; preds = %260
  %264 = load i8*, i8** %7, align 8
  store i8 64, i8* %264, align 1
  br label %265

265:                                              ; preds = %263, %260
  %266 = load i8*, i8** %8, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %270

268:                                              ; preds = %265
  %269 = load i8*, i8** %8, align 8
  store i8 58, i8* %269, align 1
  br label %270

270:                                              ; preds = %268, %265
  %271 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %272 = icmp ne %struct.jobspec* %271, null
  br i1 %272, label %273, label %276

273:                                              ; preds = %270
  %274 = load %struct.jobspec*, %struct.jobspec** %6, align 8
  %275 = call i32 @free(%struct.jobspec* %274)
  br label %276

276:                                              ; preds = %273, %270
  store i32 0, i32* %3, align 4
  br label %277

277:                                              ; preds = %276, %255, %21
  %278 = load i32, i32* %3, align 4
  ret i32 %278
}

declare dso_local %struct.jobspec* @malloc(i32) #1

declare dso_local i32 @memset(%struct.jobspec*, i32, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @isdigitch(i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(%struct.jobspec_hdr*, %struct.jobspec*, i32) #1

declare dso_local i32 @free(%struct.jobspec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
