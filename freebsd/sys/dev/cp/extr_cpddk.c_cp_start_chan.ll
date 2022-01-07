; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_start_chan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cp/extr_cpddk.c_cp_start_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64*, i64*, i32, i32, i64*, i64*, i64, i32, i32, i64*, i32*, i64, %struct.TYPE_19__*, i32, i32, %struct.TYPE_15__*, i64, i64, i64*, %struct.TYPE_16__*, i64*, i64*, i64*, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i64*, i64*, %struct.TYPE_16__*, %struct.TYPE_15__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cp_start_chan(%struct.TYPE_18__* %0, i32 %1, i32 %2, %struct.TYPE_17__* %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i64 %4, i64* %10, align 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %5
  br label %19

18:                                               ; preds = %5
  br label %551

19:                                               ; preds = %17
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %21 = icmp ne %struct.TYPE_17__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %148

23:                                               ; preds = %19
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %25, align 8
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 16
  store %struct.TYPE_15__* %26, %struct.TYPE_15__** %28, align 8
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %29, i32 0, i32 2
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %30, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %32, i32 0, i32 20
  store %struct.TYPE_16__* %31, %struct.TYPE_16__** %33, align 8
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %39, %23
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 64
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  br label %63

38:                                               ; preds = %34
  br label %42

39:                                               ; preds = %42
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %34

42:                                               ; preds = %38
  %43 = load i64, i64* %10, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 16
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %48
  %50 = bitcast %struct.TYPE_15__* %49 to i8*
  %51 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %52 = bitcast %struct.TYPE_17__* %51 to i8*
  %53 = ptrtoint i8* %50 to i64
  %54 = ptrtoint i8* %52 to i64
  %55 = sub i64 %53, %54
  %56 = add i64 %43, %55
  %57 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %57, i32 0, i32 1
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %56, i64* %62, align 8
  br label %39

63:                                               ; preds = %37
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %69, %63
  %65 = load i32, i32* %11, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  br label %93

68:                                               ; preds = %64
  br label %72

69:                                               ; preds = %72
  %70 = load i32, i32* %11, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %11, align 4
  br label %64

72:                                               ; preds = %68
  %73 = load i64, i64* %10, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i32 0, i32 20
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %75, align 8
  %77 = load i32, i32* %11, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i64 %78
  %80 = bitcast %struct.TYPE_16__* %79 to i8*
  %81 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %82 = bitcast %struct.TYPE_17__* %81 to i8*
  %83 = ptrtoint i8* %80 to i64
  %84 = ptrtoint i8* %82 to i64
  %85 = sub i64 %83, %84
  %86 = add i64 %73, %85
  %87 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %87, i32 0, i32 2
  %89 = load i64*, i64** %88, align 8
  %90 = load i32, i32* %11, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  store i64 %86, i64* %92, align 8
  br label %69

93:                                               ; preds = %67
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %99, %93
  %95 = load i32, i32* %11, align 4
  %96 = icmp slt i32 %95, 64
  br i1 %96, label %98, label %97

97:                                               ; preds = %94
  br label %120

98:                                               ; preds = %94
  br label %102

99:                                               ; preds = %102
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %94

102:                                              ; preds = %98
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 1
  %105 = load i64*, i64** %104, align 8
  %106 = load i32, i32* %11, align 4
  %107 = add nsw i32 %106, 1
  %108 = srem i32 %107, 64
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64, i64* %105, i64 %109
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %112, i32 0, i32 16
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 0
  %119 = bitcast i32* %118 to i64*
  store volatile i64 %111, i64* %119, align 4
  br label %99

120:                                              ; preds = %97
  store i32 0, i32* %11, align 4
  br label %121

121:                                              ; preds = %126, %120
  %122 = load i32, i32* %11, align 4
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %125, label %124

124:                                              ; preds = %121
  br label %147

125:                                              ; preds = %121
  br label %129

126:                                              ; preds = %129
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %121

129:                                              ; preds = %125
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 2
  %132 = load i64*, i64** %131, align 8
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  %135 = srem i32 %134, 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i64, i64* %132, i64 %136
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 20
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %140, align 8
  %142 = load i32, i32* %11, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i64 %143
  %145 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %144, i32 0, i32 3
  %146 = bitcast i32* %145 to i64*
  store volatile i64 %138, i64* %146, align 4
  br label %126

147:                                              ; preds = %124
  br label %148

148:                                              ; preds = %147, %22
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 13
  %151 = load %struct.TYPE_19__*, %struct.TYPE_19__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp eq i32 %153, 2
  br i1 %154, label %156, label %155

155:                                              ; preds = %148
  br label %172

156:                                              ; preds = %148
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, 12
  store i32 %160, i32* %158, align 8
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = sext i32 %163 to i64
  %165 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %165, i32 0, i32 12
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, 8
  %169 = inttoptr i64 %168 to i64*
  store volatile i64 %164, i64* %169, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 4
  store i32 2097152, i32* %171, align 4
  br label %172

172:                                              ; preds = %156, %155
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, 574914560
  store i32 %176, i32* %174, align 4
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 4
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 12
  %183 = load i64, i64* %182, align 8
  %184 = add nsw i64 %183, 12
  %185 = inttoptr i64 %184 to i64*
  store volatile i64 %180, i64* %185, align 8
  %186 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %187 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %188 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %187, i32 0, i32 27
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @cp_set_phony(%struct.TYPE_18__* %186, i32 %189)
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 12
  %193 = load i64, i64* %192, align 8
  %194 = add nsw i64 %193, 64
  %195 = inttoptr i64 %194 to i64*
  store volatile i64 32819, i64* %195, align 8
  %196 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %197 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = icmp eq i32 %198, 2
  br i1 %199, label %201, label %200

200:                                              ; preds = %172
  br label %204

201:                                              ; preds = %172
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %203 = call i32 @l165(%struct.TYPE_18__* %202)
  br label %204

204:                                              ; preds = %201, %200
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = or i64 %208, 2147483648
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 8
  %211 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = sext i32 %213 to i64
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 12
  %217 = load i64, i64* %216, align 8
  %218 = add nsw i64 %217, 8
  %219 = inttoptr i64 %218 to i64*
  store volatile i64 %214, i64* %219, align 8
  %220 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %221 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %221, i32 0, i32 26
  %223 = load i32, i32* %222, align 8
  %224 = call i32 @cp_set_nrzi(%struct.TYPE_18__* %220, i32 %223)
  %225 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %226 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %226, i32 0, i32 25
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @cp_set_dir(%struct.TYPE_18__* %225, i32 %228)
  %230 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 24
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @cp_set_baud(%struct.TYPE_18__* %230, i32 %233)
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %236 = call i32 @cp_set_dtr(%struct.TYPE_18__* %235, i32 0)
  %237 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %238 = call i32 @cp_set_rts(%struct.TYPE_18__* %237, i32 0)
  %239 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %239, i32 0, i32 23
  %241 = load i64*, i64** %240, align 8
  store i64 0, i64* %241, align 8
  store i32 0, i32* %11, align 4
  br label %242

242:                                              ; preds = %247, %204
  %243 = load i32, i32* %11, align 4
  %244 = icmp slt i32 %243, 64
  br i1 %244, label %246, label %245

245:                                              ; preds = %242
  br label %321

246:                                              ; preds = %242
  br label %250

247:                                              ; preds = %312
  %248 = load i32, i32* %11, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %11, align 4
  br label %242

250:                                              ; preds = %246
  %251 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %252 = icmp ne %struct.TYPE_17__* %251, null
  br i1 %252, label %254, label %253

253:                                              ; preds = %250
  br label %312

254:                                              ; preds = %250
  %255 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %256 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %255, i32 0, i32 1
  %257 = load i64*, i64** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i64, i64* %257, i64 %259
  %261 = load i64, i64* %260, align 8
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 22
  %264 = load i64*, i64** %263, align 8
  %265 = load i32, i32* %11, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i64, i64* %264, i64 %266
  store i64 %261, i64* %267, align 8
  %268 = load i64, i64* %10, align 8
  %269 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %269, i32 0, i32 22
  %271 = load i64*, i64** %270, align 8
  %272 = load i32, i32* %11, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i64, i64* %271, i64 %273
  %275 = load i64, i64* %274, align 8
  %276 = inttoptr i64 %275 to i8*
  %277 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %278 = bitcast %struct.TYPE_17__* %277 to i8*
  %279 = ptrtoint i8* %276 to i64
  %280 = ptrtoint i8* %278 to i64
  %281 = sub i64 %279, %280
  %282 = add i64 %268, %281
  %283 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %284 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %283, i32 0, i32 5
  %285 = load i64*, i64** %284, align 8
  %286 = load i32, i32* %11, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i64, i64* %285, i64 %287
  store i64 %282, i64* %288, align 8
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %289, i32 0, i32 16
  %291 = load %struct.TYPE_15__*, %struct.TYPE_15__** %290, align 8
  %292 = load i32, i32* %11, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %291, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %294, i32 0, i32 3
  %296 = bitcast i32* %295 to i64*
  store volatile i64 109051904, i64* %296, align 4
  %297 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %297, i32 0, i32 5
  %299 = load i64*, i64** %298, align 8
  %300 = load i32, i32* %11, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i64, i64* %299, i64 %301
  %303 = load i64, i64* %302, align 8
  %304 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %304, i32 0, i32 16
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 2
  %311 = bitcast i32* %310 to i64*
  store volatile i64 %303, i64* %311, align 4
  br label %312

312:                                              ; preds = %254, %253
  %313 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %313, i32 0, i32 16
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %314, align 8
  %316 = load i32, i32* %11, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i64 %317
  %319 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %318, i32 0, i32 1
  %320 = bitcast i32* %319 to i64*
  store volatile i64 0, i64* %320, align 4
  br label %247

321:                                              ; preds = %245
  store i32 0, i32* %11, align 4
  br label %322

322:                                              ; preds = %327, %321
  %323 = load i32, i32* %11, align 4
  %324 = icmp slt i32 %323, 4
  br i1 %324, label %326, label %325

325:                                              ; preds = %322
  br label %407

326:                                              ; preds = %322
  br label %330

327:                                              ; preds = %392
  %328 = load i32, i32* %11, align 4
  %329 = add nsw i32 %328, 1
  store i32 %329, i32* %11, align 4
  br label %322

330:                                              ; preds = %326
  %331 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %332 = icmp ne %struct.TYPE_17__* %331, null
  br i1 %332, label %334, label %333

333:                                              ; preds = %330
  br label %392

334:                                              ; preds = %330
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %336 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %335, i32 0, i32 0
  %337 = load i64*, i64** %336, align 8
  %338 = load i32, i32* %11, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds i64, i64* %337, i64 %339
  %341 = load i64, i64* %340, align 8
  %342 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %342, i32 0, i32 21
  %344 = load i64*, i64** %343, align 8
  %345 = load i32, i32* %11, align 4
  %346 = sext i32 %345 to i64
  %347 = getelementptr inbounds i64, i64* %344, i64 %346
  store i64 %341, i64* %347, align 8
  %348 = load i64, i64* %10, align 8
  %349 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %350 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %349, i32 0, i32 21
  %351 = load i64*, i64** %350, align 8
  %352 = load i32, i32* %11, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i64, i64* %351, i64 %353
  %355 = load i64, i64* %354, align 8
  %356 = inttoptr i64 %355 to i8*
  %357 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %358 = bitcast %struct.TYPE_17__* %357 to i8*
  %359 = ptrtoint i8* %356 to i64
  %360 = ptrtoint i8* %358 to i64
  %361 = sub i64 %359, %360
  %362 = add i64 %348, %361
  %363 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %363, i32 0, i32 6
  %365 = load i64*, i64** %364, align 8
  %366 = load i32, i32* %11, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i64, i64* %365, i64 %367
  store i64 %362, i64* %368, align 8
  %369 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %369, i32 0, i32 20
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %370, align 8
  %372 = load i32, i32* %11, align 4
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i64 %373
  %375 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %374, i32 0, i32 2
  %376 = bitcast i32* %375 to i64*
  store volatile i64 3221225472, i64* %376, align 4
  %377 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %378 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %377, i32 0, i32 6
  %379 = load i64*, i64** %378, align 8
  %380 = load i32, i32* %11, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i64, i64* %379, i64 %381
  %383 = load i64, i64* %382, align 8
  %384 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %384, i32 0, i32 20
  %386 = load %struct.TYPE_16__*, %struct.TYPE_16__** %385, align 8
  %387 = load i32, i32* %11, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %389, i32 0, i32 1
  %391 = bitcast i32* %390 to i64*
  store volatile i64 %383, i64* %391, align 4
  br label %392

392:                                              ; preds = %334, %333
  %393 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %394 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %393, i32 0, i32 20
  %395 = load %struct.TYPE_16__*, %struct.TYPE_16__** %394, align 8
  %396 = load i32, i32* %11, align 4
  %397 = sext i32 %396 to i64
  %398 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %395, i64 %397
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 0
  %400 = bitcast i32* %399 to i64*
  store volatile i64 0, i64* %400, align 4
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %402 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %401, i32 0, i32 19
  %403 = load i64*, i64** %402, align 8
  %404 = load i32, i32* %11, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64, i64* %403, i64 %405
  store i64 0, i64* %406, align 8
  br label %327

407:                                              ; preds = %325
  %408 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %409 = icmp ne %struct.TYPE_17__* %408, null
  br i1 %409, label %411, label %410

410:                                              ; preds = %407
  br label %412

411:                                              ; preds = %407
  br label %412

412:                                              ; preds = %411, %410
  %413 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %414 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %413, i32 0, i32 7
  store i64 0, i64* %414, align 8
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 17
  store i64 0, i64* %416, align 8
  %417 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %418 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %417, i32 0, i32 17
  %419 = load i64, i64* %418, align 8
  %420 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %421 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %420, i32 0, i32 18
  store i64 %419, i64* %421, align 8
  %422 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 1
  %424 = load i64*, i64** %423, align 8
  %425 = getelementptr inbounds i64, i64* %424, i64 63
  %426 = load i64, i64* %425, align 8
  %427 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %428 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %427, i32 0, i32 16
  %429 = load %struct.TYPE_15__*, %struct.TYPE_15__** %428, align 8
  %430 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %429, i64 63
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %430, i32 0, i32 0
  %432 = bitcast i32* %431 to i64*
  store volatile i64 %426, i64* %432, align 4
  %433 = load i32, i32* %7, align 4
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %436, label %435

435:                                              ; preds = %412
  br label %464

436:                                              ; preds = %412
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %438 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %437, i32 0, i32 15
  %439 = load i32, i32* %438, align 4
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %442

441:                                              ; preds = %436
  br label %447

442:                                              ; preds = %436
  %443 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %443, i32 0, i32 8
  %445 = load i32, i32* %444, align 8
  %446 = and i32 %445, -65537
  store i32 %446, i32* %444, align 8
  br label %461

447:                                              ; preds = %441
  %448 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %449 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %448, i32 0, i32 8
  %450 = load i32, i32* %449, align 8
  %451 = and i32 %450, -65537
  store i32 %451, i32* %449, align 8
  %452 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %453 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %452, i32 0, i32 8
  %454 = load i32, i32* %453, align 8
  %455 = sext i32 %454 to i64
  %456 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %457 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %456, i32 0, i32 12
  %458 = load i64, i64* %457, align 8
  %459 = add nsw i64 %458, 84
  %460 = inttoptr i64 %459 to i64*
  store volatile i64 %455, i64* %460, align 8
  br label %461

461:                                              ; preds = %447, %442
  %462 = load i64, i64* %12, align 8
  %463 = or i64 %462, 16777216
  store i64 %463, i64* %12, align 8
  br label %464

464:                                              ; preds = %461, %435
  %465 = load i32, i32* %8, align 4
  %466 = icmp ne i32 %465, 0
  br i1 %466, label %468, label %467

467:                                              ; preds = %464
  br label %544

468:                                              ; preds = %464
  %469 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %469, i32 0, i32 9
  %471 = load i32, i32* %470, align 4
  %472 = or i32 %471, 134217728
  store i32 %472, i32* %470, align 4
  %473 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %474 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %473, i32 0, i32 9
  %475 = load i32, i32* %474, align 4
  %476 = sext i32 %475 to i64
  %477 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %478 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %477, i32 0, i32 12
  %479 = load i64, i64* %478, align 8
  %480 = add nsw i64 %479, 16
  %481 = inttoptr i64 %480 to i64*
  store volatile i64 %476, i64* %481, align 8
  %482 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %482, i32 0, i32 15
  %484 = load i32, i32* %483, align 4
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %487

486:                                              ; preds = %468
  br label %492

487:                                              ; preds = %468
  %488 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %488, i32 0, i32 8
  %490 = load i32, i32* %489, align 8
  %491 = and i32 %490, -3
  store i32 %491, i32* %489, align 8
  br label %506

492:                                              ; preds = %486
  %493 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %494 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %493, i32 0, i32 8
  %495 = load i32, i32* %494, align 8
  %496 = and i32 %495, -3
  store i32 %496, i32* %494, align 8
  %497 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %497, i32 0, i32 8
  %499 = load i32, i32* %498, align 8
  %500 = sext i32 %499 to i64
  %501 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %502 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %501, i32 0, i32 12
  %503 = load i64, i64* %502, align 8
  %504 = add nsw i64 %503, 84
  %505 = inttoptr i64 %504 to i64*
  store volatile i64 %500, i64* %505, align 8
  br label %506

506:                                              ; preds = %492, %487
  %507 = load i64, i64* %12, align 8
  %508 = or i64 %507, 65536
  store i64 %508, i64* %12, align 8
  %509 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %510 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %509, i32 0, i32 0
  %511 = load i32, i32* %510, align 8
  %512 = icmp eq i32 %511, 2
  br i1 %512, label %514, label %513

513:                                              ; preds = %506
  br label %522

514:                                              ; preds = %506
  %515 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %516 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %515, i32 0, i32 13
  %517 = load %struct.TYPE_19__*, %struct.TYPE_19__** %516, align 8
  %518 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %519 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %518, i32 0, i32 14
  %520 = load i32, i32* %519, align 8
  %521 = call i32 @l(%struct.TYPE_19__* %517, i32 %520, i32 255)
  br label %522

522:                                              ; preds = %514, %513
  %523 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %524 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %523, i32 0, i32 1
  %525 = load i64*, i64** %524, align 8
  %526 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %526, i32 0, i32 7
  %528 = load i64, i64* %527, align 8
  %529 = getelementptr inbounds i64, i64* %525, i64 %528
  %530 = load i64, i64* %529, align 8
  %531 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %532 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %531, i32 0, i32 10
  %533 = load i64*, i64** %532, align 8
  store i64 %530, i64* %533, align 8
  %534 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %535 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %534, i32 0, i32 11
  %536 = load i32*, i32** %535, align 8
  store i32 1048576, i32* %536, align 4
  %537 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %538 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %537, i32 0, i32 13
  %539 = load %struct.TYPE_19__*, %struct.TYPE_19__** %538, align 8
  %540 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %539, i32 0, i32 1
  %541 = load i64, i64* %540, align 8
  %542 = add nsw i64 %541, 0
  %543 = inttoptr i64 %542 to i64*
  store volatile i64 513, i64* %543, align 8
  br label %544

544:                                              ; preds = %522, %467
  %545 = load i64, i64* %12, align 8
  %546 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %547 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %546, i32 0, i32 12
  %548 = load i64, i64* %547, align 8
  %549 = add nsw i64 %548, 0
  %550 = inttoptr i64 %549 to i64*
  store volatile i64 %545, i64* %550, align 8
  br label %551

551:                                              ; preds = %544, %18
  ret void
}

declare dso_local i32 @cp_set_phony(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @l165(%struct.TYPE_18__*) #1

declare dso_local i32 @cp_set_nrzi(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cp_set_dir(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cp_set_baud(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cp_set_dtr(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @cp_set_rts(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @l(%struct.TYPE_19__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
