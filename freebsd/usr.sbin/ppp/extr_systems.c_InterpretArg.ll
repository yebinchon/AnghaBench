; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_InterpretArg.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_systems.c_InterpretArg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.passwd = type { i8* }

@LINE_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @InterpretArg(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.passwd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %9, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %6, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = load i32, i32* @LINE_LEN, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = getelementptr inbounds i8, i8* %16, i64 -1
  store i8* %17, i8** %7, align 8
  br label %18

18:                                               ; preds = %23, %2
  %19 = load i8*, i8** %3, align 8
  %20 = load i8, i8* %19, align 1
  %21 = call i64 @issep(i8 signext %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i8*, i8** %3, align 8
  %25 = getelementptr inbounds i8, i8* %24, i32 1
  store i8* %25, i8** %3, align 8
  br label %18

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %261, %127, %120, %26
  %28 = load i8*, i8** %3, align 8
  %29 = load i8, i8* %28, align 1
  %30 = sext i8 %29 to i32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %262

32:                                               ; preds = %27
  %33 = load i8*, i8** %3, align 8
  %34 = load i8, i8* %33, align 1
  %35 = sext i8 %34 to i32
  switch i32 %35, label %255 [
    i32 34, label %36
    i32 92, label %46
    i32 36, label %61
    i32 126, label %194
  ]

36:                                               ; preds = %32
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %9, align 4
  %41 = load i8*, i8** %3, align 8
  %42 = getelementptr inbounds i8, i8* %41, i32 1
  store i8* %42, i8** %3, align 8
  %43 = load i8, i8* %41, align 1
  %44 = load i8*, i8** %4, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %4, align 8
  store i8 %43, i8* %44, align 1
  br label %261

46:                                               ; preds = %32
  %47 = load i8*, i8** %3, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %3, align 8
  %49 = load i8, i8* %48, align 1
  %50 = sext i8 %49 to i32
  switch i32 %50, label %52 [
    i32 36, label %51
    i32 126, label %51
  ]

51:                                               ; preds = %46, %46
  br label %55

52:                                               ; preds = %46
  %53 = load i8*, i8** %4, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %4, align 8
  store i8 92, i8* %53, align 1
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i8*, i8** %3, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %3, align 8
  %58 = load i8, i8* %56, align 1
  %59 = load i8*, i8** %4, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %4, align 8
  store i8 %58, i8* %59, align 1
  br label %261

61:                                               ; preds = %32
  %62 = load i8*, i8** %3, align 8
  %63 = getelementptr inbounds i8, i8* %62, i64 1
  %64 = load i8, i8* %63, align 1
  %65 = sext i8 %64 to i32
  %66 = icmp eq i32 %65, 36
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i8*, i8** %4, align 8
  store i8 0, i8* %68, align 1
  %69 = load i8*, i8** %3, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 2
  store i8* %70, i8** %3, align 8
  br label %165

71:                                               ; preds = %61
  %72 = load i8*, i8** %3, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 1
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = icmp eq i32 %75, 123
  br i1 %76, label %77, label %134

77:                                               ; preds = %71
  %78 = load i8*, i8** %3, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 2
  %80 = call i8* @strchr(i8* %79, i8 signext 125)
  store i8* %80, i8** %5, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = icmp ne i8* %81, null
  br i1 %82, label %83, label %127

83:                                               ; preds = %77
  %84 = load i8*, i8** %5, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = sub nsw i64 %88, 2
  store i64 %89, i64* %10, align 8
  %90 = load i8*, i8** %7, align 8
  %91 = load i8*, i8** %4, align 8
  %92 = ptrtoint i8* %90 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = load i64, i64* %10, align 8
  %96 = trunc i64 %95 to i32
  %97 = sext i32 %96 to i64
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %83
  %100 = load i8*, i8** %7, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = ptrtoint i8* %100 to i64
  %103 = ptrtoint i8* %101 to i64
  %104 = sub i64 %102, %103
  store i64 %104, i64* %10, align 8
  br label %105

105:                                              ; preds = %99, %83
  %106 = load i64, i64* %10, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %120

108:                                              ; preds = %105
  %109 = load i8*, i8** %4, align 8
  %110 = load i8*, i8** %3, align 8
  %111 = getelementptr inbounds i8, i8* %110, i64 2
  %112 = load i64, i64* %10, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @strncpy(i8* %109, i8* %111, i32 %113)
  %115 = load i8*, i8** %4, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds i8, i8* %115, i64 %116
  store i8 0, i8* %117, align 1
  %118 = load i8*, i8** %5, align 8
  %119 = getelementptr inbounds i8, i8* %118, i64 1
  store i8* %119, i8** %3, align 8
  br label %126

120:                                              ; preds = %105
  %121 = load i8*, i8** %3, align 8
  %122 = getelementptr inbounds i8, i8* %121, i32 1
  store i8* %122, i8** %3, align 8
  %123 = load i8, i8* %121, align 1
  %124 = load i8*, i8** %4, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 1
  store i8* %125, i8** %4, align 8
  store i8 %123, i8* %124, align 1
  br label %27

126:                                              ; preds = %108
  br label %133

127:                                              ; preds = %77
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 1
  store i8* %129, i8** %3, align 8
  %130 = load i8, i8* %128, align 1
  %131 = load i8*, i8** %4, align 8
  %132 = getelementptr inbounds i8, i8* %131, i32 1
  store i8* %132, i8** %4, align 8
  store i8 %130, i8* %131, align 1
  br label %27

133:                                              ; preds = %126
  br label %164

134:                                              ; preds = %71
  %135 = load i8*, i8** %4, align 8
  store i8* %135, i8** %5, align 8
  %136 = load i8*, i8** %3, align 8
  %137 = getelementptr inbounds i8, i8* %136, i32 1
  store i8* %137, i8** %3, align 8
  br label %138

138:                                              ; preds = %159, %134
  %139 = load i8*, i8** %3, align 8
  %140 = load i8, i8* %139, align 1
  %141 = call i32 @isalnum(i8 signext %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %138
  %144 = load i8*, i8** %3, align 8
  %145 = load i8, i8* %144, align 1
  %146 = sext i8 %145 to i32
  %147 = icmp eq i32 %146, 95
  br i1 %147, label %148, label %152

148:                                              ; preds = %143, %138
  %149 = load i8*, i8** %5, align 8
  %150 = load i8*, i8** %7, align 8
  %151 = icmp ult i8* %149, %150
  br label %152

152:                                              ; preds = %148, %143
  %153 = phi i1 [ false, %143 ], [ %151, %148 ]
  br i1 %153, label %154, label %162

154:                                              ; preds = %152
  %155 = load i8*, i8** %3, align 8
  %156 = load i8, i8* %155, align 1
  %157 = load i8*, i8** %5, align 8
  %158 = getelementptr inbounds i8, i8* %157, i32 1
  store i8* %158, i8** %5, align 8
  store i8 %156, i8* %157, align 1
  br label %159

159:                                              ; preds = %154
  %160 = load i8*, i8** %3, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %3, align 8
  br label %138

162:                                              ; preds = %152
  %163 = load i8*, i8** %5, align 8
  store i8 0, i8* %163, align 1
  br label %164

164:                                              ; preds = %162, %133
  br label %165

165:                                              ; preds = %164, %67
  %166 = load i8*, i8** %4, align 8
  %167 = load i8, i8* %166, align 1
  %168 = sext i8 %167 to i32
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i8*, i8** %4, align 8
  %172 = getelementptr inbounds i8, i8* %171, i32 1
  store i8* %172, i8** %4, align 8
  store i8 36, i8* %171, align 1
  br label %193

173:                                              ; preds = %165
  %174 = load i8*, i8** %4, align 8
  %175 = call i8* @getenv(i8* %174)
  store i8* %175, i8** %11, align 8
  %176 = icmp ne i8* %175, null
  br i1 %176, label %177, label %192

177:                                              ; preds = %173
  %178 = load i8*, i8** %4, align 8
  %179 = load i8*, i8** %11, align 8
  %180 = load i8*, i8** %7, align 8
  %181 = load i8*, i8** %4, align 8
  %182 = ptrtoint i8* %180 to i64
  %183 = ptrtoint i8* %181 to i64
  %184 = sub i64 %182, %183
  %185 = trunc i64 %184 to i32
  %186 = call i32 @strncpy(i8* %178, i8* %179, i32 %185)
  %187 = load i8*, i8** %7, align 8
  store i8 0, i8* %187, align 1
  %188 = load i8*, i8** %4, align 8
  %189 = call i64 @strlen(i8* %188)
  %190 = load i8*, i8** %4, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 %189
  store i8* %191, i8** %4, align 8
  br label %192

192:                                              ; preds = %177, %173
  br label %193

193:                                              ; preds = %192, %170
  br label %261

194:                                              ; preds = %32
  %195 = load i8*, i8** %3, align 8
  %196 = getelementptr inbounds i8, i8* %195, i32 1
  store i8* %196, i8** %3, align 8
  %197 = call i8* @strchr(i8* %196, i8 signext 47)
  store i8* %197, i8** %5, align 8
  %198 = load i8*, i8** %5, align 8
  %199 = icmp ne i8* %198, null
  br i1 %199, label %200, label %206

200:                                              ; preds = %194
  %201 = load i8*, i8** %5, align 8
  %202 = load i8*, i8** %3, align 8
  %203 = ptrtoint i8* %201 to i64
  %204 = ptrtoint i8* %202 to i64
  %205 = sub i64 %203, %204
  br label %209

206:                                              ; preds = %194
  %207 = load i8*, i8** %3, align 8
  %208 = call i64 @strlen(i8* %207)
  br label %209

209:                                              ; preds = %206, %200
  %210 = phi i64 [ %205, %200 ], [ %208, %206 ]
  store i64 %210, i64* %10, align 8
  %211 = load i64, i64* %10, align 8
  %212 = icmp eq i64 %211, 0
  br i1 %212, label %213, label %216

213:                                              ; preds = %209
  %214 = call i32 (...) @ID0realuid()
  %215 = call %struct.passwd* @getpwuid(i32 %214)
  store %struct.passwd* %215, %struct.passwd** %8, align 8
  br label %227

216:                                              ; preds = %209
  %217 = load i8*, i8** %4, align 8
  %218 = load i8*, i8** %3, align 8
  %219 = load i64, i64* %10, align 8
  %220 = trunc i64 %219 to i32
  %221 = call i32 @strncpy(i8* %217, i8* %218, i32 %220)
  %222 = load i8*, i8** %4, align 8
  %223 = load i64, i64* %10, align 8
  %224 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8 0, i8* %224, align 1
  %225 = load i8*, i8** %4, align 8
  %226 = call %struct.passwd* @getpwnam(i8* %225)
  store %struct.passwd* %226, %struct.passwd** %8, align 8
  br label %227

227:                                              ; preds = %216, %213
  %228 = load %struct.passwd*, %struct.passwd** %8, align 8
  %229 = icmp eq %struct.passwd* %228, null
  br i1 %229, label %230, label %233

230:                                              ; preds = %227
  %231 = load i8*, i8** %4, align 8
  %232 = getelementptr inbounds i8, i8* %231, i32 1
  store i8* %232, i8** %4, align 8
  store i8 126, i8* %231, align 1
  br label %253

233:                                              ; preds = %227
  %234 = load i8*, i8** %4, align 8
  %235 = load %struct.passwd*, %struct.passwd** %8, align 8
  %236 = getelementptr inbounds %struct.passwd, %struct.passwd* %235, i32 0, i32 0
  %237 = load i8*, i8** %236, align 8
  %238 = load i8*, i8** %7, align 8
  %239 = load i8*, i8** %4, align 8
  %240 = ptrtoint i8* %238 to i64
  %241 = ptrtoint i8* %239 to i64
  %242 = sub i64 %240, %241
  %243 = trunc i64 %242 to i32
  %244 = call i32 @strncpy(i8* %234, i8* %237, i32 %243)
  %245 = load i8*, i8** %7, align 8
  store i8 0, i8* %245, align 1
  %246 = load i8*, i8** %4, align 8
  %247 = call i64 @strlen(i8* %246)
  %248 = load i8*, i8** %4, align 8
  %249 = getelementptr inbounds i8, i8* %248, i64 %247
  store i8* %249, i8** %4, align 8
  %250 = load i64, i64* %10, align 8
  %251 = load i8*, i8** %3, align 8
  %252 = getelementptr inbounds i8, i8* %251, i64 %250
  store i8* %252, i8** %3, align 8
  br label %253

253:                                              ; preds = %233, %230
  %254 = call i32 (...) @endpwent()
  br label %261

255:                                              ; preds = %32
  %256 = load i8*, i8** %3, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %3, align 8
  %258 = load i8, i8* %256, align 1
  %259 = load i8*, i8** %4, align 8
  %260 = getelementptr inbounds i8, i8* %259, i32 1
  store i8* %260, i8** %4, align 8
  store i8 %258, i8* %259, align 1
  br label %261

261:                                              ; preds = %255, %253, %193, %55, %36
  br label %27

262:                                              ; preds = %27
  br label %263

263:                                              ; preds = %277, %262
  %264 = load i8*, i8** %4, align 8
  %265 = load i8*, i8** %6, align 8
  %266 = icmp ugt i8* %264, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %263
  %268 = load i8*, i8** %4, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 -1
  store i8* %269, i8** %4, align 8
  %270 = load i8*, i8** %4, align 8
  %271 = load i8, i8* %270, align 1
  %272 = call i64 @issep(i8 signext %271)
  %273 = icmp ne i64 %272, 0
  br i1 %273, label %277, label %274

274:                                              ; preds = %267
  %275 = load i8*, i8** %4, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %4, align 8
  br label %278

277:                                              ; preds = %267
  br label %263

278:                                              ; preds = %274, %263
  %279 = load i8*, i8** %4, align 8
  store i8 0, i8* %279, align 1
  %280 = load i8*, i8** %3, align 8
  ret i8* %280
}

declare dso_local i64 @issep(i8 signext) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @isalnum(i8 signext) #1

declare dso_local i8* @getenv(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i32 @ID0realuid(...) #1

declare dso_local %struct.passwd* @getpwnam(i8*) #1

declare dso_local i32 @endpwent(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
