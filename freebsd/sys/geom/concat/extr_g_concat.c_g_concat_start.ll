; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/concat/extr_g_concat.c_g_concat_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i64, i64, i32, i8*, i64, i64, i32, i32, %struct.g_concat_disk*, %struct.g_provider*, i32, i32 }
%struct.g_concat_disk = type { i64, i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.g_provider* }
%struct.g_provider = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, %struct.g_concat_softc* }
%struct.TYPE_4__ = type { i32 }
%struct.g_concat_softc = type { i64, %struct.g_concat_disk* }
%struct.bio_queue_head = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Provider's error should be set (error=%d)(device=%s).\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Request received.\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"GEOM::kerneldump\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"GEOM::candelete\00", align 1
@EOPNOTSUPP = common dso_local global i64 0, align 8
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@g_std_done = common dso_local global i32 0, align 4
@g_concat_done = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [52 x i8] c"Length is still greater than 0 (class=%s, name=%s).\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Sending request.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_concat_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_concat_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio_queue_head, align 4
  %4 = alloca %struct.g_concat_softc*, align 8
  %5 = alloca %struct.g_concat_disk*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.bio*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 10
  %17 = load %struct.g_provider*, %struct.g_provider** %16, align 8
  store %struct.g_provider* %17, %struct.g_provider** %6, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load %struct.g_concat_softc*, %struct.g_concat_softc** %21, align 8
  store %struct.g_concat_softc* %22, %struct.g_concat_softc** %4, align 8
  %23 = load %struct.g_concat_softc*, %struct.g_concat_softc** %4, align 8
  %24 = icmp ne %struct.g_concat_softc* %23, null
  %25 = zext i1 %24 to i32
  %26 = load %struct.bio*, %struct.bio** %2, align 8
  %27 = getelementptr inbounds %struct.bio, %struct.bio* %26, i32 0, i32 10
  %28 = load %struct.g_provider*, %struct.g_provider** %27, align 8
  %29 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bio*, %struct.bio** %2, align 8
  %32 = getelementptr inbounds %struct.bio, %struct.bio* %31, i32 0, i32 10
  %33 = load %struct.g_provider*, %struct.g_provider** %32, align 8
  %34 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @KASSERT(i32 %25, i8* %37)
  %39 = load %struct.bio*, %struct.bio** %2, align 8
  %40 = call i32 @G_CONCAT_LOGREQ(%struct.bio* %39, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.bio*, %struct.bio** %2, align 8
  %42 = getelementptr inbounds %struct.bio, %struct.bio* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %69 [
    i32 129, label %44
    i32 128, label %44
    i32 132, label %44
    i32 131, label %45
    i32 130, label %49
  ]

44:                                               ; preds = %1, %1, %1
  br label %73

45:                                               ; preds = %1
  %46 = load %struct.g_concat_softc*, %struct.g_concat_softc** %4, align 8
  %47 = load %struct.bio*, %struct.bio** %2, align 8
  %48 = call i32 @g_concat_flush(%struct.g_concat_softc* %46, %struct.bio* %47)
  br label %296

49:                                               ; preds = %1
  %50 = load %struct.bio*, %struct.bio** %2, align 8
  %51 = getelementptr inbounds %struct.bio, %struct.bio* %50, i32 0, i32 12
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %49
  %56 = load %struct.bio*, %struct.bio** %2, align 8
  %57 = call i32 @g_concat_kernel_dump(%struct.bio* %56)
  br label %296

58:                                               ; preds = %49
  %59 = load %struct.bio*, %struct.bio** %2, align 8
  %60 = getelementptr inbounds %struct.bio, %struct.bio* %59, i32 0, i32 12
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32 %61)
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load %struct.bio*, %struct.bio** %2, align 8
  %66 = call i32 @g_concat_candelete(%struct.bio* %65)
  br label %296

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  br label %69

69:                                               ; preds = %1, %68
  %70 = load %struct.bio*, %struct.bio** %2, align 8
  %71 = load i64, i64* @EOPNOTSUPP, align 8
  %72 = call i32 @g_io_deliver(%struct.bio* %70, i64 %71)
  br label %296

73:                                               ; preds = %44
  %74 = load %struct.bio*, %struct.bio** %2, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %7, align 8
  %77 = load %struct.bio*, %struct.bio** %2, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %9, align 8
  %80 = load %struct.bio*, %struct.bio** %2, align 8
  %81 = getelementptr inbounds %struct.bio, %struct.bio* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BIO_UNMAPPED, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %73
  store i8* null, i8** %13, align 8
  br label %91

