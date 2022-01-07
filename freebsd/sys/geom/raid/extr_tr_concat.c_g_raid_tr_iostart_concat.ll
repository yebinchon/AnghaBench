; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_iostart_concat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_tr_concat.c_g_raid_tr_iostart_concat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_raid_tr_object = type { %struct.g_raid_volume* }
%struct.g_raid_volume = type { i64, i64, %struct.g_raid_subdisk* }
%struct.g_raid_subdisk = type { i64 }
%struct.bio = type { i64, i64, i64, i32, i8*, i64, i32, i32, i64, %struct.g_raid_subdisk* }
%struct.bio_queue_head = type { i32 }

@G_RAID_VOLUME_S_OPTIMAL = common dso_local global i64 0, align 8
@G_RAID_VOLUME_S_SUBOPTIMAL = common dso_local global i64 0, align 8
@EIO = common dso_local global i64 0, align 8
@BIO_FLUSH = common dso_local global i64 0, align 8
@BIO_UNMAPPED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Request starts after volume end (%ju)\00", align 1
@BIO_DELETE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Request ends after volume end (%ju, %ju)\00", align 1
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.g_raid_tr_object*, %struct.bio*)* @g_raid_tr_iostart_concat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @g_raid_tr_iostart_concat(%struct.g_raid_tr_object* %0, %struct.bio* %1) #0 {
  %3 = alloca %struct.g_raid_tr_object*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca %struct.g_raid_volume*, align 8
  %6 = alloca %struct.g_raid_subdisk*, align 8
  %7 = alloca %struct.bio_queue_head, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.g_raid_tr_object* %0, %struct.g_raid_tr_object** %3, align 8
  store %struct.bio* %1, %struct.bio** %4, align 8
  %14 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %15 = getelementptr inbounds %struct.g_raid_tr_object, %struct.g_raid_tr_object* %14, i32 0, i32 0
  %16 = load %struct.g_raid_volume*, %struct.g_raid_volume** %15, align 8
  store %struct.g_raid_volume* %16, %struct.g_raid_volume** %5, align 8
  %17 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %18 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @G_RAID_VOLUME_S_OPTIMAL, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %2
  %23 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %24 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @G_RAID_VOLUME_S_SUBOPTIMAL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.bio*, %struct.bio** %4, align 8
  %30 = load i64, i64* @EIO, align 8
  %31 = call i32 @g_raid_iodone(%struct.bio* %29, i64 %30)
  br label %261

32:                                               ; preds = %22, %2
  %33 = load %struct.bio*, %struct.bio** %4, align 8
  %34 = getelementptr inbounds %struct.bio, %struct.bio* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @BIO_FLUSH, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %32
  %39 = load %struct.g_raid_tr_object*, %struct.g_raid_tr_object** %3, align 8
  %40 = load %struct.bio*, %struct.bio** %4, align 8
  %41 = call i32 @g_raid_tr_flush_common(%struct.g_raid_tr_object* %39, %struct.bio* %40)
  br label %261

42:                                               ; preds = %32
  %43 = load %struct.bio*, %struct.bio** %4, align 8
  %44 = getelementptr inbounds %struct.bio, %struct.bio* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %10, align 8
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = getelementptr inbounds %struct.bio, %struct.bio* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  store i64 %48, i64* %12, align 8
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @BIO_UNMAPPED, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %42
  store i8* null, i8** %9, align 8
  br label %60

56:                                               ; preds = %42
  %57 = load %struct.bio*, %struct.bio** %4, align 8
  %58 = getelementptr inbounds %struct.bio, %struct.bio* %57, i32 0, i32 4
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %9, align 8
  br label %60

60:                                               ; preds = %56, %55
  store i64 0, i64* %13, align 8
  br label %61

61:                                               ; preds = %79, %60
  %62 = load i64, i64* %13, align 8
  %63 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %64 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp ult i64 %62, %65
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i64, i64* %10, align 8
  %69 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %70 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %69, i32 0, i32 2
  %71 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %70, align 8
  %72 = load i64, i64* %13, align 8
  %73 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %71, i64 %72
  %74 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp sge i64 %68, %75
  br label %77

