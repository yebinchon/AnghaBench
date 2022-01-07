; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_intersect_paths.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_intersect_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.diff_queue_struct = type { i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { %struct.TYPE_5__*, i32, %struct.TYPE_8__* }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i8*, i32, i32 }
%struct.combine_diff_path = type { i8*, %struct.combine_diff_path*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@diff_queued_diff = common dso_local global %struct.diff_queue_struct zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.combine_diff_path* (%struct.combine_diff_path*, i32, i32, i32)* @intersect_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.combine_diff_path* @intersect_paths(%struct.combine_diff_path* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.combine_diff_path*, align 8
  %6 = alloca %struct.combine_diff_path*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.diff_queue_struct*, align 8
  %11 = alloca %struct.combine_diff_path*, align 8
  %12 = alloca %struct.combine_diff_path**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  store %struct.combine_diff_path* %0, %struct.combine_diff_path** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.diff_queue_struct* @diff_queued_diff, %struct.diff_queue_struct** %10, align 8
  store %struct.combine_diff_path** %6, %struct.combine_diff_path*** %12, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %216, label %20

20:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %21

21:                                               ; preds = %211, %20
  %22 = load i32, i32* %13, align 4
  %23 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %24 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %214

27:                                               ; preds = %21
  %28 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %29 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %29, align 8
  %31 = load i32, i32* %13, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %30, i64 %32
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = call i64 @diff_unmodified_pair(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  br label %211

38:                                               ; preds = %27
  %39 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %40 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %39, i32 0, i32 1
  %41 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %40, align 8
  %42 = load i32, i32* %13, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %41, i64 %43
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 2
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  store i8* %49, i8** %17, align 8
  %50 = load i8*, i8** %17, align 8
  %51 = call i32 @strlen(i8* %50)
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %16, align 4
  %54 = call i32 @combine_diff_path_size(i32 %52, i32 %53)
  %55 = call %struct.combine_diff_path* @xmalloc(i32 %54)
  store %struct.combine_diff_path* %55, %struct.combine_diff_path** %11, align 8
  %56 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %57 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %56, i32 0, i32 2
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = load i32, i32* %8, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 %60
  %62 = bitcast %struct.TYPE_6__* %61 to i8*
  %63 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %64 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %66 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %65, i32 0, i32 0
  %67 = load i8*, i8** %66, align 8
  %68 = load i8*, i8** %17, align 8
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @memcpy(i8* %67, i8* %68, i32 %69)
  %71 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %72 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  store i8 0, i8* %76, align 1
  %77 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %78 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %77, i32 0, i32 1
  store %struct.combine_diff_path* null, %struct.combine_diff_path** %78, align 8
  %79 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %80 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %79, i32 0, i32 2
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 16, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @memset(%struct.TYPE_6__* %81, i32 0, i32 %85)
  %87 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %88 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %87, i32 0, i32 4
  %89 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %90 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %89, i32 0, i32 1
  %91 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %90, align 8
  %92 = load i32, i32* %13, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %91, i64 %93
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = call i32 @oidcpy(i32* %88, i32* %98)
  %100 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %101 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %101, align 8
  %103 = load i32, i32* %13, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %102, i64 %104
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %112 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %114 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %7, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %121 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %120, i32 0, i32 1
  %122 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %121, align 8
  %123 = load i32, i32* %13, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %122, i64 %124
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 2
  %130 = call i32 @oidcpy(i32* %119, i32* %129)
  %131 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %132 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %131, i32 0, i32 1
  %133 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %133, i64 %135
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 0
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %143 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %142, i32 0, i32 2
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %143, align 8
  %145 = load i32, i32* %7, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 2
  store i32 %141, i32* %148, align 4
  %149 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %150 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %149, i32 0, i32 1
  %151 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %150, align 8
  %152 = load i32, i32* %13, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %151, i64 %153
  %155 = load %struct.TYPE_7__*, %struct.TYPE_7__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %159 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %158, i32 0, i32 2
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %159, align 8
  %161 = load i32, i32* %7, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i32 %157, i32* %164, align 4
  %165 = load i32, i32* %9, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %206

167:                                              ; preds = %38
  %168 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %169 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %168, i32 0, i32 2
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i64 %172
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @filename_changed(i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %206

178:                                              ; preds = %167
  %179 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %180 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %179, i32 0, i32 2
  %181 = load %struct.TYPE_6__*, %struct.TYPE_6__** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 0
  %186 = call i32 @strbuf_init(i32* %185, i32 0)
  %187 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %188 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %187, i32 0, i32 2
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %188, align 8
  %190 = load i32, i32* %7, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %195 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %194, i32 0, i32 1
  %196 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %196, i64 %198
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 0
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @strbuf_addstr(i32* %193, i32 %204)
  br label %206

206:                                              ; preds = %178, %167, %38
  %207 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %208 = load %struct.combine_diff_path**, %struct.combine_diff_path*** %12, align 8
  store %struct.combine_diff_path* %207, %struct.combine_diff_path** %208, align 8
  %209 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %210 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %209, i32 0, i32 1
  store %struct.combine_diff_path** %210, %struct.combine_diff_path*** %12, align 8
  br label %211

211:                                              ; preds = %206, %37
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %21

214:                                              ; preds = %21
  %215 = load %struct.combine_diff_path*, %struct.combine_diff_path** %6, align 8
  store %struct.combine_diff_path* %215, %struct.combine_diff_path** %5, align 8
  br label %382

216:                                              ; preds = %4
  store i32 0, i32* %13, align 4
  br label %217

217:                                              ; preds = %375, %286, %280, %216
  %218 = load %struct.combine_diff_path**, %struct.combine_diff_path*** %12, align 8
  %219 = load %struct.combine_diff_path*, %struct.combine_diff_path** %218, align 8
  store %struct.combine_diff_path* %219, %struct.combine_diff_path** %11, align 8
  %220 = icmp ne %struct.combine_diff_path* %219, null
  br i1 %220, label %221, label %380

221:                                              ; preds = %217
  %222 = load i32, i32* %13, align 4
  %223 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %224 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = icmp sge i32 %222, %225
  br i1 %226, label %227, label %228

227:                                              ; preds = %221
  br label %240

228:                                              ; preds = %221
  %229 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %230 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %231 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %230, i32 0, i32 1
  %232 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %231, align 8
  %233 = load i32, i32* %13, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %232, i64 %234
  %236 = load %struct.TYPE_7__*, %struct.TYPE_7__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = call i32 @compare_paths(%struct.combine_diff_path* %229, %struct.TYPE_8__* %238)
  br label %240

240:                                              ; preds = %228, %227
  %241 = phi i32 [ -1, %227 ], [ %239, %228 ]
  store i32 %241, i32* %15, align 4
  %242 = load i32, i32* %15, align 4
  %243 = icmp slt i32 %242, 0
  br i1 %243, label %244, label %283

244:                                              ; preds = %240
  %245 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %246 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %245, i32 0, i32 1
  %247 = load %struct.combine_diff_path*, %struct.combine_diff_path** %246, align 8
  %248 = load %struct.combine_diff_path**, %struct.combine_diff_path*** %12, align 8
  store %struct.combine_diff_path* %247, %struct.combine_diff_path** %248, align 8
  store i32 0, i32* %14, align 4
  br label %249

249:                                              ; preds = %277, %244
  %250 = load i32, i32* %14, align 4
  %251 = load i32, i32* %8, align 4
  %252 = icmp slt i32 %250, %251
  br i1 %252, label %253, label %280

253:                                              ; preds = %249
  %254 = load i32, i32* %9, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %276

256:                                              ; preds = %253
  %257 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %258 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %257, i32 0, i32 2
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = load i32, i32* %14, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i64 %261
  %263 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = call i64 @filename_changed(i32 %264)
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %276

267:                                              ; preds = %256
  %268 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %269 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %268, i32 0, i32 2
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %269, align 8
  %271 = load i32, i32* %14, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i64 %272
  %274 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %273, i32 0, i32 0
  %275 = call i32 @strbuf_release(i32* %274)
  br label %276

276:                                              ; preds = %267, %256, %253
  br label %277

277:                                              ; preds = %276
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  br label %249

280:                                              ; preds = %249
  %281 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %282 = call i32 @free(%struct.combine_diff_path* %281)
  br label %217

283:                                              ; preds = %240
  %284 = load i32, i32* %15, align 4
  %285 = icmp sgt i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %283
  %287 = load i32, i32* %13, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %13, align 4
  br label %217

289:                                              ; preds = %283
  %290 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %291 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %290, i32 0, i32 2
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %295, i32 0, i32 3
  %297 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %298 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %297, i32 0, i32 1
  %299 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %298, align 8
  %300 = load i32, i32* %13, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %299, i64 %301
  %303 = load %struct.TYPE_7__*, %struct.TYPE_7__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 2
  %307 = call i32 @oidcpy(i32* %296, i32* %306)
  %308 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %309 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %308, i32 0, i32 1
  %310 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %309, align 8
  %311 = load i32, i32* %13, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %310, i64 %312
  %314 = load %struct.TYPE_7__*, %struct.TYPE_7__** %313, align 8
  %315 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %314, i32 0, i32 0
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %315, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 4
  %319 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %320 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %319, i32 0, i32 2
  %321 = load %struct.TYPE_6__*, %struct.TYPE_6__** %320, align 8
  %322 = load i32, i32* %7, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %321, i64 %323
  %325 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %324, i32 0, i32 2
  store i32 %318, i32* %325, align 4
  %326 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %327 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %326, i32 0, i32 1
  %328 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %327, align 8
  %329 = load i32, i32* %13, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %328, i64 %330
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %331, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  %334 = load i32, i32* %333, align 8
  %335 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %336 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %335, i32 0, i32 2
  %337 = load %struct.TYPE_6__*, %struct.TYPE_6__** %336, align 8
  %338 = load i32, i32* %7, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %337, i64 %339
  %341 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %340, i32 0, i32 1
  store i32 %334, i32* %341, align 4
  %342 = load i32, i32* %9, align 4
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %375

344:                                              ; preds = %289
  %345 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %346 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %345, i32 0, i32 2
  %347 = load %struct.TYPE_6__*, %struct.TYPE_6__** %346, align 8
  %348 = load i32, i32* %7, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %347, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = call i64 @filename_changed(i32 %352)
  %354 = icmp ne i64 %353, 0
  br i1 %354, label %355, label %375

355:                                              ; preds = %344
  %356 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %357 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %356, i32 0, i32 2
  %358 = load %struct.TYPE_6__*, %struct.TYPE_6__** %357, align 8
  %359 = load i32, i32* %7, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %361, i32 0, i32 0
  %363 = load %struct.diff_queue_struct*, %struct.diff_queue_struct** %10, align 8
  %364 = getelementptr inbounds %struct.diff_queue_struct, %struct.diff_queue_struct* %363, i32 0, i32 1
  %365 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %364, align 8
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %365, i64 %367
  %369 = load %struct.TYPE_7__*, %struct.TYPE_7__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %369, i32 0, i32 0
  %371 = load %struct.TYPE_5__*, %struct.TYPE_5__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %371, i32 0, i32 0
  %373 = load i32, i32* %372, align 4
  %374 = call i32 @strbuf_addstr(i32* %362, i32 %373)
  br label %375

375:                                              ; preds = %355, %344, %289
  %376 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %377 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %376, i32 0, i32 1
  store %struct.combine_diff_path** %377, %struct.combine_diff_path*** %12, align 8
  %378 = load i32, i32* %13, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %13, align 4
  br label %217

380:                                              ; preds = %217
  %381 = load %struct.combine_diff_path*, %struct.combine_diff_path** %6, align 8
  store %struct.combine_diff_path* %381, %struct.combine_diff_path** %5, align 8
  br label %382

382:                                              ; preds = %380, %214
  %383 = load %struct.combine_diff_path*, %struct.combine_diff_path** %5, align 8
  ret %struct.combine_diff_path* %383
}

declare dso_local i64 @diff_unmodified_pair(%struct.TYPE_7__*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local %struct.combine_diff_path* @xmalloc(i32) #1

declare dso_local i32 @combine_diff_path_size(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i64 @filename_changed(i32) #1

declare dso_local i32 @strbuf_init(i32*, i32) #1

declare dso_local i32 @strbuf_addstr(i32*, i32) #1

declare dso_local i32 @compare_paths(%struct.combine_diff_path*, %struct.TYPE_8__*) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i32 @free(%struct.combine_diff_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
