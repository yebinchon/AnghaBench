; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/extr_geom_slice.c_g_slice_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio = type { i32, i8*, i64, i32, i64, i64, %struct.g_provider* }
%struct.g_provider = type { i32, %struct.g_geom* }
%struct.g_geom = type { i32, %struct.g_slicer* }
%struct.g_slicer = type { i64, i32 (%struct.bio.0*)*, %struct.g_slice*, i32, %struct.g_slice_hot* }
%struct.bio.0 = type opaque
%struct.g_slice = type { i64, i64 }
%struct.g_slice_hot = type { i32, i32, i32, i64, i64 }
%struct.g_consumer = type { i32 }
%struct.g_kerneldump = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@g_std_done = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"GEOM::ident\00", align 1
@g_slice_done = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"GEOM::kerneldump\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio*)* @g_slice_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_slice_start(%struct.bio* %0) #0 {
  %2 = alloca %struct.bio*, align 8
  %3 = alloca %struct.bio*, align 8
  %4 = alloca %struct.g_provider*, align 8
  %5 = alloca %struct.g_geom*, align 8
  %6 = alloca %struct.g_consumer*, align 8
  %7 = alloca %struct.g_slicer*, align 8
  %8 = alloca %struct.g_slice*, align 8
  %9 = alloca %struct.g_slice_hot*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.g_kerneldump*, align 8
  store %struct.bio* %0, %struct.bio** %2, align 8
  %15 = load %struct.bio*, %struct.bio** %2, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 6
  %17 = load %struct.g_provider*, %struct.g_provider** %16, align 8
  store %struct.g_provider* %17, %struct.g_provider** %4, align 8
  %18 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %19 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %18, i32 0, i32 1
  %20 = load %struct.g_geom*, %struct.g_geom** %19, align 8
  store %struct.g_geom* %20, %struct.g_geom** %5, align 8
  %21 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %22 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %21, i32 0, i32 1
  %23 = load %struct.g_slicer*, %struct.g_slicer** %22, align 8
  store %struct.g_slicer* %23, %struct.g_slicer** %7, align 8
  %24 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %25 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %24, i32 0, i32 0
  %26 = call %struct.g_consumer* @LIST_FIRST(i32* %25)
  store %struct.g_consumer* %26, %struct.g_consumer** %6, align 8
  %27 = load %struct.g_provider*, %struct.g_provider** %4, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %31 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %30, i32 0, i32 2
  %32 = load %struct.g_slice*, %struct.g_slice** %31, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %32, i64 %34
  store %struct.g_slice* %35, %struct.g_slice** %8, align 8
  %36 = load %struct.bio*, %struct.bio** %2, align 8
  %37 = getelementptr inbounds %struct.bio, %struct.bio* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %297 [
    i32 133, label %39
    i32 132, label %39
    i32 136, label %39
    i32 134, label %197
    i32 135, label %281
  ]

39:                                               ; preds = %1, %1, %1
  %40 = load %struct.bio*, %struct.bio** %2, align 8
  %41 = getelementptr inbounds %struct.bio, %struct.bio* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.g_slice*, %struct.g_slice** %8, align 8
  %44 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.bio*, %struct.bio** %2, align 8
  %49 = load i32, i32* @EINVAL, align 4
  %50 = call i32 @g_io_deliver(%struct.bio* %48, i32 %49)
  br label %301

51:                                               ; preds = %39
  %52 = load %struct.bio*, %struct.bio** %2, align 8
  %53 = getelementptr inbounds %struct.bio, %struct.bio* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.g_slice*, %struct.g_slice** %8, align 8
  %56 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %54, %57
  store i64 %58, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %59

59:                                               ; preds = %149, %51
  %60 = load i64, i64* %12, align 8
  %61 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %62 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp ult i64 %60, %63
  br i1 %64, label %65, label %152

65:                                               ; preds = %59
  %66 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %67 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %66, i32 0, i32 4
  %68 = load %struct.g_slice_hot*, %struct.g_slice_hot** %67, align 8
  %69 = load i64, i64* %12, align 8
  %70 = getelementptr inbounds %struct.g_slice_hot, %struct.g_slice_hot* %68, i64 %69
  store %struct.g_slice_hot* %70, %struct.g_slice_hot** %9, align 8
  %71 = load i64, i64* %13, align 8
  %72 = load %struct.g_slice_hot*, %struct.g_slice_hot** %9, align 8
  %73 = getelementptr inbounds %struct.g_slice_hot, %struct.g_slice_hot* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load %struct.g_slice_hot*, %struct.g_slice_hot** %9, align 8
  %76 = getelementptr inbounds %struct.g_slice_hot, %struct.g_slice_hot* %75, i32 0, i32 4
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %74, %77
  %79 = icmp sge i64 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %65
  br label %149