87:                                               ; preds = %73
  %88 = load %struct.bio*, %struct.bio** %2, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 4
  %90 = load i8*, i8** %89, align 8
  store i8* %90, i8** %13, align 8
  br label %91

91:                                               ; preds = %87, %86
  %92 = load i64, i64* %7, align 8
  %93 = load i64, i64* %9, align 8
  %94 = add nsw i64 %92, %93
  store i64 %94, i64* %8, align 8
  %95 = call i32 @bioq_init(%struct.bio_queue_head* %3)
  store i64 0, i64* %14, align 8
  br label %96

96:                                               ; preds = %254, %91
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.g_concat_softc*, %struct.g_concat_softc** %4, align 8
  %99 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %257

102:                                              ; preds = %96
  %103 = load %struct.g_concat_softc*, %struct.g_concat_softc** %4, align 8
  %104 = getelementptr inbounds %struct.g_concat_softc, %struct.g_concat_softc* %103, i32 0, i32 1
  %105 = load %struct.g_concat_disk*, %struct.g_concat_disk** %104, align 8
  %106 = load i64, i64* %14, align 8
  %107 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %105, i64 %106
  store %struct.g_concat_disk* %107, %struct.g_concat_disk** %5, align 8
  %108 = load %struct.g_concat_disk*, %struct.g_concat_disk** %5, align 8
  %109 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = icmp sle i64 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %102
  br label %254

114:                                              ; preds = %102
  %115 = load %struct.g_concat_disk*, %struct.g_concat_disk** %5, align 8
  %116 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %8, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  br label %257

121:                                              ; preds = %114
  %122 = load i64, i64* %7, align 8
  %123 = load %struct.g_concat_disk*, %struct.g_concat_disk** %5, align 8
  %124 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %122, %125
  store i64 %126, i64* %10, align 8
  %127 = load i64, i64* %9, align 8
  %128 = load %struct.g_concat_disk*, %struct.g_concat_disk** %5, align 8
  %129 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %7, align 8
  %132 = sub nsw i64 %130, %131
  %133 = call i64 @MIN(i64 %127, i64 %132)
  store i64 %133, i64* %11, align 8
  %134 = load i64, i64* %11, align 8
  %135 = load i64, i64* %9, align 8
  %136 = sub nsw i64 %135, %134
  store i64 %136, i64* %9, align 8
  %137 = load i64, i64* %11, align 8
  %138 = load i64, i64* %7, align 8
  %139 = add nsw i64 %138, %137
  store i64 %139, i64* %7, align 8
  %140 = load %struct.bio*, %struct.bio** %2, align 8
  %141 = call %struct.bio* @g_clone_bio(%struct.bio* %140)
  store %struct.bio* %141, %struct.bio** %12, align 8
  %142 = load %struct.bio*, %struct.bio** %12, align 8
  %143 = icmp eq %struct.bio* %142, null
  br i1 %143, label %144, label %166

144:                                              ; preds = %121
  br label %145

145:                                              ; preds = %148, %144
  %146 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %3)
  store %struct.bio* %146, %struct.bio** %12, align 8
  %147 = icmp ne %struct.bio* %146, null
  br i1 %147, label %148, label %151

148:                                              ; preds = %145
  %149 = load %struct.bio*, %struct.bio** %12, align 8
  %150 = call i32 @g_destroy_bio(%struct.bio* %149)
  br label %145

151:                                              ; preds = %145
  %152 = load %struct.bio*, %struct.bio** %2, align 8
  %153 = getelementptr inbounds %struct.bio, %struct.bio* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %160

156:                                              ; preds = %151
  %157 = load i64, i64* @ENOMEM, align 8
  %158 = load %struct.bio*, %struct.bio** %2, align 8
  %159 = getelementptr inbounds %struct.bio, %struct.bio* %158, i32 0, i32 5
  store i64 %157, i64* %159, align 8
  br label %160

160:                                              ; preds = %156, %151
  %161 = load %struct.bio*, %struct.bio** %2, align 8
  %162 = load %struct.bio*, %struct.bio** %2, align 8
  %163 = getelementptr inbounds %struct.bio, %struct.bio* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = call i32 @g_io_deliver(%struct.bio* %161, i64 %164)
  br label %296

