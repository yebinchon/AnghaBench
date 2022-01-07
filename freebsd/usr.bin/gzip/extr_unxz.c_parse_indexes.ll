; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unxz.c_parse_indexes.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/gzip/extr_unxz.c_parse_indexes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32*, i32 }
%struct.stat = type { i32 }
%struct.TYPE_19__ = type { i64*, i32 }
%struct.TYPE_17__ = type { i64, i64 }

@LZMA_STREAM_HEADER_SIZE = common dso_local global i32 0, align 4
@LZMA_STREAM_INIT = common dso_local global %struct.TYPE_18__ zeroinitializer, align 4
@LZMA_OK = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@IO_BUFFER_SIZE = common dso_local global i32 0, align 4
@LZMA_RUN = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i32 0, align 4
@LZMA_DATA_ERROR = common dso_local global i32 0, align 4
@LZMA_BUF_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32)* @parse_indexes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_indexes(%struct.TYPE_16__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stat, align 4
  %7 = alloca %struct.TYPE_19__, align 8
  %8 = alloca %struct.TYPE_17__, align 8
  %9 = alloca %struct.TYPE_17__, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_18__, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store i32 %1, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @fstat(i32 %18, %struct.stat* %6)
  %20 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %274

24:                                               ; preds = %2
  %25 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %28 = mul nsw i32 2, %27
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %274

31:                                               ; preds = %24
  %32 = bitcast %struct.TYPE_18__* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.TYPE_18__* @LZMA_STREAM_INIT to i8*), i64 8, i1 false)
  store i32* null, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %33 = getelementptr inbounds %struct.stat, %struct.stat* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  br label %35

35:                                               ; preds = %260, %31
  %36 = load i32, i32* %14, align 4
  %37 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %38 = mul nsw i32 2, %37
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %268

41:                                               ; preds = %35
  %42 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %43 = load i32, i32* %14, align 4
  %44 = sub nsw i32 %43, %42
  store i32 %44, i32* %14, align 4
  store i64 0, i64* %15, align 8
  br label %45

45:                                               ; preds = %41, %87
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %48 = icmp slt i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %268

