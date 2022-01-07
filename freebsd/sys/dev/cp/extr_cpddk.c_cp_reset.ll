; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_17__*, i64, i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i64, i64, i32, i64, i64, i64*, i64*, i32, i64*, i64*, i64, i64, i64, i64, i64 }
%struct.TYPE_16__ = type { i64*, i64*, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_reset(%struct.TYPE_15__* %0, %struct.TYPE_16__* %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %14

13:                                               ; preds = %3
  br label %297

14:                                               ; preds = %12
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %21

18:                                               ; preds = %14
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %20 = call i32 @memset(%struct.TYPE_16__* %19, i32 0, i32 24)
  br label %21

21:                                               ; preds = %18, %17
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 8
  %26 = inttoptr i64 %25 to i64*
  store volatile i64 262144, i64* %26, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1032
  %31 = inttoptr i64 %30 to i16*
  store volatile i16 -1, i16* %31, align 2
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 1024
  %36 = inttoptr i64 %35 to i16*
  store volatile i16 255, i16* %36, align 2
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = add nsw i64 %39, 1028
  %41 = inttoptr i64 %40 to i16*
  store volatile i16 255, i16* %41, align 2
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 768
  %46 = inttoptr i64 %45 to i64*
  store volatile i64 4194304, i64* %46, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, -5
  %52 = call i32 @l(%struct.TYPE_15__* %47, i32 0, i32 %51)
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %54 = call i32 @cp_led(%struct.TYPE_15__* %53, i32 0)
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 12
  %59 = inttoptr i64 %58 to i64*
  store volatile i64 858993459, i64* %59, align 8
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 16
  %64 = inttoptr i64 %63 to i64*
  store volatile i64 196608, i64* %64, align 8
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, 68
  %69 = inttoptr i64 %68 to i64*
  store volatile i64 1108361216, i64* %69, align 8
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %71 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, 72
  %74 = inttoptr i64 %73 to i64*
  store volatile i64 3740719104, i64* %74, align 8
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 52
  %79 = inttoptr i64 %78 to i64*
  store volatile i64 404232216, i64* %79, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 76
  %84 = inttoptr i64 %83 to i64*
  store volatile i64 7, i64* %84, align 8
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 5
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @cp_set_mux(%struct.TYPE_15__* %85, i32 %88)
  %90 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %91 = icmp ne %struct.TYPE_16__* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %21
  br label %115

93:                                               ; preds = %21
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %98 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %97, i32 0, i32 4
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %6, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %100, i32 0, i32 4
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to i8*
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %105 = bitcast %struct.TYPE_16__* %104 to i8*
  %106 = ptrtoint i8* %103 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = add i64 %99, %108
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = add nsw i64 %112, 64
  %114 = inttoptr i64 %113 to i64*
  store volatile i64 %109, i64* %114, align 8
  br label %115

115:                                              ; preds = %93, %92
  %116 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %116, i32 0, i32 3
  store i64 0, i64* %117, align 8
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 1
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %119, align 8
  store %struct.TYPE_17__* %120, %struct.TYPE_17__** %7, align 8
  br label %121

121:                                              ; preds = %130, %115
  %122 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 1
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i64 4
  %127 = icmp ult %struct.TYPE_17__* %122, %126
  br i1 %127, label %129, label %128

128:                                              ; preds = %121
  br label %257

129:                                              ; preds = %121
  br label %133

130:                                              ; preds = %246
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 1
  store %struct.TYPE_17__* %132, %struct.TYPE_17__** %7, align 8
  br label %121

133:                                              ; preds = %129
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = icmp eq i32 %136, 2
  br i1 %137, label %139, label %138

138:                                              ; preds = %133
  br label %142

139:                                              ; preds = %133
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = call i32 @l165(%struct.TYPE_17__* %140)
  br label %152

142:                                              ; preds = %138
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %145, 3
  br i1 %146, label %148, label %147

147:                                              ; preds = %142
  br label %151

148:                                              ; preds = %142
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %150 = call i32 @l210(%struct.TYPE_17__* %149)
  br label %151

151:                                              ; preds = %148, %147
  br label %152

152:                                              ; preds = %151, %139
  %153 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %154 = call i32 @l157(%struct.TYPE_17__* %153)
  %155 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %155, i32 0, i32 1
  store i64 0, i64* %156, align 8
  %157 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %160, i32 0, i32 15
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 8
  %164 = inttoptr i64 %163 to i64*
  store volatile i64 %159, i64* %164, align 8
  %165 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %166 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %165, i32 0, i32 2
  store i64 0, i64* %166, align 8
  %167 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %168 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 15
  %172 = load i64, i64* %171, align 8
  %173 = add nsw i64 %172, 16
  %174 = inttoptr i64 %173 to i64*
  store volatile i64 %169, i64* %174, align 8
  %175 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %175, i32 0, i32 3
  store i32 1, i32* %176, align 8
  %177 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %177, i32 0, i32 4
  store i64 -1, i64* %178, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 15
  %181 = load i64, i64* %180, align 8
  %182 = add nsw i64 %181, 84
  %183 = inttoptr i64 %182 to i64*
  store volatile i64 -1, i64* %183, align 8
  %184 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %184, i32 0, i32 15
  %186 = load i64, i64* %185, align 8
  %187 = add nsw i64 %186, 28
  %188 = inttoptr i64 %187 to i64*
  store volatile i64 520552703, i64* %188, align 8
  %189 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %189, i32 0, i32 15
  %191 = load i64, i64* %190, align 8
  %192 = add nsw i64 %191, 32
  %193 = inttoptr i64 %192 to i64*
  store volatile i64 520552703, i64* %193, align 8
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %195 = icmp ne %struct.TYPE_16__* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %152
  br label %246

197:                                              ; preds = %152
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 1
  %200 = load i64*, i64** %199, align 8
  %201 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %202 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %201, i32 0, i32 5
  %203 = load i64, i64* %202, align 8
  %204 = getelementptr inbounds i64, i64* %200, i64 %203
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %207 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %206, i32 0, i32 14
  store i64 %205, i64* %207, align 8
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i64*, i64** %209, align 8
  %211 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %211, i32 0, i32 5
  %213 = load i64, i64* %212, align 8
  %214 = getelementptr inbounds i64, i64* %210, i64 %213
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %217 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %216, i32 0, i32 13
  store i64 %215, i64* %217, align 8
  %218 = load i64, i64* %6, align 8
  %219 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %220 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %219, i32 0, i32 14
  %221 = load i64, i64* %220, align 8
  %222 = inttoptr i64 %221 to i8*
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %224 = bitcast %struct.TYPE_16__* %223 to i8*
  %225 = ptrtoint i8* %222 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = add i64 %218, %227
  %229 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 6
  %231 = load i64*, i64** %230, align 8
  store i64 %228, i64* %231, align 8
  %232 = load i64, i64* %6, align 8
  %233 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %234 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %233, i32 0, i32 13
  %235 = load i64, i64* %234, align 8
  %236 = inttoptr i64 %235 to i8*
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %238 = bitcast %struct.TYPE_16__* %237 to i8*
  %239 = ptrtoint i8* %236 to i64
  %240 = ptrtoint i8* %238 to i64
  %241 = sub i64 %239, %240
  %242 = add i64 %232, %241
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 7
  %245 = load i64*, i64** %244, align 8
  store i64 %242, i64* %245, align 8
  br label %246

246:                                              ; preds = %197, %196
  %247 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %248 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %247, i32 0, i32 12
  store i64 0, i64* %248, align 8
  %249 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %249, i32 0, i32 11
  store i64 0, i64* %250, align 8
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %251, i32 0, i32 10
  %253 = load i64*, i64** %252, align 8
  store i64 0, i64* %253, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 9
  %256 = load i64*, i64** %255, align 8
  store i64 0, i64* %256, align 8
  br label %130

257:                                              ; preds = %128
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 2
  %260 = load i64, i64* %259, align 8
  %261 = add nsw i64 %260, 0
  %262 = inttoptr i64 %261 to i64*
  store volatile i64 4279239169, i64* %262, align 8
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 1
  %265 = load %struct.TYPE_17__*, %struct.TYPE_17__** %264, align 8
  store %struct.TYPE_17__* %265, %struct.TYPE_17__** %7, align 8
  br label %266

266:                                              ; preds = %275, %257
  %267 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 1
  %270 = load %struct.TYPE_17__*, %struct.TYPE_17__** %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i64 4
  %272 = icmp ult %struct.TYPE_17__* %267, %271
  br i1 %272, label %274, label %273

273:                                              ; preds = %266
  br label %297

274:                                              ; preds = %266
  br label %278

275:                                              ; preds = %294, %293
  %276 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %276, i32 1
  store %struct.TYPE_17__* %277, %struct.TYPE_17__** %7, align 8
  br label %266

278:                                              ; preds = %274
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %280 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = icmp ne i32 %281, 3
  br i1 %282, label %293, label %283

283:                                              ; preds = %278
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 8
  %286 = load i32, i32* %285, align 8
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

288:                                              ; preds = %283
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %290 = call i32 @l57(%struct.TYPE_17__* %289, i32 15)
  %291 = icmp ne i32 %290, 163
  br i1 %291, label %293, label %292

292:                                              ; preds = %288
  br label %294

293:                                              ; preds = %288, %283, %278
  br label %275

294:                                              ; preds = %292
  %295 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %296 = call i32 @l741(%struct.TYPE_17__* %295)
  br label %275

297:                                              ; preds = %13, %273
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @l(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @cp_led(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @cp_set_mux(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @l165(%struct.TYPE_17__*) #1

declare dso_local i32 @l210(%struct.TYPE_17__*) #1

declare dso_local i32 @l157(%struct.TYPE_17__*) #1

declare dso_local i32 @l57(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @l741(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