166:                                              ; preds = %121
  %167 = load %struct.bio*, %struct.bio** %12, align 8
  %168 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %3, %struct.bio* %167)
  %169 = load i64, i64* %11, align 8
  %170 = load %struct.bio*, %struct.bio** %2, align 8
  %171 = getelementptr inbounds %struct.bio, %struct.bio* %170, i32 0, i32 2
  %172 = load i64, i64* %171, align 8
  %173 = icmp eq i64 %169, %172
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load i32, i32* @g_std_done, align 4
  %176 = load %struct.bio*, %struct.bio** %12, align 8
  %177 = getelementptr inbounds %struct.bio, %struct.bio* %176, i32 0, i32 11
  store i32 %175, i32* %177, align 8
  br label %182

178:                                              ; preds = %166
  %179 = load i32, i32* @g_concat_done, align 4
  %180 = load %struct.bio*, %struct.bio** %12, align 8
  %181 = getelementptr inbounds %struct.bio, %struct.bio* %180, i32 0, i32 11
  store i32 %179, i32* %181, align 8
  br label %182

182:                                              ; preds = %178, %174
  %183 = load i64, i64* %10, align 8
  %184 = load %struct.bio*, %struct.bio** %12, align 8
  %185 = getelementptr inbounds %struct.bio, %struct.bio* %184, i32 0, i32 1
  store i64 %183, i64* %185, align 8
  %186 = load i64, i64* %11, align 8
  %187 = load %struct.bio*, %struct.bio** %12, align 8
  %188 = getelementptr inbounds %struct.bio, %struct.bio* %187, i32 0, i32 2
  store i64 %186, i64* %188, align 8
  %189 = load %struct.bio*, %struct.bio** %2, align 8
  %190 = getelementptr inbounds %struct.bio, %struct.bio* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = load i32, i32* @BIO_UNMAPPED, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %232

195:                                              ; preds = %182
  %196 = load i8*, i8** %13, align 8
  %197 = ptrtoint i8* %196 to i64
  %198 = load %struct.bio*, %struct.bio** %12, align 8
  %199 = getelementptr inbounds %struct.bio, %struct.bio* %198, i32 0, i32 6
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %200, %197
  store i64 %201, i64* %199, align 8
  %202 = load %struct.bio*, %struct.bio** %12, align 8
  %203 = getelementptr inbounds %struct.bio, %struct.bio* %202, i32 0, i32 6
  %204 = load i64, i64* %203, align 8
  %205 = load i32, i32* @PAGE_SIZE, align 4
  %206 = sext i32 %205 to i64
  %207 = udiv i64 %204, %206
  %208 = load %struct.bio*, %struct.bio** %12, align 8
  %209 = getelementptr inbounds %struct.bio, %struct.bio* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = add i64 %211, %207
  %213 = trunc i64 %212 to i32
  store i32 %213, i32* %209, align 8
  %214 = load i32, i32* @PAGE_SIZE, align 4
  %215 = sext i32 %214 to i64
  %216 = load %struct.bio*, %struct.bio** %12, align 8
  %217 = getelementptr inbounds %struct.bio, %struct.bio* %216, i32 0, i32 6
  %218 = load i64, i64* %217, align 8
  %219 = urem i64 %218, %215
  store i64 %219, i64* %217, align 8
  %220 = load %struct.bio*, %struct.bio** %12, align 8
  %221 = getelementptr inbounds %struct.bio, %struct.bio* %220, i32 0, i32 6
  %222 = load i64, i64* %221, align 8
  %223 = load %struct.bio*, %struct.bio** %12, align 8
  %224 = getelementptr inbounds %struct.bio, %struct.bio* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = add i64 %222, %225
  %227 = call i32 @round_page(i64 %226)
  %228 = load i32, i32* @PAGE_SIZE, align 4
  %229 = sdiv i32 %227, %228
  %230 = load %struct.bio*, %struct.bio** %12, align 8
  %231 = getelementptr inbounds %struct.bio, %struct.bio* %230, i32 0, i32 8
  store i32 %229, i32* %231, align 4
  br label %236

232:                                              ; preds = %182
  %233 = load i8*, i8** %13, align 8
  %234 = load %struct.bio*, %struct.bio** %12, align 8
  %235 = getelementptr inbounds %struct.bio, %struct.bio* %234, i32 0, i32 4
  store i8* %233, i8** %235, align 8
  br label %236