50:                                               ; preds = %45
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %53 = load i32, i32* %14, align 4
  %54 = call i64 @io_pread(i32 %51, %struct.TYPE_19__* %7, i32 %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %50
  br label %268

57:                                               ; preds = %50
  store i32 2, i32* %16, align 4
  %58 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %16, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %88

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %85, %66
  %68 = load i64, i64* %15, align 8
  %69 = add nsw i64 %68, 4
  store i64 %69, i64* %15, align 8
  %70 = load i32, i32* %14, align 4
  %71 = sub nsw i32 %70, 4
  store i32 %71, i32* %14, align 4
  %72 = load i32, i32* %16, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %16, align 4
  br label %74

74:                                               ; preds = %67
  %75 = load i32, i32* %16, align 4
  %76 = icmp sge i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = load i32, i32* %16, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i64, i64* %79, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp eq i64 %83, 0
  br label %85

85:                                               ; preds = %77, %74
  %86 = phi i1 [ false, %74 ], [ %84, %77 ]
  br i1 %86, label %67, label %87

87:                                               ; preds = %85
  br label %45

88:                                               ; preds = %65
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @lzma_stream_footer_decode(%struct.TYPE_17__* %9, i32 %90)
  store i32 %91, i32* %10, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* @LZMA_OK, align 4
  %94 = icmp ne i32 %92, %93
  br i1 %94, label %95, label %96

95:                                               ; preds = %88
  br label %268

96:                                               ; preds = %88
  %97 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %268

101:                                              ; preds = %96
  %102 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  store i64 %103, i64* %17, align 8
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = load i64, i64* %17, align 8
  %107 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %106, %108
  %110 = icmp slt i64 %105, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %268

112:                                              ; preds = %101
  %113 = load i64, i64* %17, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %14, align 4
  %118 = load i32, i32* @UINT64_MAX, align 4
  %119 = call i32 @lzma_index_decoder(%struct.TYPE_18__* %11, i32** %13, i32 %118)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @LZMA_OK, align 4
  %122 = icmp ne i32 %120, %121
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %268

124:                                              ; preds = %112
  br label %125

125:                                              ; preds = %152, %124
  %126 = load i32, i32* @IO_BUFFER_SIZE, align 4
  %127 = load i64, i64* %17, align 8
  %128 = call i32 @my_min(i32 %126, i64 %127)
  %129 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = load i32, i32* %5, align 4
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* %14, align 4
  %134 = call i64 @io_pread(i32 %130, %struct.TYPE_19__* %7, i32 %132, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %125
  br label %268

137:                                              ; preds = %125
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, %139
  store i32 %141, i32* %14, align 4
  %142 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %17, align 8
  %146 = sub nsw i64 %145, %144
  store i64 %146, i64* %17, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 1
  store i32 %148, i32* %149, align 4
  %150 = load i32, i32* @LZMA_RUN, align 4
  %151 = call i32 @lzma_code(%struct.TYPE_18__* %11, i32 %150)
  store i32 %151, i32* %10, align 4
  br label %152

152:                                              ; preds = %137
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* @LZMA_OK, align 4
  %155 = icmp eq i32 %153, %154
  br i1 %155, label %125, label %156

156:                                              ; preds = %152
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* @LZMA_STREAM_END, align 4
  %159 = icmp eq i32 %157, %158
  br i1 %159, label %160, label %170

160:                                              ; preds = %156
  %161 = load i64, i64* %17, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %167, label %163

163:                                              ; preds = %160
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %169

167:                                              ; preds = %163, %160
  %168 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %168, i32* %10, align 4
  br label %169

169:                                              ; preds = %167, %163
  br label %170

170:                                              ; preds = %169, %156
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* @LZMA_STREAM_END, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %181

174:                                              ; preds = %170
  %175 = load i32, i32* %10, align 4
  %176 = load i32, i32* @LZMA_BUF_ERROR, align 4
  %177 = icmp eq i32 %175, %176
  br i1 %177, label %178, label %180

178:                                              ; preds = %174
  %179 = load i32, i32* @LZMA_DATA_ERROR, align 4
  store i32 %179, i32* %10, align 4
  br label %180

180:                                              ; preds = %178, %174
  br label %268

181:                                              ; preds = %170
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %9, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %185 = sext i32 %184 to i64
  %186 = add nsw i64 %183, %185
  %187 = load i32, i32* %14, align 4
  %188 = sext i32 %187 to i64
  %189 = sub nsw i64 %188, %186
  %190 = trunc i64 %189 to i32
  store i32 %190, i32* %14, align 4
  %191 = load i32, i32* %14, align 4
  %192 = sext i32 %191 to i64
  %193 = load i32*, i32** %13, align 8
  %194 = call i64 @lzma_index_total_size(i32* %193)
  %195 = icmp slt i64 %192, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %181
  br label %268

197:                                              ; preds = %181
  %198 = load i32*, i32** %13, align 8
  %199 = call i64 @lzma_index_total_size(i32* %198)
  %200 = load i32, i32* %14, align 4
  %201 = sext i32 %200 to i64
  %202 = sub nsw i64 %201, %199
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %14, align 4
  %204 = load i32, i32* %5, align 4
  %205 = load i32, i32* @LZMA_STREAM_HEADER_SIZE, align 4
  %206 = load i32, i32* %14, align 4
  %207 = call i64 @io_pread(i32 %204, %struct.TYPE_19__* %7, i32 %205, i32 %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %210

209:                                              ; preds = %197
  br label %268

210:                                              ; preds = %197
  %211 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %7, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @lzma_stream_header_decode(%struct.TYPE_17__* %8, i32 %212)
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* @LZMA_OK, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %218

217:                                              ; preds = %210
  br label %268

218:                                              ; preds = %210
  %219 = call i32 @lzma_stream_flags_compare(%struct.TYPE_17__* %8, %struct.TYPE_17__* %9)
  store i32 %219, i32* %10, align 4
  %220 = load i32, i32* %10, align 4
  %221 = load i32, i32* @LZMA_OK, align 4
  %222 = icmp ne i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %218
  br label %268

224:                                              ; preds = %218
  %225 = load i32*, i32** %13, align 8
  %226 = call i32 @lzma_index_stream_flags(i32* %225, %struct.TYPE_17__* %9)
  store i32 %226, i32* %10, align 4
  %227 = load i32, i32* %10, align 4
  %228 = load i32, i32* @LZMA_OK, align 4
  %229 = icmp ne i32 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %224
  br label %268

231:                                              ; preds = %224
  %232 = load i32*, i32** %13, align 8
  %233 = load i64, i64* %15, align 8
  %234 = call i32 @lzma_index_stream_padding(i32* %232, i64 %233)
  store i32 %234, i32* %10, align 4
  %235 = load i32, i32* %10, align 4
  %236 = load i32, i32* @LZMA_OK, align 4
  %237 = icmp ne i32 %235, %236
  br i1 %237, label %238, label %239

238:                                              ; preds = %231
  br label %268

239:                                              ; preds = %231
  %240 = load i32*, i32** %12, align 8
  %241 = icmp ne i32* %240, null
  br i1 %241, label %242, label %251

242:                                              ; preds = %239
  %243 = load i32*, i32** %13, align 8
  %244 = load i32*, i32** %12, align 8
  %245 = call i32 @lzma_index_cat(i32* %243, i32* %244, i32* null)
  store i32 %245, i32* %10, align 4
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* @LZMA_OK, align 4
  %248 = icmp ne i32 %246, %247
  br i1 %248, label %249, label %250

249:                                              ; preds = %242
  br label %268

250:                                              ; preds = %242
  br label %251

251:                                              ; preds = %250, %239
  %252 = load i32*, i32** %13, align 8
  store i32* %252, i32** %12, align 8
  store i32* null, i32** %13, align 8
  %253 = load i64, i64* %15, align 8
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = sext i32 %256 to i64
  %258 = add nsw i64 %257, %253
  %259 = trunc i64 %258 to i32
  store i32 %259, i32* %255, align 8
  br label %260

260:                                              ; preds = %251
  %261 = load i32, i32* %14, align 4
  %262 = icmp sgt i32 %261, 0
  br i1 %262, label %35, label %263

263:                                              ; preds = %260
  %264 = call i32 @lzma_end(%struct.TYPE_18__* %11)
  %265 = load i32*, i32** %12, align 8
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 0
  store i32* %265, i32** %267, align 8
  store i32 0, i32* %3, align 4
  br label %274

268:                                              ; preds = %249, %238, %230, %223, %217, %209, %196, %180, %136, %123, %111, %100, %95, %56, %49, %40
  %269 = call i32 @lzma_end(%struct.TYPE_18__* %11)
  %270 = load i32*, i32** %12, align 8
  %271 = call i32 @lzma_index_end(i32* %270, i32* null)
  %272 = load i32*, i32** %13, align 8
  %273 = call i32 @lzma_index_end(i32* %272, i32* null)
  store i32 1, i32* %3, align 4
  br label %274

274:                                              ; preds = %268, %263, %30, %23
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @fstat(i32, %struct.stat*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @io_pread(i32, %struct.TYPE_19__*, i32, i32) #1

declare dso_local i32 @lzma_stream_footer_decode(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @lzma_index_decoder(%struct.TYPE_18__*, i32**, i32) #1

declare dso_local i32 @my_min(i32, i64) #1

declare dso_local i32 @lzma_code(%struct.TYPE_18__*, i32) #1

declare dso_local i64 @lzma_index_total_size(i32*) #1

declare dso_local i32 @lzma_stream_header_decode(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @lzma_stream_flags_compare(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @lzma_index_stream_flags(i32*, %struct.TYPE_17__*) #1

declare dso_local i32 @lzma_index_stream_padding(i32*, i64) #1

declare dso_local i32 @lzma_index_cat(i32*, i32*, i32*) #1

declare dso_local i32 @lzma_end(%struct.TYPE_18__*) #1

declare dso_local i32 @lzma_index_end(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