81:                                               ; preds = %65
  %82 = load i64, i64* %13, align 8
  %83 = load %struct.bio*, %struct.bio** %2, align 8
  %84 = getelementptr inbounds %struct.bio, %struct.bio* %83, i32 0, i32 5
  %85 = load i64, i64* %84, align 8
  %86 = add nsw i64 %82, %85
  %87 = load %struct.g_slice_hot*, %struct.g_slice_hot** %9, align 8
  %88 = getelementptr inbounds %struct.g_slice_hot, %struct.g_slice_hot* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %149

92:                                               ; preds = %81
  %93 = load %struct.bio*, %struct.bio** %2, align 8
  %94 = getelementptr inbounds %struct.bio, %struct.bio* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  switch i32 %95, label %108 [
    i32 133, label %96
    i32 132, label %100
    i32 136, label %104
  ]

96:                                               ; preds = %92
  %97 = load %struct.g_slice_hot*, %struct.g_slice_hot** %9, align 8
  %98 = getelementptr inbounds %struct.g_slice_hot, %struct.g_slice_hot* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  store i32 %99, i32* %10, align 4
  br label %108

100:                                              ; preds = %92
  %101 = load %struct.g_slice_hot*, %struct.g_slice_hot** %9, align 8
  %102 = getelementptr inbounds %struct.g_slice_hot, %struct.g_slice_hot* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %10, align 4
  br label %108

104:                                              ; preds = %92
  %105 = load %struct.g_slice_hot*, %struct.g_slice_hot** %9, align 8
  %106 = getelementptr inbounds %struct.g_slice_hot, %struct.g_slice_hot* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  store i32 %107, i32* %10, align 4
  br label %108

108:                                              ; preds = %92, %104, %100, %96
  %109 = load i32, i32* %10, align 4
  switch i32 %109, label %148 [
    i32 131, label %110
    i32 129, label %111
    i32 128, label %115
    i32 130, label %133
  ]

110:                                              ; preds = %108
  br label %149

111:                                              ; preds = %108
  %112 = load %struct.bio*, %struct.bio** %2, align 8
  %113 = load i32, i32* @EROFS, align 4
  %114 = call i32 @g_io_deliver(%struct.bio* %112, i32 %113)
  br label %301

115:                                              ; preds = %108
  %116 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %117 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %116, i32 0, i32 1
  %118 = load i32 (%struct.bio.0*)*, i32 (%struct.bio.0*)** %117, align 8
  %119 = load %struct.bio*, %struct.bio** %2, align 8
  %120 = bitcast %struct.bio* %119 to %struct.bio.0*
  %121 = call i32 %118(%struct.bio.0* %120)
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* %11, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %132

124:                                              ; preds = %115
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @EJUSTRETURN, align 4
  %127 = icmp ne i32 %125, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %124
  %129 = load %struct.bio*, %struct.bio** %2, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @g_io_deliver(%struct.bio* %129, i32 %130)
  br label %132

132:                                              ; preds = %128, %124, %115
  br label %301

133:                                              ; preds = %108
  %134 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %135 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.bio*, %struct.bio** %2, align 8
  %138 = load i32, i32* @M_NOWAIT, align 4
  %139 = load %struct.g_geom*, %struct.g_geom** %5, align 8
  %140 = call i32 @g_post_event(i32 %136, %struct.bio* %137, i32 %138, %struct.g_geom* %139, i32* null)
  store i32 %140, i32* %11, align 4
  %141 = load i32, i32* %11, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %133
  %144 = load %struct.bio*, %struct.bio** %2, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call i32 @g_io_deliver(%struct.bio* %144, i32 %145)
  br label %147

147:                                              ; preds = %143, %133
  br label %301

148:                                              ; preds = %108
  br label %152

149:                                              ; preds = %110, %91, %80
  %150 = load i64, i64* %12, align 8
  %151 = add i64 %150, 1
  store i64 %151, i64* %12, align 8
  br label %59

