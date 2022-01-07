; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_parse_pos.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_parse_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key_specs = type { i64, i64, i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@.str = private unnamed_addr constant [39 x i8] c"^([0-9]+)(\\.[0-9]+)?([bdfirMngRhV]+)?$\00", align 1
@REG_EXTENDED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [3 x i8] c"-k\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.key_specs*, i32*, i32)* @parse_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_pos(i8* %0, %struct.key_specs* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.key_specs*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [4 x %struct.TYPE_3__], align 16
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store %struct.key_specs* %1, %struct.key_specs** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i8** %14, align 8
  store i32 -1, i32* %17, align 4
  store i64 4, i64* %16, align 8
  store i8* null, i8** %13, align 8
  store i8* null, i8** %12, align 8
  %19 = load i8*, i8** %14, align 8
  %20 = load i32, i32* @REG_EXTENDED, align 4
  %21 = call i64 @regcomp(i32* %11, i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %257

24:                                               ; preds = %4
  %25 = load i8*, i8** %6, align 8
  %26 = load i64, i64* %16, align 8
  %27 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %28 = call i64 @regexec(i32* %11, i8* %25, i64 %26, %struct.TYPE_3__* %27, i32 0)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %242

31:                                               ; preds = %24
  %32 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 16
  %35 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sle i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %31
  br label %242

40:                                               ; preds = %31
  %41 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 16
  %44 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 1
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %242

49:                                               ; preds = %40
  %50 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 1
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 16
  %53 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = sub nsw i64 %52, %55
  store i64 %56, i64* %15, align 8
  %57 = load i64, i64* %15, align 8
  %58 = add i64 %57, 1
  %59 = mul i64 %58, 1
  %60 = call i8* @sort_malloc(i64 %59)
  store i8* %60, i8** %13, align 8
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %6, align 8
  %63 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  %67 = load i64, i64* %15, align 8
  %68 = call i32 @strncpy(i8* %61, i8* %66, i64 %67)
  %69 = load i8*, i8** %13, align 8
  %70 = load i64, i64* %15, align 8
  %71 = getelementptr inbounds i8, i8* %69, i64 %70
  store i8 0, i8* %71, align 1
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %75 = load i8*, i8** %13, align 8
  %76 = call i64 @strtoul(i8* %75, i32* null, i32 10)
  %77 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %78 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %77, i32 0, i32 0
  store i64 %76, i64* %78, align 8
  %79 = load i64, i64* @errno, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %83

83:                                               ; preds = %81, %74
  %84 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %85 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = call i32 @getstr(i32 5)
  %90 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %89)
  br label %242

91:                                               ; preds = %83
  br label %110

92:                                               ; preds = %49
  store i64 0, i64* @errno, align 8
  %93 = load i8*, i8** %13, align 8
  %94 = call i64 @strtoul(i8* %93, i32* null, i32 10)
  %95 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %96 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %95, i32 0, i32 1
  store i64 %94, i64* %96, align 8
  %97 = load i64, i64* @errno, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %101

101:                                              ; preds = %99, %92
  %102 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %103 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = call i32 @getstr(i32 5)
  %108 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %242

109:                                              ; preds = %101
  br label %110

110:                                              ; preds = %109, %91
  %111 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 2
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 16
  %114 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 2
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %113, %116
  br i1 %117, label %118, label %174

118:                                              ; preds = %110
  %119 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 2
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 16
  %122 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 2
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = sub nsw i64 %121, %124
  %126 = sub nsw i64 %125, 1
  store i64 %126, i64* %15, align 8
  %127 = load i64, i64* %15, align 8
  %128 = add i64 %127, 1
  %129 = mul i64 %128, 1
  %130 = call i8* @sort_malloc(i64 %129)
  store i8* %130, i8** %12, align 8
  %131 = load i8*, i8** %12, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 2
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  %137 = getelementptr inbounds i8, i8* %136, i64 1
  %138 = load i64, i64* %15, align 8
  %139 = call i32 @strncpy(i8* %131, i8* %137, i64 %138)
  %140 = load i8*, i8** %12, align 8
  %141 = load i64, i64* %15, align 8
  %142 = getelementptr inbounds i8, i8* %140, i64 %141
  store i8 0, i8* %142, align 1
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %155

145:                                              ; preds = %118
  store i64 0, i64* @errno, align 8
  %146 = load i8*, i8** %12, align 8
  %147 = call i64 @strtoul(i8* %146, i32* null, i32 10)
  %148 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %149 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %148, i32 0, i32 2
  store i64 %147, i64* %149, align 8
  %150 = load i64, i64* @errno, align 8
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %154

154:                                              ; preds = %152, %145
  br label %173

155:                                              ; preds = %118
  store i64 0, i64* @errno, align 8
  %156 = load i8*, i8** %12, align 8
  %157 = call i64 @strtoul(i8* %156, i32* null, i32 10)
  %158 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %159 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %158, i32 0, i32 3
  store i64 %157, i64* %159, align 8
  %160 = load i64, i64* @errno, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %155
  %163 = call i32 @err(i32 2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  br label %164

164:                                              ; preds = %162, %155
  %165 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %166 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br i1 %168, label %169, label %172

169:                                              ; preds = %164
  %170 = call i32 @getstr(i32 6)
  %171 = call i32 @warn(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %170)
  br label %242

172:                                              ; preds = %164
  br label %173

173:                                              ; preds = %172, %154
  br label %184

174:                                              ; preds = %110
  %175 = load i32, i32* %9, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %180

177:                                              ; preds = %174
  %178 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %179 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %178, i32 0, i32 2
  store i64 0, i64* %179, align 8
  br label %183

180:                                              ; preds = %174
  %181 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %182 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %181, i32 0, i32 3
  store i64 1, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %177
  br label %184

184:                                              ; preds = %183, %173
  %185 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 3
  %186 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 16
  %188 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 3
  %189 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp sgt i64 %187, %190
  br i1 %191, label %192, label %241

192:                                              ; preds = %184
  store i64 0, i64* %18, align 8
  %193 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 3
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  store i64 %195, i64* %18, align 8
  br label %196

196:                                              ; preds = %237, %192
  %197 = load i64, i64* %18, align 8
  %198 = getelementptr inbounds [4 x %struct.TYPE_3__], [4 x %struct.TYPE_3__]* %10, i64 0, i64 3
  %199 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 16
  %201 = icmp ult i64 %197, %200
  br i1 %201, label %202, label %240

202:                                              ; preds = %196
  %203 = load i8*, i8** %6, align 8
  %204 = load i64, i64* %18, align 8
  %205 = getelementptr inbounds i8, i8* %203, i64 %204
  %206 = load i8, i8* %205, align 1
  %207 = load i32*, i32** %8, align 8
  %208 = call i32 @check_mutually_exclusive_flags(i8 signext %206, i32* %207)
  %209 = load i8*, i8** %6, align 8
  %210 = load i64, i64* %18, align 8
  %211 = getelementptr inbounds i8, i8* %209, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 98
  br i1 %214, label %215, label %225

215:                                              ; preds = %202
  %216 = load i32, i32* %9, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %221

218:                                              ; preds = %215
  %219 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %220 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %219, i32 0, i32 4
  store i32 1, i32* %220, align 8
  br label %224

221:                                              ; preds = %215
  %222 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %223 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %222, i32 0, i32 5
  store i32 1, i32* %223, align 4
  br label %224

224:                                              ; preds = %221, %218
  br label %236

225:                                              ; preds = %202
  %226 = load %struct.key_specs*, %struct.key_specs** %7, align 8
  %227 = getelementptr inbounds %struct.key_specs, %struct.key_specs* %226, i32 0, i32 6
  %228 = load i8*, i8** %6, align 8
  %229 = load i64, i64* %18, align 8
  %230 = getelementptr inbounds i8, i8* %228, i64 %229
  %231 = load i8, i8* %230, align 1
  %232 = call i32 @set_sort_modifier(i32* %227, i8 signext %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %235, label %234

234:                                              ; preds = %225
  br label %242

235:                                              ; preds = %225
  br label %236

236:                                              ; preds = %235, %224
  br label %237

237:                                              ; preds = %236
  %238 = load i64, i64* %18, align 8
  %239 = add i64 %238, 1
  store i64 %239, i64* %18, align 8
  br label %196

240:                                              ; preds = %196
  br label %241

241:                                              ; preds = %240, %184
  store i32 0, i32* %17, align 4
  br label %242

242:                                              ; preds = %241, %234, %169, %106, %88, %48, %39, %30
  %243 = load i8*, i8** %12, align 8
  %244 = icmp ne i8* %243, null
  br i1 %244, label %245, label %248

245:                                              ; preds = %242
  %246 = load i8*, i8** %12, align 8
  %247 = call i32 @sort_free(i8* %246)
  br label %248

248:                                              ; preds = %245, %242
  %249 = load i8*, i8** %13, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %254

251:                                              ; preds = %248
  %252 = load i8*, i8** %13, align 8
  %253 = call i32 @sort_free(i8* %252)
  br label %254

254:                                              ; preds = %251, %248
  %255 = call i32 @regfree(i32* %11)
  %256 = load i32, i32* %17, align 4
  store i32 %256, i32* %5, align 4
  br label %257

257:                                              ; preds = %254, %23
  %258 = load i32, i32* %5, align 4
  ret i32 %258
}

declare dso_local i64 @regcomp(i32*, i8*, i32) #1

declare dso_local i64 @regexec(i32*, i8*, i64, %struct.TYPE_3__*, i32) #1

declare dso_local i8* @sort_malloc(i64) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @err(i32, i8*) #1

declare dso_local i32 @warn(i8*, i32) #1

declare dso_local i32 @getstr(i32) #1

declare dso_local i32 @check_mutually_exclusive_flags(i8 signext, i32*) #1

declare dso_local i32 @set_sort_modifier(i32*, i8 signext) #1

declare dso_local i32 @sort_free(i8*) #1

declare dso_local i32 @regfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
