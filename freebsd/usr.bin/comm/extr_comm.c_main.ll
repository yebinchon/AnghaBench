; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/comm/extr_comm.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/comm/extr_comm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"123i\00", align 1
@iflag = common dso_local global i32 0, align 4
@optind = common dso_local global i64 0, align 8
@tabs = common dso_local global i8** null, align 8
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%s%s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32*, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %27 = load i32, i32* @LC_ALL, align 4
  %28 = call i32 @setlocale(i32 %27, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  store i32 1, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %43, %2
  %30 = load i32, i32* %4, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = call i32 @getopt(i32 %30, i8** %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %32, i32* %9, align 4
  %33 = icmp ne i32 %32, -1
  br i1 %33, label %34, label %44

34:                                               ; preds = %29
  %35 = load i32, i32* %9, align 4
  switch i32 %35, label %41 [
    i32 49, label %36
    i32 50, label %37
    i32 51, label %38
    i32 105, label %39
    i32 63, label %40
  ]

36:                                               ; preds = %34
  store i32 0, i32* %10, align 4
  br label %43

37:                                               ; preds = %34
  store i32 0, i32* %11, align 4
  br label %43

38:                                               ; preds = %34
  store i32 0, i32* %12, align 4
  br label %43

39:                                               ; preds = %34
  store i32 1, i32* @iflag, align 4
  br label %43

40:                                               ; preds = %34
  br label %41

41:                                               ; preds = %34, %40
  %42 = call i32 (...) @usage()
  br label %43

43:                                               ; preds = %41, %39, %38, %37, %36
  br label %29

44:                                               ; preds = %29
  %45 = load i64, i64* @optind, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = sub nsw i64 %47, %45
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %4, align 4
  %50 = load i64, i64* @optind, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 %50
  store i8** %52, i8*** %5, align 8
  %53 = load i32, i32* %4, align 4
  %54 = icmp ne i32 %53, 2
  br i1 %54, label %55, label %57

55:                                               ; preds = %44
  %56 = call i32 (...) @usage()
  br label %57

57:                                               ; preds = %55, %44
  %58 = load i8**, i8*** %5, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32* @file(i8* %60)
  store i32* %61, i32** %13, align 8
  %62 = load i8**, i8*** %5, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32* @file(i8* %64)
  store i32* %65, i32** %14, align 8
  %66 = load i8**, i8*** @tabs, align 8
  store i8** %66, i8*** %26, align 8
  store i8* null, i8** %17, align 8
  store i8* null, i8** %16, align 8
  store i8* null, i8** %15, align 8
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %57
  %70 = load i8**, i8*** %26, align 8
  %71 = getelementptr inbounds i8*, i8** %70, i32 1
  store i8** %71, i8*** %26, align 8
  %72 = load i8*, i8** %70, align 8
  store i8* %72, i8** %15, align 8
  br label %73

73:                                               ; preds = %69, %57
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i8**, i8*** %26, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i32 1
  store i8** %78, i8*** %26, align 8
  %79 = load i8*, i8** %77, align 8
  store i8* %79, i8** %16, align 8
  br label %80

80:                                               ; preds = %76, %73
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i8**, i8*** %26, align 8
  %85 = load i8*, i8** %84, align 8
  store i8* %85, i8** %17, align 8
  br label %86

86:                                               ; preds = %83, %80
  store i64 0, i64* %19, align 8
  store i64 0, i64* %18, align 8
  store i8* null, i8** %21, align 8
  store i8* null, i8** %20, align 8
  store i32 -1, i32* %23, align 4
  store i32 -1, i32* %22, align 4
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  br label %87

87:                                               ; preds = %256, %236, %86
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %123

90:                                               ; preds = %87
  %91 = load i32*, i32** %13, align 8
  %92 = call i32 @getline(i8** %20, i64* %18, i32* %91)
  store i32 %92, i32* %22, align 4
  %93 = load i32, i32* %22, align 4
  %94 = icmp slt i32 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load i32*, i32** %13, align 8
  %97 = call i64 @ferror(i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %95
  %100 = load i8**, i8*** %5, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 0
  %102 = load i8*, i8** %101, align 8
  %103 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %102)
  br label %104

104:                                              ; preds = %99, %95, %90
  %105 = load i32, i32* %22, align 4
  %106 = icmp sgt i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %104
  %108 = load i8*, i8** %20, align 8
  %109 = load i32, i32* %22, align 4
  %110 = sub nsw i32 %109, 1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  %113 = load i8, i8* %112, align 1
  %114 = sext i8 %113 to i32
  %115 = icmp eq i32 %114, 10
  br i1 %115, label %116, label %122

116:                                              ; preds = %107
  %117 = load i8*, i8** %20, align 8
  %118 = load i32, i32* %22, align 4
  %119 = sub nsw i32 %118, 1
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i8, i8* %117, i64 %120
  store i8 0, i8* %121, align 1
  br label %122

122:                                              ; preds = %116, %107, %104
  br label %123

123:                                              ; preds = %122, %87
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %159

126:                                              ; preds = %123
  %127 = load i32*, i32** %14, align 8
  %128 = call i32 @getline(i8** %21, i64* %19, i32* %127)
  store i32 %128, i32* %23, align 4
  %129 = load i32, i32* %23, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %126
  %132 = load i32*, i32** %14, align 8
  %133 = call i64 @ferror(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %131
  %136 = load i8**, i8*** %5, align 8
  %137 = getelementptr inbounds i8*, i8** %136, i64 1
  %138 = load i8*, i8** %137, align 8
  %139 = call i32 @err(i32 1, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %138)
  br label %140

140:                                              ; preds = %135, %131, %126
  %141 = load i32, i32* %23, align 4
  %142 = icmp sgt i32 %141, 0
  br i1 %142, label %143, label %158

143:                                              ; preds = %140
  %144 = load i8*, i8** %21, align 8
  %145 = load i32, i32* %23, align 4
  %146 = sub nsw i32 %145, 1
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i8, i8* %144, i64 %147
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = icmp eq i32 %150, 10
  br i1 %151, label %152, label %158

152:                                              ; preds = %143
  %153 = load i8*, i8** %21, align 8
  %154 = load i32, i32* %23, align 4
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %153, i64 %156
  store i8 0, i8* %157, align 1
  br label %158

158:                                              ; preds = %152, %143, %140
  br label %159

159:                                              ; preds = %158, %123
  %160 = load i32, i32* %22, align 4
  %161 = icmp slt i32 %160, 0
  br i1 %161, label %162, label %176

162:                                              ; preds = %159
  %163 = load i32, i32* %23, align 4
  %164 = icmp sge i32 %163, 0
  br i1 %164, label %165, label %175

165:                                              ; preds = %162
  %166 = load i8*, i8** %16, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %175

168:                                              ; preds = %165
  %169 = load i32*, i32** %14, align 8
  %170 = load i8**, i8*** %5, align 8
  %171 = getelementptr inbounds i8*, i8** %170, i64 1
  %172 = load i8*, i8** %171, align 8
  %173 = load i8*, i8** %16, align 8
  %174 = call i32 @show(i32* %169, i8* %172, i8* %173, i8** %21, i64* %19)
  br label %175

175:                                              ; preds = %168, %165, %162
  br label %257

176:                                              ; preds = %159
  %177 = load i32, i32* %23, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %193

179:                                              ; preds = %176
  %180 = load i32, i32* %22, align 4
  %181 = icmp sge i32 %180, 0
  br i1 %181, label %182, label %192

182:                                              ; preds = %179
  %183 = load i8*, i8** %15, align 8
  %184 = icmp ne i8* %183, null
  br i1 %184, label %185, label %192

185:                                              ; preds = %182
  %186 = load i32*, i32** %13, align 8
  %187 = load i8**, i8*** %5, align 8
  %188 = getelementptr inbounds i8*, i8** %187, i64 0
  %189 = load i8*, i8** %188, align 8
  %190 = load i8*, i8** %15, align 8
  %191 = call i32 @show(i32* %186, i8* %189, i8* %190, i8** %20, i64* %18)
  br label %192

192:                                              ; preds = %185, %182, %179
  br label %257

193:                                              ; preds = %176
  store i32* null, i32** %25, align 8
  %194 = load i8*, i8** %20, align 8
  %195 = call i32* @convert(i8* %194)
  store i32* %195, i32** %24, align 8
  %196 = icmp ne i32* %195, null
  br i1 %196, label %197, label %200

197:                                              ; preds = %193
  %198 = load i8*, i8** %21, align 8
  %199 = call i32* @convert(i8* %198)
  store i32* %199, i32** %25, align 8
  br label %200

200:                                              ; preds = %197, %193
  %201 = load i32*, i32** %24, align 8
  %202 = icmp eq i32* %201, null
  br i1 %202, label %206, label %203

203:                                              ; preds = %200
  %204 = load i32*, i32** %25, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %210

206:                                              ; preds = %203, %200
  %207 = load i8*, i8** %20, align 8
  %208 = load i8*, i8** %21, align 8
  %209 = call i32 @strcmp(i8* %207, i8* %208)
  store i32 %209, i32* %6, align 4
  br label %214

210:                                              ; preds = %203
  %211 = load i32*, i32** %24, align 8
  %212 = load i32*, i32** %25, align 8
  %213 = call i32 @wcscoll(i32* %211, i32* %212)
  store i32 %213, i32* %6, align 4
  br label %214

214:                                              ; preds = %210, %206
  %215 = load i32*, i32** %24, align 8
  %216 = icmp ne i32* %215, null
  br i1 %216, label %217, label %220

217:                                              ; preds = %214
  %218 = load i32*, i32** %24, align 8
  %219 = call i32 @free(i32* %218)
  br label %220

220:                                              ; preds = %217, %214
  %221 = load i32*, i32** %25, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load i32*, i32** %25, align 8
  %225 = call i32 @free(i32* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32, i32* %6, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %226
  store i32 1, i32* %8, align 4
  store i32 1, i32* %7, align 4
  %230 = load i8*, i8** %17, align 8
  %231 = icmp ne i8* %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i8*, i8** %17, align 8
  %234 = load i8*, i8** %20, align 8
  %235 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %233, i8* %234)
  br label %236

236:                                              ; preds = %232, %229
  br label %87

237:                                              ; preds = %226
  %238 = load i32, i32* %6, align 4
  %239 = icmp slt i32 %238, 0
  br i1 %239, label %240, label %248

240:                                              ; preds = %237
  store i32 1, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %241 = load i8*, i8** %15, align 8
  %242 = icmp ne i8* %241, null
  br i1 %242, label %243, label %247

243:                                              ; preds = %240
  %244 = load i8*, i8** %15, align 8
  %245 = load i8*, i8** %20, align 8
  %246 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %244, i8* %245)
  br label %247

247:                                              ; preds = %243, %240
  br label %256

248:                                              ; preds = %237
  store i32 0, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %249 = load i8*, i8** %16, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i8*, i8** %16, align 8
  %253 = load i8*, i8** %21, align 8
  %254 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i8* %252, i8* %253)
  br label %255

255:                                              ; preds = %251, %248
  br label %256

256:                                              ; preds = %255, %247
  br label %87

257:                                              ; preds = %192, %175
  %258 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @setlocale(i32, i8*) #1

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @usage(...) #1

declare dso_local i32* @file(i8*) #1

declare dso_local i32 @getline(i8**, i64*, i32*) #1

declare dso_local i64 @ferror(i32*) #1

declare dso_local i32 @err(i32, i8*, i8*) #1

declare dso_local i32 @show(i32*, i8*, i8*, i8**, i64*) #1

declare dso_local i32* @convert(i8*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @wcscoll(i32*, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