236:                                              ; preds = %232, %195
  %237 = load i64, i64* %11, align 8
  %238 = load i8*, i8** %13, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 %237
  store i8* %239, i8** %13, align 8
  %240 = load %struct.g_concat_disk*, %struct.g_concat_disk** %5, align 8
  %241 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %240, i32 0, i32 2
  %242 = load %struct.TYPE_6__*, %struct.TYPE_6__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load %struct.g_provider*, %struct.g_provider** %243, align 8
  %245 = load %struct.bio*, %struct.bio** %12, align 8
  %246 = getelementptr inbounds %struct.bio, %struct.bio* %245, i32 0, i32 10
  store %struct.g_provider* %244, %struct.g_provider** %246, align 8
  %247 = load %struct.g_concat_disk*, %struct.g_concat_disk** %5, align 8
  %248 = load %struct.bio*, %struct.bio** %12, align 8
  %249 = getelementptr inbounds %struct.bio, %struct.bio* %248, i32 0, i32 9
  store %struct.g_concat_disk* %247, %struct.g_concat_disk** %249, align 8
  %250 = load i64, i64* %9, align 8
  %251 = icmp eq i64 %250, 0
  br i1 %251, label %252, label %253

252:                                              ; preds = %236
  br label %257

253:                                              ; preds = %236
  br label %254

254:                                              ; preds = %253, %113
  %255 = load i64, i64* %14, align 8
  %256 = add i64 %255, 1
  store i64 %256, i64* %14, align 8
  br label %96

257:                                              ; preds = %252, %120, %96
  %258 = load i64, i64* %9, align 8
  %259 = icmp eq i64 %258, 0
  %260 = zext i1 %259 to i32
  %261 = load %struct.bio*, %struct.bio** %2, align 8
  %262 = getelementptr inbounds %struct.bio, %struct.bio* %261, i32 0, i32 10
  %263 = load %struct.g_provider*, %struct.g_provider** %262, align 8
  %264 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %263, i32 0, i32 0
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %264, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load %struct.TYPE_4__*, %struct.TYPE_4__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.bio*, %struct.bio** %2, align 8
  %271 = getelementptr inbounds %struct.bio, %struct.bio* %270, i32 0, i32 10
  %272 = load %struct.g_provider*, %struct.g_provider** %271, align 8
  %273 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %272, i32 0, i32 0
  %274 = load %struct.TYPE_5__*, %struct.TYPE_5__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sext i32 %276 to i64
  %278 = inttoptr i64 %277 to i8*
  %279 = call i32 @KASSERT(i32 %260, i8* %278)
  br label %280

280:                                              ; preds = %283, %257
  %281 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %3)
  store %struct.bio* %281, %struct.bio** %12, align 8
  %282 = icmp ne %struct.bio* %281, null
  br i1 %282, label %283, label %296

283:                                              ; preds = %280
  %284 = load %struct.bio*, %struct.bio** %12, align 8
  %285 = call i32 @G_CONCAT_LOGREQ(%struct.bio* %284, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %286 = load %struct.bio*, %struct.bio** %12, align 8
  %287 = getelementptr inbounds %struct.bio, %struct.bio* %286, i32 0, i32 9
  %288 = load %struct.g_concat_disk*, %struct.g_concat_disk** %287, align 8
  store %struct.g_concat_disk* %288, %struct.g_concat_disk** %5, align 8
  %289 = load %struct.bio*, %struct.bio** %12, align 8
  %290 = getelementptr inbounds %struct.bio, %struct.bio* %289, i32 0, i32 9
  store %struct.g_concat_disk* null, %struct.g_concat_disk** %290, align 8
  %291 = load %struct.bio*, %struct.bio** %12, align 8
  %292 = load %struct.g_concat_disk*, %struct.g_concat_disk** %5, align 8
  %293 = getelementptr inbounds %struct.g_concat_disk, %struct.g_concat_disk* %292, i32 0, i32 2
  %294 = load %struct.TYPE_6__*, %struct.TYPE_6__** %293, align 8
  %295 = call i32 @g_io_request(%struct.bio* %291, %struct.TYPE_6__* %294)
  br label %280

296:                                              ; preds = %45, %55, %64, %69, %160, %280
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @G_CONCAT_LOGREQ(%struct.bio*, i8*) #1

declare dso_local i32 @g_concat_flush(%struct.g_concat_softc*, %struct.bio*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

declare dso_local i32 @g_concat_kernel_dump(%struct.bio*) #1

declare dso_local i32 @g_concat_candelete(%struct.bio*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i64) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