77:                                               ; preds = %67, %61
  %78 = phi i1 [ false, %61 ], [ %76, %67 ]
  br i1 %78, label %79, label %91

79:                                               ; preds = %77
  %80 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %81 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %80, i32 0, i32 2
  %82 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %81, align 8
  %83 = load i64, i64* %13, align 8
  %84 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %82, i64 %83
  %85 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %10, align 8
  %88 = sub nsw i64 %87, %86
  store i64 %88, i64* %10, align 8
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %13, align 8
  br label %61

91:                                               ; preds = %77
  %92 = load i64, i64* %13, align 8
  %93 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %94 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp ult i64 %92, %95
  %97 = zext i1 %96 to i32
  %98 = load %struct.bio*, %struct.bio** %4, align 8
  %99 = getelementptr inbounds %struct.bio, %struct.bio* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @KASSERT(i32 %97, i8* %101)
  %103 = call i32 @bioq_init(%struct.bio_queue_head* %7)
  br label %104

104:                                              ; preds = %222, %91
  %105 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %106 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %105, i32 0, i32 2
  %107 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %106, align 8
  %108 = load i64, i64* %13, align 8
  %109 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %107, i64 %108
  store %struct.g_raid_subdisk* %109, %struct.g_raid_subdisk** %6, align 8
  %110 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %111 = getelementptr inbounds %struct.g_raid_subdisk, %struct.g_raid_subdisk* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* %10, align 8
  %114 = sub nsw i64 %112, %113
  %115 = load i64, i64* %12, align 8
  %116 = call i64 @MIN(i64 %114, i64 %115)
  store i64 %116, i64* %11, align 8
  %117 = load %struct.bio*, %struct.bio** %4, align 8
  %118 = call %struct.bio* @g_clone_bio(%struct.bio* %117)
  store %struct.bio* %118, %struct.bio** %8, align 8
  %119 = load %struct.bio*, %struct.bio** %8, align 8
  %120 = icmp eq %struct.bio* %119, null
  br i1 %120, label %121, label %122

121:                                              ; preds = %104
  br label %239

122:                                              ; preds = %104
  %123 = load i64, i64* %10, align 8
  %124 = load %struct.bio*, %struct.bio** %8, align 8
  %125 = getelementptr inbounds %struct.bio, %struct.bio* %124, i32 0, i32 1
  store i64 %123, i64* %125, align 8
  %126 = load i64, i64* %11, align 8
  %127 = load %struct.bio*, %struct.bio** %8, align 8
  %128 = getelementptr inbounds %struct.bio, %struct.bio* %127, i32 0, i32 2
  store i64 %126, i64* %128, align 8
  %129 = load %struct.bio*, %struct.bio** %4, align 8
  %130 = getelementptr inbounds %struct.bio, %struct.bio* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @BIO_UNMAPPED, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %178

135:                                              ; preds = %122
  %136 = load %struct.bio*, %struct.bio** %4, align 8
  %137 = getelementptr inbounds %struct.bio, %struct.bio* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @BIO_DELETE, align 8
  %140 = icmp ne i64 %138, %139
  br i1 %140, label %141, label %178

