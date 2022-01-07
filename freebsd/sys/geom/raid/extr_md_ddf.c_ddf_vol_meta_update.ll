; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_vol_meta_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/raid/extr_md_ddf.c_ddf_vol_meta_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ddf_vol_meta = type { i32, %struct.ddf_vdc_record**, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, i32, %struct.TYPE_4__* }
%struct.ddf_vdc_record = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.ddf_vdc_record* }
%struct.ddf_meta = type { i32, %struct.ddf_vdc_record**, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, %struct.ddf_vdc_record*, i32, %struct.TYPE_4__* }
%struct.ddf_vd_entry = type { i32, i32, i32 }

@hdr = common dso_local global %struct.TYPE_5__* null, align 8
@bvdc = common dso_local global %struct.TYPE_6__** null, align 8
@M_MD_DDF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ddf_vol_meta*, %struct.ddf_meta*, i32*, i32)* @ddf_vol_meta_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ddf_vol_meta_update(%struct.ddf_vol_meta* %0, %struct.ddf_meta* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.ddf_vol_meta*, align 8
  %6 = alloca %struct.ddf_meta*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ddf_vd_entry*, align 8
  %10 = alloca %struct.ddf_vdc_record*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.ddf_vol_meta* %0, %struct.ddf_vol_meta** %5, align 8
  store %struct.ddf_meta* %1, %struct.ddf_meta** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %17 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %16, i32 0, i32 7
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %19, align 8
  %21 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %22 = bitcast %struct.ddf_meta* %21 to %struct.ddf_vol_meta*
  %23 = load i32*, i32** %7, align 8
  %24 = call i64 @ddf_meta_find_vd(%struct.ddf_vol_meta* %22, i32* %23)
  %25 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %20, i64 %24
  %26 = bitcast %struct.ddf_vdc_record* %25 to %struct.ddf_vd_entry*
  store %struct.ddf_vd_entry* %26, %struct.ddf_vd_entry** %9, align 8
  %27 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %28 = bitcast %struct.ddf_meta* %27 to %struct.ddf_vol_meta*
  %29 = load i32*, i32** %7, align 8
  %30 = call %struct.ddf_vdc_record* @ddf_meta_find_vdc(%struct.ddf_vol_meta* %28, i32* %29)
  store %struct.ddf_vdc_record* %30, %struct.ddf_vdc_record** %10, align 8
  %31 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %32 = bitcast %struct.ddf_meta* %31 to %struct.ddf_vol_meta*
  %33 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %10, align 8
  %34 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @GET8D(%struct.ddf_vol_meta* %32, i32 %35)
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %4
  store i32 0, i32* %13, align 4
  br label %46

39:                                               ; preds = %4
  %40 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %41 = bitcast %struct.ddf_meta* %40 to %struct.ddf_vol_meta*
  %42 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %10, align 8
  %43 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @GET8D(%struct.ddf_vol_meta* %41, i32 %44)
  store i32 %45, i32* %13, align 4
  br label %46

46:                                               ; preds = %39, %38
  %47 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %48 = bitcast %struct.ddf_meta* %47 to %struct.ddf_vol_meta*
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hdr, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @GET16(%struct.ddf_vol_meta* %48, i32 %51)
  %53 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %54 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %52, %55
  store i32 %56, i32* %14, align 4
  %57 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %58 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %57, i32 0, i32 2
  %59 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %58, align 8
  %60 = icmp eq %struct.ddf_vdc_record* %59, null
  br i1 %60, label %79, label %61

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %80, label %64

64:                                               ; preds = %61
  %65 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %66 = bitcast %struct.ddf_meta* %65 to %struct.ddf_vol_meta*
  %67 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %10, align 8
  %68 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @GET32D(%struct.ddf_vol_meta* %66, i32 %69)
  %71 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %72 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %10, align 8
  %73 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @GET32(%struct.ddf_vol_meta* %71, i32 %74)
  %76 = sub nsw i32 %70, %75
  %77 = sext i32 %76 to i64
  %78 = icmp sgt i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %64, %46
  store i32 1, i32* %11, align 4
  br label %81

80:                                               ; preds = %64, %61
  store i32 0, i32* %11, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %83 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %82, i32 0, i32 1
  %84 = load %struct.ddf_vdc_record**, %struct.ddf_vdc_record*** %83, align 8
  %85 = load i32, i32* %13, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %84, i64 %86
  %88 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %87, align 8
  %89 = icmp eq %struct.ddf_vdc_record* %88, null
  br i1 %89, label %112, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %113, label %93

93:                                               ; preds = %90
  %94 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %95 = bitcast %struct.ddf_meta* %94 to %struct.ddf_vol_meta*
  %96 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %10, align 8
  %97 = getelementptr inbounds %struct.ddf_vdc_record, %struct.ddf_vdc_record* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @GET32D(%struct.ddf_vol_meta* %95, i32 %98)
  %100 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %101 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @bvdc, align 8
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %101, i64 %103
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @GET32(%struct.ddf_vol_meta* %100, i32 %107)
  %109 = sub nsw i32 %99, %108
  %110 = sext i32 %109 to i64
  %111 = icmp sgt i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %93, %81
  store i32 1, i32* %12, align 4
  br label %114

113:                                              ; preds = %93, %90
  store i32 0, i32* %12, align 4
  br label %114

114:                                              ; preds = %113, %112
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %241

117:                                              ; preds = %114
  %118 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %119 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %118, i32 0, i32 6
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %122 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %121, i32 0, i32 6
  store i32 %120, i32* %122, align 8
  %123 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %124 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %127 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  store i32 %125, i32* %15, align 4
  %128 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %129 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %128, i32 0, i32 5
  %130 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %129, align 8
  %131 = icmp ne %struct.ddf_vdc_record* %130, null
  br i1 %131, label %132, label %138

132:                                              ; preds = %117
  %133 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %134 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %133, i32 0, i32 5
  %135 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %134, align 8
  %136 = load i32, i32* @M_MD_DDF, align 4
  %137 = call i32 @free(%struct.ddf_vdc_record* %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %117
  %139 = load i32, i32* %15, align 4
  %140 = load i32, i32* @M_MD_DDF, align 4
  %141 = load i32, i32* @M_WAITOK, align 4
  %142 = call i8* @malloc(i32 %139, i32 %140, i32 %141)
  %143 = bitcast i8* %142 to %struct.ddf_vdc_record*
  %144 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %145 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %144, i32 0, i32 5
  store %struct.ddf_vdc_record* %143, %struct.ddf_vdc_record** %145, align 8
  %146 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %147 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %146, i32 0, i32 5
  %148 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %147, align 8
  %149 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %150 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %149, i32 0, i32 5
  %151 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %150, align 8
  %152 = load i32, i32* %15, align 4
  %153 = call i32 @memcpy(%struct.ddf_vdc_record* %148, %struct.ddf_vdc_record* %151, i32 %152)
  %154 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %155 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %154, i32 0, i32 4
  %156 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %155, align 8
  %157 = icmp ne %struct.ddf_vdc_record* %156, null
  br i1 %157, label %158, label %164

158:                                              ; preds = %138
  %159 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %160 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %159, i32 0, i32 4
  %161 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %160, align 8
  %162 = load i32, i32* @M_MD_DDF, align 4
  %163 = call i32 @free(%struct.ddf_vdc_record* %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %138
  %165 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %166 = bitcast %struct.ddf_meta* %165 to %struct.ddf_vol_meta*
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hdr, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @GET32(%struct.ddf_vol_meta* %166, i32 %169)
  %171 = load i32, i32* %15, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load i32, i32* @M_MD_DDF, align 4
  %174 = load i32, i32* @M_WAITOK, align 4
  %175 = call i8* @malloc(i32 %172, i32 %173, i32 %174)
  %176 = bitcast i8* %175 to %struct.ddf_vdc_record*
  %177 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %178 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %177, i32 0, i32 4
  store %struct.ddf_vdc_record* %176, %struct.ddf_vdc_record** %178, align 8
  %179 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %180 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %179, i32 0, i32 4
  %181 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %180, align 8
  %182 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %183 = getelementptr inbounds %struct.ddf_meta, %struct.ddf_meta* %182, i32 0, i32 4
  %184 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %183, align 8
  %185 = load %struct.ddf_meta*, %struct.ddf_meta** %6, align 8
  %186 = bitcast %struct.ddf_meta* %185 to %struct.ddf_vol_meta*
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** @hdr, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @GET32(%struct.ddf_vol_meta* %186, i32 %189)
  %191 = load i32, i32* %15, align 4
  %192 = mul nsw i32 %190, %191
  %193 = call i32 @memcpy(%struct.ddf_vdc_record* %181, %struct.ddf_vdc_record* %184, i32 %192)
  %194 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %195 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %194, i32 0, i32 3
  %196 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %195, align 8
  %197 = icmp ne %struct.ddf_vdc_record* %196, null
  br i1 %197, label %198, label %204

198:                                              ; preds = %164
  %199 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %200 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %199, i32 0, i32 3
  %201 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %200, align 8
  %202 = load i32, i32* @M_MD_DDF, align 4
  %203 = call i32 @free(%struct.ddf_vdc_record* %201, i32 %202)
  br label %204

204:                                              ; preds = %198, %164
  %205 = load i32, i32* @M_MD_DDF, align 4
  %206 = load i32, i32* @M_WAITOK, align 4
  %207 = call i8* @malloc(i32 12, i32 %205, i32 %206)
  %208 = bitcast i8* %207 to %struct.ddf_vdc_record*
  %209 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %210 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %209, i32 0, i32 3
  store %struct.ddf_vdc_record* %208, %struct.ddf_vdc_record** %210, align 8
  %211 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %212 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %211, i32 0, i32 3
  %213 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %212, align 8
  %214 = load %struct.ddf_vd_entry*, %struct.ddf_vd_entry** %9, align 8
  %215 = bitcast %struct.ddf_vd_entry* %214 to %struct.ddf_vdc_record*
  %216 = call i32 @memcpy(%struct.ddf_vdc_record* %213, %struct.ddf_vdc_record* %215, i32 12)
  %217 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %218 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %217, i32 0, i32 2
  %219 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %218, align 8
  %220 = icmp ne %struct.ddf_vdc_record* %219, null
  br i1 %220, label %221, label %227

221:                                              ; preds = %204
  %222 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %223 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %222, i32 0, i32 2
  %224 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %223, align 8
  %225 = load i32, i32* @M_MD_DDF, align 4
  %226 = call i32 @free(%struct.ddf_vdc_record* %224, i32 %225)
  br label %227

227:                                              ; preds = %221, %204
  %228 = load i32, i32* %14, align 4
  %229 = load i32, i32* @M_MD_DDF, align 4
  %230 = load i32, i32* @M_WAITOK, align 4
  %231 = call i8* @malloc(i32 %228, i32 %229, i32 %230)
  %232 = bitcast i8* %231 to %struct.ddf_vdc_record*
  %233 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %234 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %233, i32 0, i32 2
  store %struct.ddf_vdc_record* %232, %struct.ddf_vdc_record** %234, align 8
  %235 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %236 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %235, i32 0, i32 2
  %237 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %236, align 8
  %238 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %10, align 8
  %239 = load i32, i32* %14, align 4
  %240 = call i32 @memcpy(%struct.ddf_vdc_record* %237, %struct.ddf_vdc_record* %238, i32 %239)
  br label %241

241:                                              ; preds = %227, %114
  %242 = load i32, i32* %12, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %285

244:                                              ; preds = %241
  %245 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %246 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %245, i32 0, i32 1
  %247 = load %struct.ddf_vdc_record**, %struct.ddf_vdc_record*** %246, align 8
  %248 = load i32, i32* %13, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %247, i64 %249
  %251 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %250, align 8
  %252 = icmp ne %struct.ddf_vdc_record* %251, null
  br i1 %252, label %253, label %263

253:                                              ; preds = %244
  %254 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %255 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %254, i32 0, i32 1
  %256 = load %struct.ddf_vdc_record**, %struct.ddf_vdc_record*** %255, align 8
  %257 = load i32, i32* %13, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %256, i64 %258
  %260 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %259, align 8
  %261 = load i32, i32* @M_MD_DDF, align 4
  %262 = call i32 @free(%struct.ddf_vdc_record* %260, i32 %261)
  br label %263

263:                                              ; preds = %253, %244
  %264 = load i32, i32* %14, align 4
  %265 = load i32, i32* @M_MD_DDF, align 4
  %266 = load i32, i32* @M_WAITOK, align 4
  %267 = call i8* @malloc(i32 %264, i32 %265, i32 %266)
  %268 = bitcast i8* %267 to %struct.ddf_vdc_record*
  %269 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %270 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %269, i32 0, i32 1
  %271 = load %struct.ddf_vdc_record**, %struct.ddf_vdc_record*** %270, align 8
  %272 = load i32, i32* %13, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %271, i64 %273
  store %struct.ddf_vdc_record* %268, %struct.ddf_vdc_record** %274, align 8
  %275 = load %struct.ddf_vol_meta*, %struct.ddf_vol_meta** %5, align 8
  %276 = getelementptr inbounds %struct.ddf_vol_meta, %struct.ddf_vol_meta* %275, i32 0, i32 1
  %277 = load %struct.ddf_vdc_record**, %struct.ddf_vdc_record*** %276, align 8
  %278 = load i32, i32* %13, align 4
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %277, i64 %279
  %281 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %280, align 8
  %282 = load %struct.ddf_vdc_record*, %struct.ddf_vdc_record** %10, align 8
  %283 = load i32, i32* %14, align 4
  %284 = call i32 @memcpy(%struct.ddf_vdc_record* %281, %struct.ddf_vdc_record* %282, i32 %283)
  br label %285

285:                                              ; preds = %263, %241
  ret void
}

declare dso_local i64 @ddf_meta_find_vd(%struct.ddf_vol_meta*, i32*) #1

declare dso_local %struct.ddf_vdc_record* @ddf_meta_find_vdc(%struct.ddf_vol_meta*, i32*) #1

declare dso_local i32 @GET8D(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @GET16(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @GET32D(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @GET32(%struct.ddf_vol_meta*, i32) #1

declare dso_local i32 @free(%struct.ddf_vdc_record*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.ddf_vdc_record*, %struct.ddf_vdc_record*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
