; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_promise.c_promise_meta_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i64 }
%struct.promise_raid_conf = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@MAXPHYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"%s: Blocksize is too big.\00", align 1
@PROMISE_META_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Cannot read metadata from %s (error=%d).\00", align 1
@PROMISE_MAGIC = common dso_local global i32 0, align 4
@FREEBSD_MAGIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Promise signature check failed on %s\00", align 1
@M_MD_PROMISE = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"Promise checksum check failed on %s\00", align 1
@PROMISE_I_VALID = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"Promise metadata is invalid on %s\00", align 1
@PROMISE_MAX_DISKS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [33 x i8] c"Wrong number of disks on %s (%d)\00", align 1
@UINT32_MAX = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@PROMISE_MAX_SUBDISKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.promise_raid_conf**)* @promise_meta_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @promise_meta_read(%struct.g_consumer* %0, %struct.promise_raid_conf** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_consumer*, align 8
  %5 = alloca %struct.promise_raid_conf**, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.promise_raid_conf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  store %struct.g_consumer* %0, %struct.g_consumer** %4, align 8
  store %struct.promise_raid_conf** %1, %struct.promise_raid_conf*** %5, align 8
  %14 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %15 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %14, i32 0, i32 0
  %16 = load %struct.g_provider*, %struct.g_provider** %15, align 8
  store %struct.g_provider* %16, %struct.g_provider** %6, align 8
  store i32 0, i32* %11, align 4
  %17 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %18 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 4
  %21 = load i32, i32* @MAXPHYS, align 4
  %22 = icmp sgt i32 %20, %21
  br i1 %22, label %23, label %29

23:                                               ; preds = %2
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %3, align 4
  br label %247

29:                                               ; preds = %2
  br label %30

30:                                               ; preds = %244, %29
  %31 = load %struct.g_consumer*, %struct.g_consumer** %4, align 8
  %32 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %36 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @PROMISE_META_OFFSET, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sub nsw i32 63, %40
  %42 = mul nsw i32 %37, %41
  %43 = sext i32 %42 to i64
  %44 = sub nsw i64 %34, %43
  %45 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %46 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %47, 4
  %49 = call i8* @g_read_data(%struct.g_consumer* %31, i64 %44, i32 %48, i32* %9)
  store i8* %49, i8** %8, align 8
  %50 = load i8*, i8** %8, align 8
  %51 = icmp eq i8* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %30
  %53 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %54 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  store i32 %58, i32* %3, align 4
  br label %247

59:                                               ; preds = %30
  %60 = load i8*, i8** %8, align 8
  %61 = bitcast i8* %60 to %struct.promise_raid_conf*
  store %struct.promise_raid_conf* %61, %struct.promise_raid_conf** %7, align 8
  %62 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %63 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %62, i32 0, i32 11
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PROMISE_MAGIC, align 4
  %66 = load i32, i32* @PROMISE_MAGIC, align 4
  %67 = call i32 @strlen(i32 %66)
  %68 = call i64 @strncmp(i32 %64, i32 %65, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %91

70:                                               ; preds = %59
  %71 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %72 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FREEBSD_MAGIC, align 4
  %75 = load i32, i32* @FREEBSD_MAGIC, align 4
  %76 = call i32 @strlen(i32 %75)
  %77 = call i64 @strncmp(i32 %73, i32 %74, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %70
  %80 = load i32, i32* %11, align 4
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %84 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %87

87:                                               ; preds = %82, %79
  %88 = load i8*, i8** %8, align 8
  %89 = call i32 @g_free(i8* %88)
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %247

91:                                               ; preds = %70, %59
  %92 = load i32, i32* @M_MD_PROMISE, align 4
  %93 = load i32, i32* @M_WAITOK, align 4
  %94 = call %struct.promise_raid_conf* @malloc(i32 64, i32 %92, i32 %93)
  store %struct.promise_raid_conf* %94, %struct.promise_raid_conf** %7, align 8
  %95 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %96 = load i8*, i8** %8, align 8
  %97 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %98 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %99, 4
  %101 = call i32 @MIN(i32 64, i32 %100)
  %102 = call i32 @memcpy(%struct.promise_raid_conf* %95, i8* %96, i32 %101)
  %103 = load i8*, i8** %8, align 8
  %104 = call i32 @g_free(i8* %103)
  store i64 0, i64* %12, align 8
  %105 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %106 = bitcast %struct.promise_raid_conf* %105 to i64*
  store i64* %106, i64** %13, align 8
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %116, %91
  %108 = load i32, i32* %10, align 4
  %109 = icmp slt i32 %108, 511
  br i1 %109, label %110, label %119

110:                                              ; preds = %107
  %111 = load i64*, i64** %13, align 8
  %112 = getelementptr inbounds i64, i64* %111, i32 1
  store i64* %112, i64** %13, align 8
  %113 = load i64, i64* %111, align 8
  %114 = load i64, i64* %12, align 8
  %115 = add nsw i64 %114, %113
  store i64 %115, i64* %12, align 8
  br label %116

116:                                              ; preds = %110
  %117 = load i32, i32* %10, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %10, align 4
  br label %107

119:                                              ; preds = %107
  %120 = load i64, i64* %12, align 8
  %121 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %122 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %120, %123
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %127 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i32 %128)
  %130 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %131 = load i32, i32* @M_MD_PROMISE, align 4
  %132 = call i32 @free(%struct.promise_raid_conf* %130, i32 %131)
  %133 = load i32, i32* %11, align 4
  store i32 %133, i32* %3, align 4
  br label %247

134:                                              ; preds = %119
  %135 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %136 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @PROMISE_I_VALID, align 4
  %139 = and i32 %137, %138
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %150

141:                                              ; preds = %134
  %142 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %143 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %144)
  %146 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %147 = load i32, i32* @M_MD_PROMISE, align 4
  %148 = call i32 @free(%struct.promise_raid_conf* %146, i32 %147)
  %149 = load i32, i32* %11, align 4
  store i32 %149, i32* %3, align 4
  br label %247

150:                                              ; preds = %134
  %151 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %152 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load i32, i32* @PROMISE_MAX_DISKS, align 4
  %155 = icmp sgt i32 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %158 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %161 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = call i32 (i32, i8*, i32, ...) @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %159, i32 %162)
  %164 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %165 = load i32, i32* @M_MD_PROMISE, align 4
  %166 = call i32 @free(%struct.promise_raid_conf* %164, i32 %165)
  %167 = load i32, i32* %11, align 4
  store i32 %167, i32* %3, align 4
  br label %247