141:                                              ; preds = %135
  %142 = load i8*, i8** %9, align 8
  %143 = ptrtoint i8* %142 to i64
  %144 = load %struct.bio*, %struct.bio** %8, align 8
  %145 = getelementptr inbounds %struct.bio, %struct.bio* %144, i32 0, i32 5
  %146 = load i64, i64* %145, align 8
  %147 = add i64 %146, %143
  store i64 %147, i64* %145, align 8
  %148 = load %struct.bio*, %struct.bio** %8, align 8
  %149 = getelementptr inbounds %struct.bio, %struct.bio* %148, i32 0, i32 5
  %150 = load i64, i64* %149, align 8
  %151 = load i32, i32* @PAGE_SIZE, align 4
  %152 = sext i32 %151 to i64
  %153 = udiv i64 %150, %152
  %154 = load %struct.bio*, %struct.bio** %8, align 8
  %155 = getelementptr inbounds %struct.bio, %struct.bio* %154, i32 0, i32 6
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = add i64 %157, %153
  %159 = trunc i64 %158 to i32
  store i32 %159, i32* %155, align 8
  %160 = load i32, i32* @PAGE_SIZE, align 4
  %161 = sext i32 %160 to i64
  %162 = load %struct.bio*, %struct.bio** %8, align 8
  %163 = getelementptr inbounds %struct.bio, %struct.bio* %162, i32 0, i32 5
  %164 = load i64, i64* %163, align 8
  %165 = urem i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.bio*, %struct.bio** %8, align 8
  %167 = getelementptr inbounds %struct.bio, %struct.bio* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.bio*, %struct.bio** %8, align 8
  %170 = getelementptr inbounds %struct.bio, %struct.bio* %169, i32 0, i32 2
  %171 = load i64, i64* %170, align 8
  %172 = add i64 %168, %171
  %173 = call i32 @round_page(i64 %172)
  %174 = load i32, i32* @PAGE_SIZE, align 4
  %175 = sdiv i32 %173, %174
  %176 = load %struct.bio*, %struct.bio** %8, align 8
  %177 = getelementptr inbounds %struct.bio, %struct.bio* %176, i32 0, i32 7
  store i32 %175, i32* %177, align 4
  br label %182

178:                                              ; preds = %135, %122
  %179 = load i8*, i8** %9, align 8
  %180 = load %struct.bio*, %struct.bio** %8, align 8
  %181 = getelementptr inbounds %struct.bio, %struct.bio* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  br label %182

182:                                              ; preds = %178, %141
  %183 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %184 = load %struct.bio*, %struct.bio** %8, align 8
  %185 = getelementptr inbounds %struct.bio, %struct.bio* %184, i32 0, i32 9
  store %struct.g_raid_subdisk* %183, %struct.g_raid_subdisk** %185, align 8
  %186 = load %struct.bio*, %struct.bio** %8, align 8
  %187 = call i32 @bioq_insert_tail(%struct.bio_queue_head* %7, %struct.bio* %186)
  %188 = load i64, i64* %11, align 8
  %189 = load i64, i64* %12, align 8
  %190 = sub nsw i64 %189, %188
  store i64 %190, i64* %12, align 8
  %191 = load %struct.bio*, %struct.bio** %4, align 8
  %192 = getelementptr inbounds %struct.bio, %struct.bio* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* @BIO_DELETE, align 8
  %195 = icmp ne i64 %193, %194
  br i1 %195, label %196, label %200

196:                                              ; preds = %182
  %197 = load i64, i64* %11, align 8
  %198 = load i8*, i8** %9, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 %197
  store i8* %199, i8** %9, align 8
  br label %200

200:                                              ; preds = %196, %182
  store i64 0, i64* %10, align 8
  %201 = load i64, i64* %13, align 8
  %202 = add i64 %201, 1
  store i64 %202, i64* %13, align 8
  %203 = load i64, i64* %13, align 8
  %204 = load %struct.g_raid_volume*, %struct.g_raid_volume** %5, align 8
  %205 = getelementptr inbounds %struct.g_raid_volume, %struct.g_raid_volume* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  %207 = icmp ult i64 %203, %206
  br i1 %207, label %211, label %208

208:                                              ; preds = %200
  %209 = load i64, i64* %12, align 8
  %210 = icmp eq i64 %209, 0
  br label %211

211:                                              ; preds = %208, %200
  %212 = phi i1 [ true, %200 ], [ %210, %208 ]
  %213 = zext i1 %212 to i32
  %214 = load %struct.bio*, %struct.bio** %4, align 8
  %215 = getelementptr inbounds %struct.bio, %struct.bio* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.bio*, %struct.bio** %4, align 8
  %218 = getelementptr inbounds %struct.bio, %struct.bio* %217, i32 0, i32 2
  %219 = load i64, i64* %218, align 8
  %220 = inttoptr i64 %219 to i8*
  %221 = call i32 @KASSERT(i32 %213, i8* %220)
  br label %222

