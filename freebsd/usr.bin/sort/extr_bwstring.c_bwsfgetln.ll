; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsfgetln.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_bwstring.c_bwsfgetln.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwstring = type { i32 }
%struct.reader_buffer = type { i32, i32* }

@MB_CUR_MAX = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@WEOF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bwstring* @bwsfgetln(i32* %0, i64* %1, i32 %2, %struct.reader_buffer* %3) #0 {
  %5 = alloca %struct.bwstring*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.reader_buffer*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64* %1, i64** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.reader_buffer* %3, %struct.reader_buffer** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = call i32 @btowc(i8 signext 0)
  br label %21

19:                                               ; preds = %4
  %20 = call i32 @btowc(i8 signext 10)
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %65, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @MB_CUR_MAX, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %65

28:                                               ; preds = %25
  %29 = load i32*, i32** %6, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = call i64* @fgetwln(i32* %29, i64* %30)
  store i64* %31, i64** %11, align 8
  %32 = load i64*, i64** %11, align 8
  %33 = icmp eq i64* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %28
  %35 = load i32*, i32** %6, align 8
  %36 = call i64 @feof(i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %34
  %39 = call i32 @err(i32 2, i32* null)
  br label %40

40:                                               ; preds = %38, %34
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  br label %282

41:                                               ; preds = %28
  %42 = load i64*, i64** %7, align 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ugt i64 %43, 0
  br i1 %44, label %45, label %60

45:                                               ; preds = %41
  %46 = load i64*, i64** %11, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %47, align 8
  %49 = sub i64 %48, 1
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = sext i32 %52 to i64
  %54 = icmp eq i64 %51, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %45
  %56 = load i64*, i64** %7, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add i64 %57, -1
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %55, %45
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i64*, i64** %11, align 8
  %62 = load i64*, i64** %7, align 8
  %63 = load i64, i64* %62, align 8
  %64 = call %struct.bwstring* @bwssbdup(i64* %61, i64 %63)
  store %struct.bwstring* %64, %struct.bwstring** %5, align 8
  br label %282

65:                                               ; preds = %25, %21
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %107, label %68

68:                                               ; preds = %65
  %69 = load i32, i32* @MB_CUR_MAX, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %107

71:                                               ; preds = %68
  %72 = load i32*, i32** %6, align 8
  %73 = load i64*, i64** %7, align 8
  %74 = call i8* @fgetln(i32* %72, i64* %73)
  store i8* %74, i8** %12, align 8
  %75 = load i8*, i8** %12, align 8
  %76 = icmp eq i8* %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load i32*, i32** %6, align 8
  %79 = call i64 @feof(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %77
  %82 = call i32 @err(i32 2, i32* null)
  br label %83

83:                                               ; preds = %81, %77
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  br label %282

84:                                               ; preds = %71
  %85 = load i64*, i64** %7, align 8
  %86 = load i64, i64* %85, align 8
  %87 = icmp ugt i64 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %84
  %89 = load i8*, i8** %12, align 8
  %90 = load i64*, i64** %7, align 8
  %91 = load i64, i64* %90, align 8
  %92 = sub i64 %91, 1
  %93 = getelementptr inbounds i8, i8* %89, i64 %92
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp eq i32 %95, 10
  br i1 %96, label %97, label %101

97:                                               ; preds = %88
  %98 = load i64*, i64** %7, align 8
  %99 = load i64, i64* %98, align 8
  %100 = add i64 %99, -1
  store i64 %100, i64* %98, align 8
  br label %101

101:                                              ; preds = %97, %88
  br label %102

102:                                              ; preds = %101, %84
  %103 = load i8*, i8** %12, align 8
  %104 = load i64*, i64** %7, align 8
  %105 = load i64, i64* %104, align 8
  %106 = call %struct.bwstring* @bwscsbdup(i8* %103, i64 %105)
  store %struct.bwstring* %106, %struct.bwstring** %5, align 8
  br label %282

107:                                              ; preds = %68, %65
  %108 = load i64*, i64** %7, align 8
  store i64 0, i64* %108, align 8
  %109 = load i32*, i32** %6, align 8
  %110 = call i64 @feof(i32* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %107
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  br label %282

113:                                              ; preds = %107
  %114 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %115 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = icmp sge i32 2, %116
  br i1 %117, label %118, label %136

118:                                              ; preds = %113
  %119 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %120 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = add nsw i32 %121, 256
  store i32 %122, i32* %120, align 8
  %123 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %124 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %123, i32 0, i32 1
  %125 = load i32*, i32** %124, align 8
  %126 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %127 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = mul i64 8, %129
  %131 = trunc i64 %130 to i32
  %132 = call i8* @sort_realloc(i32* %125, i32 %131)
  %133 = bitcast i8* %132 to i32*
  %134 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %135 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %134, i32 0, i32 1
  store i32* %133, i32** %135, align 8
  br label %136

136:                                              ; preds = %118, %113
  %137 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %138 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %137, i32 0, i32 1
  %139 = load i32*, i32** %138, align 8
  %140 = load i64*, i64** %7, align 8
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 0, i32* %142, align 4
  %143 = load i32, i32* @MB_CUR_MAX, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %209

145:                                              ; preds = %136
  br label %146

146:                                              ; preds = %193, %145
  %147 = load i32*, i32** %6, align 8
  %148 = call i64 @feof(i32* %147)
  %149 = icmp ne i64 %148, 0
  %150 = xor i1 %149, true
  br i1 %150, label %151, label %208

151:                                              ; preds = %146
  %152 = load i32*, i32** %6, align 8
  %153 = call i32 @fgetc(i32* %152)
  store i32 %153, i32* %13, align 4
  %154 = load i32, i32* %13, align 4
  %155 = load i32, i32* @EOF, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %151
  %158 = load i64*, i64** %7, align 8
  %159 = load i64, i64* %158, align 8
  %160 = icmp eq i64 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %157
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  br label %282

162:                                              ; preds = %157
  br label %274

163:                                              ; preds = %151
  %164 = load i32, i32* %13, align 4
  %165 = load i32, i32* %10, align 4
  %166 = icmp eq i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %163
  br label %274

168:                                              ; preds = %163
  %169 = load i64*, i64** %7, align 8
  %170 = load i64, i64* %169, align 8
  %171 = add i64 %170, 1
  %172 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %173 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = icmp uge i64 %171, %175
  br i1 %176, label %177, label %193

177:                                              ; preds = %168
  %178 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %179 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 256
  store i32 %181, i32* %179, align 8
  %182 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %183 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %186 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @SIZEOF_WCHAR_STRING(i32 %187)
  %189 = call i8* @sort_realloc(i32* %184, i32 %188)
  %190 = bitcast i8* %189 to i32*
  %191 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %192 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %191, i32 0, i32 1
  store i32* %190, i32** %192, align 8
  br label %193

193:                                              ; preds = %177, %168
  %194 = load i32, i32* %13, align 4
  %195 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %196 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %195, i32 0, i32 1
  %197 = load i32*, i32** %196, align 8
  %198 = load i64*, i64** %7, align 8
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds i32, i32* %197, i64 %199
  store i32 %194, i32* %200, align 4
  %201 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %202 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %201, i32 0, i32 1
  %203 = load i32*, i32** %202, align 8
  %204 = load i64*, i64** %7, align 8
  %205 = load i64, i64* %204, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %204, align 8
  %207 = getelementptr inbounds i32, i32* %203, i64 %206
  store i32 0, i32* %207, align 4
  br label %146

208:                                              ; preds = %146
  br label %273

209:                                              ; preds = %136
  br label %210

210:                                              ; preds = %257, %209
  %211 = load i32*, i32** %6, align 8
  %212 = call i64 @feof(i32* %211)
  %213 = icmp ne i64 %212, 0
  %214 = xor i1 %213, true
  br i1 %214, label %215, label %272

215:                                              ; preds = %210
  store i32 0, i32* %14, align 4
  %216 = load i32*, i32** %6, align 8
  %217 = call i32 @fgetwc(i32* %216)
  store i32 %217, i32* %14, align 4
  %218 = load i32, i32* %14, align 4
  %219 = load i32, i32* @WEOF, align 4
  %220 = icmp eq i32 %218, %219
  br i1 %220, label %221, label %227

221:                                              ; preds = %215
  %222 = load i64*, i64** %7, align 8
  %223 = load i64, i64* %222, align 8
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %221
  store %struct.bwstring* null, %struct.bwstring** %5, align 8
  br label %282

226:                                              ; preds = %221
  br label %274

227:                                              ; preds = %215
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* %10, align 4
  %230 = icmp eq i32 %228, %229
  br i1 %230, label %231, label %232

231:                                              ; preds = %227
  br label %274

232:                                              ; preds = %227
  %233 = load i64*, i64** %7, align 8
  %234 = load i64, i64* %233, align 8
  %235 = add i64 %234, 1
  %236 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %237 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = icmp uge i64 %235, %239
  br i1 %240, label %241, label %257

241:                                              ; preds = %232
  %242 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %243 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = add nsw i32 %244, 256
  store i32 %245, i32* %243, align 8
  %246 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %247 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %250 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @SIZEOF_WCHAR_STRING(i32 %251)
  %253 = call i8* @sort_realloc(i32* %248, i32 %252)
  %254 = bitcast i8* %253 to i32*
  %255 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %256 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %255, i32 0, i32 1
  store i32* %254, i32** %256, align 8
  br label %257

257:                                              ; preds = %241, %232
  %258 = load i32, i32* %14, align 4
  %259 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %260 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %259, i32 0, i32 1
  %261 = load i32*, i32** %260, align 8
  %262 = load i64*, i64** %7, align 8
  %263 = load i64, i64* %262, align 8
  %264 = getelementptr inbounds i32, i32* %261, i64 %263
  store i32 %258, i32* %264, align 4
  %265 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %266 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = load i64*, i64** %7, align 8
  %269 = load i64, i64* %268, align 8
  %270 = add i64 %269, 1
  store i64 %270, i64* %268, align 8
  %271 = getelementptr inbounds i32, i32* %267, i64 %270
  store i32 0, i32* %271, align 4
  br label %210

272:                                              ; preds = %210
  br label %273

273:                                              ; preds = %272, %208
  br label %274

274:                                              ; preds = %273, %231, %226, %167, %162
  %275 = load %struct.reader_buffer*, %struct.reader_buffer** %9, align 8
  %276 = getelementptr inbounds %struct.reader_buffer, %struct.reader_buffer* %275, i32 0, i32 1
  %277 = load i32*, i32** %276, align 8
  %278 = bitcast i32* %277 to i64*
  %279 = load i64*, i64** %7, align 8
  %280 = load i64, i64* %279, align 8
  %281 = call %struct.bwstring* @bwssbdup(i64* %278, i64 %280)
  store %struct.bwstring* %281, %struct.bwstring** %5, align 8
  br label %282

282:                                              ; preds = %274, %225, %161, %112, %102, %83, %60, %40
  %283 = load %struct.bwstring*, %struct.bwstring** %5, align 8
  ret %struct.bwstring* %283
}

declare dso_local i32 @btowc(i8 signext) #1

declare dso_local i64* @fgetwln(i32*, i64*) #1

declare dso_local i64 @feof(i32*) #1

declare dso_local i32 @err(i32, i32*) #1

declare dso_local %struct.bwstring* @bwssbdup(i64*, i64) #1

declare dso_local i8* @fgetln(i32*, i64*) #1

declare dso_local %struct.bwstring* @bwscsbdup(i8*, i64) #1

declare dso_local i8* @sort_realloc(i32*, i32) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @SIZEOF_WCHAR_STRING(i32) #1

declare dso_local i32 @fgetwc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