168:                                              ; preds = %150
  %169 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %170 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %169, i32 0, i32 3
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %171, -1953722994
  br i1 %172, label %173, label %221

173:                                              ; preds = %168
  %174 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %175 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %174, i32 0, i32 4
  %176 = load i32, i32* %175, align 4
  %177 = icmp eq i32 %176, -2021095030
  br i1 %177, label %178, label %221

178:                                              ; preds = %173
  %179 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %180 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = icmp eq i32 %181, -2088467066
  br i1 %182, label %183, label %221

183:                                              ; preds = %178
  %184 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %185 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %184, i32 0, i32 3
  store i32 0, i32* %185, align 8
  %186 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %187 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %186, i32 0, i32 4
  store i32 0, i32* %187, align 4
  %188 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %189 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @UINT32_MAX, align 4
  %192 = icmp eq i32 %190, %191
  br i1 %192, label %193, label %197

193:                                              ; preds = %183
  %194 = load i32, i32* @UINT32_MAX, align 4
  %195 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %196 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %195, i32 0, i32 5
  store i32 %194, i32* %196, align 8
  br label %200

197:                                              ; preds = %183
  %198 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %199 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %198, i32 0, i32 5
  store i32 0, i32* %199, align 8
  br label %200

200:                                              ; preds = %197, %193
  %201 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %202 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %201, i32 0, i32 7
  %203 = load i32, i32* %202, align 8
  %204 = icmp eq i32 %203, 353769240
  br i1 %204, label %205, label %220

205:                                              ; preds = %200
  %206 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %207 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %206, i32 0, i32 7
  store i32 0, i32* %207, align 8
  %208 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %209 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %208, i32 0, i32 10
  store i64 0, i64* %209, align 8
  %210 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %211 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %210, i32 0, i32 8
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = icmp eq i64 %213, 2387509390608836392
  br i1 %214, label %215, label %219

215:                                              ; preds = %205
  %216 = load i32, i32* @UINT64_MAX, align 4
  %217 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %218 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %217, i32 0, i32 8
  store i32 %216, i32* %218, align 4
  br label %219

219:                                              ; preds = %215, %205
  br label %220

220:                                              ; preds = %219, %200
  br label %221

221:                                              ; preds = %220, %178, %173, %168
  %222 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %223 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %222, i32 0, i32 9
  %224 = load i32, i32* %223, align 8
  %225 = icmp slt i32 %224, 1
  br i1 %225, label %231, label %226

226:                                              ; preds = %221
  %227 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %228 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %227, i32 0, i32 9
  %229 = load i32, i32* %228, align 8
  %230 = icmp sgt i32 %229, 8
  br i1 %230, label %231, label %234

231:                                              ; preds = %226, %221
  %232 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %233 = getelementptr inbounds %struct.promise_raid_conf, %struct.promise_raid_conf* %232, i32 0, i32 9
  store i32 1, i32* %233, align 8
  br label %234

234:                                              ; preds = %231, %226
  %235 = load %struct.promise_raid_conf*, %struct.promise_raid_conf** %7, align 8
  %236 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %5, align 8
  store %struct.promise_raid_conf* %235, %struct.promise_raid_conf** %236, align 8
  %237 = load %struct.promise_raid_conf**, %struct.promise_raid_conf*** %5, align 8
  %238 = getelementptr inbounds %struct.promise_raid_conf*, %struct.promise_raid_conf** %237, i32 1
  store %struct.promise_raid_conf** %238, %struct.promise_raid_conf*** %5, align 8
  %239 = load i32, i32* %11, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %11, align 4
  %241 = load i32, i32* %11, align 4
  %242 = load i32, i32* @PROMISE_MAX_SUBDISKS, align 4
  %243 = icmp slt i32 %241, %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %234
  br label %30

245:                                              ; preds = %234
  %246 = load i32, i32* %11, align 4
  store i32 %246, i32* %3, align 4
  br label %247

247:                                              ; preds = %245, %156, %141, %125, %87, %52, %23
  %248 = load i32, i32* %3, align 4
  ret i32 %248
}

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, ...) #1

declare dso_local i8* @g_read_data(%struct.g_consumer*, i64, i32, i32*) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local %struct.promise_raid_conf* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.promise_raid_conf*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @free(%struct.promise_raid_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