152:                                              ; preds = %148, %59
  %153 = load %struct.bio*, %struct.bio** %2, align 8
  %154 = call %struct.bio* @g_clone_bio(%struct.bio* %153)
  store %struct.bio* %154, %struct.bio** %3, align 8
  %155 = load %struct.bio*, %struct.bio** %3, align 8
  %156 = icmp eq %struct.bio* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %152
  %158 = load %struct.bio*, %struct.bio** %2, align 8
  %159 = load i32, i32* @ENOMEM, align 4
  %160 = call i32 @g_io_deliver(%struct.bio* %158, i32 %159)
  br label %301

161:                                              ; preds = %152
  %162 = load %struct.bio*, %struct.bio** %3, align 8
  %163 = getelementptr inbounds %struct.bio, %struct.bio* %162, i32 0, i32 4
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.bio*, %struct.bio** %3, align 8
  %166 = getelementptr inbounds %struct.bio, %struct.bio* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %164, %167
  %169 = load %struct.g_slice*, %struct.g_slice** %8, align 8
  %170 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = icmp sgt i64 %168, %171
  br i1 %172, label %173, label %183

173:                                              ; preds = %161
  %174 = load %struct.g_slice*, %struct.g_slice** %8, align 8
  %175 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load %struct.bio*, %struct.bio** %3, align 8
  %178 = getelementptr inbounds %struct.bio, %struct.bio* %177, i32 0, i32 4
  %179 = load i64, i64* %178, align 8
  %180 = sub nsw i64 %176, %179
  %181 = load %struct.bio*, %struct.bio** %3, align 8
  %182 = getelementptr inbounds %struct.bio, %struct.bio* %181, i32 0, i32 5
  store i64 %180, i64* %182, align 8
  br label %183

183:                                              ; preds = %173, %161
  %184 = load i8*, i8** @g_std_done, align 8
  %185 = load %struct.bio*, %struct.bio** %3, align 8
  %186 = getelementptr inbounds %struct.bio, %struct.bio* %185, i32 0, i32 1
  store i8* %184, i8** %186, align 8
  %187 = load %struct.g_slice*, %struct.g_slice** %8, align 8
  %188 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.bio*, %struct.bio** %3, align 8
  %191 = getelementptr inbounds %struct.bio, %struct.bio* %190, i32 0, i32 4
  %192 = load i64, i64* %191, align 8
  %193 = add nsw i64 %192, %189
  store i64 %193, i64* %191, align 8
  %194 = load %struct.bio*, %struct.bio** %3, align 8
  %195 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %196 = call i32 @g_io_request(%struct.bio* %194, %struct.g_consumer* %195)
  br label %301

197:                                              ; preds = %1
  %198 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %199 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %198, i32 0, i32 1
  %200 = load i32 (%struct.bio.0*)*, i32 (%struct.bio.0*)** %199, align 8
  %201 = icmp ne i32 (%struct.bio.0*)* %200, null
  br i1 %201, label %202, label %211

