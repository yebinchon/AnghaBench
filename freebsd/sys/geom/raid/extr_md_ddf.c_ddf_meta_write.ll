; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_meta_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i32 }
%struct.ddf_meta = type { %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record* }
%struct.ddf_vdc_record = type { i32 }

@hdr = common dso_local global %struct.TYPE_10__* null, align 8
@DDF_HEADER_ANCHOR = common dso_local global i32 0, align 4
@DDF_HEADER_PRIMARY = common dso_local global i32 0, align 4
@DDF_HEADER_SECONDARY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Cannot write metadata to %s (error=%d).\00", align 1
@cdr = common dso_local global %struct.TYPE_11__* null, align 8
@pdr = common dso_local global %struct.TYPE_8__* null, align 8
@vdr = common dso_local global %struct.TYPE_7__* null, align 8
@pdd = common dso_local global %struct.TYPE_9__* null, align 8
@bbm = common dso_local global %struct.TYPE_12__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_consumer*, %struct.ddf_meta*)* @ddf_meta_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ddf_meta_write(%struct.g_consumer* %0, %struct.ddf_meta* %1) #0 {
  %3 = alloca %struct.g_consumer*, align 8
  %4 = alloca %struct.ddf_meta*, align 8
  %5 = alloca %struct.g_provider*, align 8
  %6 = alloca %struct.ddf_vdc_record*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.g_consumer* %0, %struct.g_consumer** %3, align 8
  store %struct.ddf_meta* %1, %struct.ddf_meta** %4, align 8
  %16 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %17 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %16, i32 0, i32 0
  %18 = load %struct.g_provider*, %struct.g_provider** %17, align 8
  store %struct.g_provider* %18, %struct.g_provider** %5, align 8
  %19 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %20 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %11, align 4
  %22 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %23 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %11, align 4
  %26 = sdiv i32 %24, %25
  %27 = sub nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @GET64(%struct.ddf_meta* %28, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 14
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @GET64(%struct.ddf_meta* %33, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %381, %103, %2
  %39 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* @DDF_HEADER_ANCHOR, align 4
  br label %58

48:                                               ; preds = %38
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i32, i32* @DDF_HEADER_PRIMARY, align 4
  br label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @DDF_HEADER_SECONDARY, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi i32 [ %53, %52 ], [ %55, %54 ]
  br label %58

58:                                               ; preds = %56, %46
  %59 = phi i32 [ %47, %46 ], [ %57, %56 ]
  %60 = call i32 @SET8(%struct.ddf_meta* %39, i32 %42, i32 %59)
  %61 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 12
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @SET32(%struct.ddf_meta* %61, i32 %64, i32 -1)
  %66 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 12
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %71 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %70, i32 0, i32 6
  %72 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %71, align 8
  %73 = load i32, i32* %11, align 4
  %74 = call i32 @crc32(%struct.ddf_vdc_record* %72, i32 %73)
  %75 = call i32 @SET32(%struct.ddf_meta* %66, i32 %69, i32 %74)
  %76 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %77 = load i32, i32* %10, align 4
  %78 = load i32, i32* %11, align 4
  %79 = mul nsw i32 %77, %78
  %80 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %81 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %80, i32 0, i32 6
  %82 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = call i32 @g_write_data(%struct.g_consumer* %76, i32 %79, %struct.ddf_vdc_record* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %58
  br label %88

88:                                               ; preds = %371, %323, %282, %227, %186, %145, %87
  %89 = load %struct.g_provider*, %struct.g_provider** %5, align 8
  %90 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %13, align 4
  %93 = call i32 @G_RAID_DEBUG(i32 1, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %91, i32 %92)
  %94 = load i32, i32* %10, align 4
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %374

98:                                               ; preds = %88
  br label %99

99:                                               ; preds = %98, %58
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %7, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %10, align 4
  br label %38

105:                                              ; preds = %99
  %106 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @GET32(%struct.ddf_meta* %106, i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = mul nsw i32 %110, %111
  store i32 %112, i32* %12, align 4
  %113 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %114 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cdr, align 8
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SET32(%struct.ddf_meta* %113, i32 %116, i32 -1)
  %118 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** @cdr, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %123 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %122, i32 0, i32 5
  %124 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %123, align 8
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @crc32(%struct.ddf_vdc_record* %124, i32 %125)
  %127 = call i32 @SET32(%struct.ddf_meta* %118, i32 %121, i32 %126)
  %128 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %129 = load i32, i32* %10, align 4
  %130 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @GET32(%struct.ddf_meta* %130, i32 %133)
  %135 = add nsw i32 %129, %134
  %136 = load i32, i32* %11, align 4
  %137 = mul nsw i32 %135, %136
  %138 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %139 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %138, i32 0, i32 5
  %140 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %139, align 8
  %141 = load i32, i32* %12, align 4
  %142 = call i32 @g_write_data(%struct.g_consumer* %128, i32 %137, %struct.ddf_vdc_record* %140, i32 %141)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %105
  br label %88

146:                                              ; preds = %105
  %147 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 9
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @GET32(%struct.ddf_meta* %147, i32 %150)
  %152 = load i32, i32* %11, align 4
  %153 = mul nsw i32 %151, %152
  store i32 %153, i32* %12, align 4
  %154 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %155 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pdr, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @SET32(%struct.ddf_meta* %154, i32 %157, i32 -1)
  %159 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** @pdr, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %164 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %163, i32 0, i32 4
  %165 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %164, align 8
  %166 = load i32, i32* %12, align 4
  %167 = call i32 @crc32(%struct.ddf_vdc_record* %165, i32 %166)
  %168 = call i32 @SET32(%struct.ddf_meta* %159, i32 %162, i32 %167)
  %169 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %170 = load i32, i32* %10, align 4
  %171 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 8
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @GET32(%struct.ddf_meta* %171, i32 %174)
  %176 = add nsw i32 %170, %175
  %177 = load i32, i32* %11, align 4
  %178 = mul nsw i32 %176, %177
  %179 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %180 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %179, i32 0, i32 4
  %181 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %180, align 8
  %182 = load i32, i32* %12, align 4
  %183 = call i32 @g_write_data(%struct.g_consumer* %169, i32 %178, %struct.ddf_vdc_record* %181, i32 %182)
  store i32 %183, i32* %13, align 4
  %184 = load i32, i32* %13, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %187

186:                                              ; preds = %146
  br label %88

187:                                              ; preds = %146
  %188 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 7
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @GET32(%struct.ddf_meta* %188, i32 %191)
  %193 = load i32, i32* %11, align 4
  %194 = mul nsw i32 %192, %193
  store i32 %194, i32* %12, align 4
  %195 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdr, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 @SET32(%struct.ddf_meta* %195, i32 %198, i32 -1)
  %200 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** @vdr, align 8
  %202 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %205 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %204, i32 0, i32 3
  %206 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %205, align 8
  %207 = load i32, i32* %12, align 4
  %208 = call i32 @crc32(%struct.ddf_vdc_record* %206, i32 %207)
  %209 = call i32 @SET32(%struct.ddf_meta* %200, i32 %203, i32 %208)
  %210 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %211 = load i32, i32* %10, align 4
  %212 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %213 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %214 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %213, i32 0, i32 6
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @GET32(%struct.ddf_meta* %212, i32 %215)
  %217 = add nsw i32 %211, %216
  %218 = load i32, i32* %11, align 4
  %219 = mul nsw i32 %217, %218
  %220 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %221 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %220, i32 0, i32 3
  %222 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %221, align 8
  %223 = load i32, i32* %12, align 4
  %224 = call i32 @g_write_data(%struct.g_consumer* %210, i32 %219, %struct.ddf_vdc_record* %222, i32 %223)
  store i32 %224, i32* %13, align 4
  %225 = load i32, i32* %13, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %228

227:                                              ; preds = %187
  br label %88

228:                                              ; preds = %187
  %229 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @GET16(%struct.ddf_meta* %229, i32 %232)
  %234 = load i32, i32* %11, align 4
  %235 = mul nsw i32 %233, %234
  store i32 %235, i32* %12, align 4
  %236 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %237 = call i32 @GETCRNUM(%struct.ddf_meta* %236)
  store i32 %237, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %238

238:                                              ; preds = %259, %228
  %239 = load i32, i32* %14, align 4
  %240 = load i32, i32* %15, align 4
  %241 = icmp slt i32 %239, %240
  br i1 %241, label %242, label %262

242:                                              ; preds = %238
  %243 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %244 = load i32, i32* %14, align 4
  %245 = call %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta* %243, i32 %244)
  store %struct.ddf_vdc_record* %245, %struct.ddf_vdc_record** %6, align 8
  %246 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %247 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  %248 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @SET32D(%struct.ddf_meta* %246, i32 %249, i32 -1)
  %251 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %252 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  %253 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %6, align 8
  %256 = load i32, i32* %12, align 4
  %257 = call i32 @crc32(%struct.ddf_vdc_record* %255, i32 %256)
  %258 = call i32 @SET32D(%struct.ddf_meta* %251, i32 %254, i32 %257)
  br label %259

259:                                              ; preds = %242
  %260 = load i32, i32* %14, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %14, align 4
  br label %238

262:                                              ; preds = %238
  %263 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %264 = load i32, i32* %10, align 4
  %265 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %266 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %267 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %266, i32 0, i32 4
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @GET32(%struct.ddf_meta* %265, i32 %268)
  %270 = add nsw i32 %264, %269
  %271 = load i32, i32* %11, align 4
  %272 = mul nsw i32 %270, %271
  %273 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %274 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %273, i32 0, i32 2
  %275 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %274, align 8
  %276 = load i32, i32* %12, align 4
  %277 = load i32, i32* %15, align 4
  %278 = mul nsw i32 %276, %277
  %279 = call i32 @g_write_data(%struct.g_consumer* %263, i32 %272, %struct.ddf_vdc_record* %275, i32 %278)
  store i32 %279, i32* %13, align 4
  %280 = load i32, i32* %13, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %283

282:                                              ; preds = %262
  br label %88

283:                                              ; preds = %262
  %284 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %285 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %286 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %285, i32 0, i32 3
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @GET32(%struct.ddf_meta* %284, i32 %287)
  %289 = load i32, i32* %11, align 4
  %290 = mul nsw i32 %288, %289
  store i32 %290, i32* %12, align 4
  %291 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %292 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pdd, align 8
  %293 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @SET32(%struct.ddf_meta* %291, i32 %294, i32 -1)
  %296 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %297 = load %struct.TYPE_9__*, %struct.TYPE_9__** @pdd, align 8
  %298 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 4
  %300 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %301 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %300, i32 0, i32 1
  %302 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %301, align 8
  %303 = load i32, i32* %12, align 4
  %304 = call i32 @crc32(%struct.ddf_vdc_record* %302, i32 %303)
  %305 = call i32 @SET32(%struct.ddf_meta* %296, i32 %299, i32 %304)
  %306 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %307 = load i32, i32* %10, align 4
  %308 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %309 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = call i32 @GET32(%struct.ddf_meta* %308, i32 %311)
  %313 = add nsw i32 %307, %312
  %314 = load i32, i32* %11, align 4
  %315 = mul nsw i32 %313, %314
  %316 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %317 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %316, i32 0, i32 1
  %318 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %317, align 8
  %319 = load i32, i32* %12, align 4
  %320 = call i32 @g_write_data(%struct.g_consumer* %306, i32 %315, %struct.ddf_vdc_record* %318, i32 %319)
  store i32 %320, i32* %13, align 4
  %321 = load i32, i32* %13, align 4
  %322 = icmp ne i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %283
  br label %88

324:                                              ; preds = %283
  %325 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 1
  %328 = load i32, i32* %327, align 4
  %329 = call i32 @GET32(%struct.ddf_meta* %325, i32 %328)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %373

331:                                              ; preds = %324
  %332 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %333 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %334 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %333, i32 0, i32 1
  %335 = load i32, i32* %334, align 4
  %336 = call i32 @GET32(%struct.ddf_meta* %332, i32 %335)
  %337 = load i32, i32* %11, align 4
  %338 = mul nsw i32 %336, %337
  store i32 %338, i32* %12, align 4
  %339 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bbm, align 8
  %341 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @SET32(%struct.ddf_meta* %339, i32 %342, i32 -1)
  %344 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %345 = load %struct.TYPE_12__*, %struct.TYPE_12__** @bbm, align 8
  %346 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 4
  %348 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %349 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %348, i32 0, i32 0
  %350 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %349, align 8
  %351 = load i32, i32* %12, align 4
  %352 = call i32 @crc32(%struct.ddf_vdc_record* %350, i32 %351)
  %353 = call i32 @SET32(%struct.ddf_meta* %344, i32 %347, i32 %352)
  %354 = load %struct.g_consumer*, %struct.g_consumer** %3, align 8
  %355 = load i32, i32* %10, align 4
  %356 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %357 = load %struct.TYPE_10__*, %struct.TYPE_10__** @hdr, align 8
  %358 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  %360 = call i32 @GET32(%struct.ddf_meta* %356, i32 %359)
  %361 = add nsw i32 %355, %360
  %362 = load i32, i32* %11, align 4
  %363 = mul nsw i32 %361, %362
  %364 = load %struct.ddf_meta*, %struct.ddf_meta** %4, align 8
  %365 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %364, i32 0, i32 0
  %366 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %365, align 8
  %367 = load i32, i32* %12, align 4
  %368 = call i32 @g_write_data(%struct.g_consumer* %354, i32 %363, %struct.ddf_vdc_record* %366, i32 %367)
  store i32 %368, i32* %13, align 4
  %369 = load i32, i32* %13, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %331
  br label %88

372:                                              ; preds = %331
  br label %373

373:                                              ; preds = %372, %324
  br label %374

374:                                              ; preds = %373, %97
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* %8, align 4
  %377 = icmp eq i32 %375, %376
  br i1 %377, label %378, label %383

378:                                              ; preds = %374
  %379 = load i32, i32* %9, align 4
  %380 = icmp ne i32 %379, -1
  br i1 %380, label %381, label %383

381:                                              ; preds = %378
  %382 = load i32, i32* %9, align 4
  store i32 %382, i32* %10, align 4
  br label %38

383:                                              ; preds = %378, %374
  %384 = load i32, i32* %13, align 4
  ret i32 %384
}

declare dso_local i32 @GET64(%struct.ddf_meta*, i32) #1

declare dso_local i32 @SET8(%struct.ddf_meta*, i32, i32) #1

declare dso_local i32 @SET32(%struct.ddf_meta*, i32, i32) #1

declare dso_local i32 @crc32(%struct.ddf_vdc_record*, i32) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, %struct.ddf_vdc_record*, i32) #1

declare dso_local i32 @G_RAID_DEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @GET32(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GET16(%struct.ddf_meta*, i32) #1

declare dso_local i32 @GETCRNUM(%struct.ddf_meta*) #1

declare dso_local %struct.ddf_vdc_record* @GETVDCPTR(%struct.ddf_meta*, i32) #1

declare dso_local i32 @SET32D(%struct.ddf_meta*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