222:                                              ; preds = %211
  %223 = load i64, i64* %12, align 8
  %224 = icmp sgt i64 %223, 0
  br i1 %224, label %104, label %225

225:                                              ; preds = %222
  br label %226

226:                                              ; preds = %229, %225
  %227 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %227, %struct.bio** %8, align 8
  %228 = icmp ne %struct.bio* %227, null
  br i1 %228, label %229, label %238

229:                                              ; preds = %226
  %230 = load %struct.bio*, %struct.bio** %8, align 8
  %231 = getelementptr inbounds %struct.bio, %struct.bio* %230, i32 0, i32 9
  %232 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %231, align 8
  store %struct.g_raid_subdisk* %232, %struct.g_raid_subdisk** %6, align 8
  %233 = load %struct.bio*, %struct.bio** %8, align 8
  %234 = getelementptr inbounds %struct.bio, %struct.bio* %233, i32 0, i32 9
  store %struct.g_raid_subdisk* null, %struct.g_raid_subdisk** %234, align 8
  %235 = load %struct.g_raid_subdisk*, %struct.g_raid_subdisk** %6, align 8
  %236 = load %struct.bio*, %struct.bio** %8, align 8
  %237 = call i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk* %235, %struct.bio* %236)
  br label %226

238:                                              ; preds = %226
  br label %261

239:                                              ; preds = %121
  br label %240

240:                                              ; preds = %243, %239
  %241 = call %struct.bio* @bioq_takefirst(%struct.bio_queue_head* %7)
  store %struct.bio* %241, %struct.bio** %8, align 8
  %242 = icmp ne %struct.bio* %241, null
  br i1 %242, label %243, label %246

243:                                              ; preds = %240
  %244 = load %struct.bio*, %struct.bio** %8, align 8
  %245 = call i32 @g_destroy_bio(%struct.bio* %244)
  br label %240

246:                                              ; preds = %240
  %247 = load %struct.bio*, %struct.bio** %4, align 8
  %248 = getelementptr inbounds %struct.bio, %struct.bio* %247, i32 0, i32 8
  %249 = load i64, i64* %248, align 8
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %251, label %255

251:                                              ; preds = %246
  %252 = load i64, i64* @ENOMEM, align 8
  %253 = load %struct.bio*, %struct.bio** %4, align 8
  %254 = getelementptr inbounds %struct.bio, %struct.bio* %253, i32 0, i32 8
  store i64 %252, i64* %254, align 8
  br label %255

255:                                              ; preds = %251, %246
  %256 = load %struct.bio*, %struct.bio** %4, align 8
  %257 = load %struct.bio*, %struct.bio** %4, align 8
  %258 = getelementptr inbounds %struct.bio, %struct.bio* %257, i32 0, i32 8
  %259 = load i64, i64* %258, align 8
  %260 = call i32 @g_raid_iodone(%struct.bio* %256, i64 %259)
  br label %261

261:                                              ; preds = %255, %238, %38, %28
  ret void
}

declare dso_local i32 @g_raid_iodone(%struct.bio*, i64) #1

declare dso_local i32 @g_raid_tr_flush_common(%struct.g_raid_tr_object*, %struct.bio*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bioq_init(%struct.bio_queue_head*) #1

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local %struct.bio* @g_clone_bio(%struct.bio*) #1

declare dso_local i32 @round_page(i64) #1

declare dso_local i32 @bioq_insert_tail(%struct.bio_queue_head*, %struct.bio*) #1

declare dso_local %struct.bio* @bioq_takefirst(%struct.bio_queue_head*) #1

declare dso_local i32 @g_raid_subdisk_iostart(%struct.g_raid_subdisk*, %struct.bio*) #1

declare dso_local i32 @g_destroy_bio(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