202:                                              ; preds = %197
  %203 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %204 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %203, i32 0, i32 1
  %205 = load i32 (%struct.bio.0*)*, i32 (%struct.bio.0*)** %204, align 8
  %206 = load %struct.bio*, %struct.bio** %2, align 8
  %207 = bitcast %struct.bio* %206 to %struct.bio.0*
  %208 = call i32 %205(%struct.bio.0* %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %202
  br label %301

211:                                              ; preds = %202, %197
  %212 = load %struct.bio*, %struct.bio** %2, align 8
  %213 = getelementptr inbounds %struct.bio, %struct.bio* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @strcmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %233, label %217

217:                                              ; preds = %211
  %218 = load %struct.bio*, %struct.bio** %2, align 8
  %219 = call %struct.bio* @g_clone_bio(%struct.bio* %218)
  store %struct.bio* %219, %struct.bio** %3, align 8
  %220 = load %struct.bio*, %struct.bio** %3, align 8
  %221 = icmp eq %struct.bio* %220, null
  br i1 %221, label %222, label %226

222:                                              ; preds = %217
  %223 = load %struct.bio*, %struct.bio** %2, align 8
  %224 = load i32, i32* @ENOMEM, align 4
  %225 = call i32 @g_io_deliver(%struct.bio* %223, i32 %224)
  br label %301

226:                                              ; preds = %217
  %227 = load i8*, i8** @g_slice_done, align 8
  %228 = load %struct.bio*, %struct.bio** %3, align 8
  %229 = getelementptr inbounds %struct.bio, %struct.bio* %228, i32 0, i32 1
  store i8* %227, i8** %229, align 8
  %230 = load %struct.bio*, %struct.bio** %3, align 8
  %231 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %232 = call i32 @g_io_request(%struct.bio* %230, %struct.g_consumer* %231)
  br label %301

233:                                              ; preds = %211
  %234 = load %struct.bio*, %struct.bio** %2, align 8
  %235 = getelementptr inbounds %struct.bio, %struct.bio* %234, i32 0, i32 3
  %236 = load i32, i32* %235, align 8
  %237 = call i32 @strcmp(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %236)
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %280, label %239

239:                                              ; preds = %233
  %240 = load %struct.bio*, %struct.bio** %2, align 8
  %241 = getelementptr inbounds %struct.bio, %struct.bio* %240, i32 0, i32 2
  %242 = load i64, i64* %241, align 8
  %243 = inttoptr i64 %242 to %struct.g_kerneldump*
  store %struct.g_kerneldump* %243, %struct.g_kerneldump** %14, align 8
  %244 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %245 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %244, i32 0, i32 2
  %246 = load %struct.g_slice*, %struct.g_slice** %245, align 8
  %247 = load i32, i32* %10, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %246, i64 %248
  %250 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %249, i32 0, i32 1
  %251 = load i64, i64* %250, align 8
  %252 = load %struct.g_kerneldump*, %struct.g_kerneldump** %14, align 8
  %253 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %252, i32 0, i32 1
  %254 = load i64, i64* %253, align 8
  %255 = add nsw i64 %254, %251
  store i64 %255, i64* %253, align 8
  %256 = load %struct.g_kerneldump*, %struct.g_kerneldump** %14, align 8
  %257 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %260 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %259, i32 0, i32 2
  %261 = load %struct.g_slice*, %struct.g_slice** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %261, i64 %263
  %265 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = icmp sgt i64 %258, %266
  br i1 %267, label %268, label %279

268:                                              ; preds = %239
  %269 = load %struct.g_slicer*, %struct.g_slicer** %7, align 8
  %270 = getelementptr inbounds %struct.g_slicer, %struct.g_slicer* %269, i32 0, i32 2
  %271 = load %struct.g_slice*, %struct.g_slice** %270, align 8
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %271, i64 %273
  %275 = getelementptr inbounds %struct.g_slice, %struct.g_slice* %274, i32 0, i32 0
  %276 = load i64, i64* %275, align 8
  %277 = load %struct.g_kerneldump*, %struct.g_kerneldump** %14, align 8
  %278 = getelementptr inbounds %struct.g_kerneldump, %struct.g_kerneldump* %277, i32 0, i32 0
  store i64 %276, i64* %278, align 8
  br label %279

279:                                              ; preds = %268, %239
  br label %280

280:                                              ; preds = %279, %233
  br label %281

281:                                              ; preds = %1, %280
  %282 = load %struct.bio*, %struct.bio** %2, align 8
  %283 = call %struct.bio* @g_clone_bio(%struct.bio* %282)
  store %struct.bio* %283, %struct.bio** %3, align 8
  %284 = load %struct.bio*, %struct.bio** %3, align 8
  %285 = icmp eq %struct.bio* %284, null
  br i1 %285, label %286, label %290

286:                                              ; preds = %281
  %287 = load %struct.bio*, %struct.bio** %2, align 8
  %288 = load i32, i32* @ENOMEM, align 4
  %289 = call i32 @g_io_deliver(%struct.bio* %287, i32 %288)
  br label %301

290:                                              ; preds = %281
  %291 = load i8*, i8** @g_std_done, align 8
  %292 = load %struct.bio*, %struct.bio** %3, align 8
  %293 = getelementptr inbounds %struct.bio, %struct.bio* %292, i32 0, i32 1
  store i8* %291, i8** %293, align 8
  %294 = load %struct.bio*, %struct.bio** %3, align 8
  %295 = load %struct.g_consumer*, %struct.g_consumer** %6, align 8
  %296 = call i32 @g_io_request(%struct.bio* %294, %struct.g_consumer* %295)
  br label %301

297:                                              ; preds = %1
  %298 = load %struct.bio*, %struct.bio** %2, align 8
  %299 = load i32, i32* @EOPNOTSUPP, align 4
  %300 = call i32 @g_io_deliver(%struct.bio* %298, i32 %299)
  br label %301

301:                                              ; preds = %47, %111, %132, %147, %157, %183, %210, %222, %226, %286, %297, %290
  ret void
}

declare dso_local %struct.g_consumer* @LIST_FIRST(i32*) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @g_post_event(i32, %struct.bio*, i32, %struct.g_geom*, i32*) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @g_io_request(%struct.bio*, %struct.g_consumer*) #1

declare dso_local i32 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
