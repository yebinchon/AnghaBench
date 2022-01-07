; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_apm.c_g_part_apm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_part_table = type { i32, i64 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i64 }
%struct.g_part_entry = type { i64, i32 }
%struct.g_part_apm_entry = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32 }
%struct.g_part_apm_table = type { %struct.TYPE_5__, %struct.TYPE_4__, i64 }
%struct.TYPE_5__ = type { i64, i64, i64, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@APM_ENT_SIG = common dso_local global i32 0, align 4
@APM_ENT_TYPE_UNUSED = common dso_local global i32 0, align 4
@gpe_entry = common dso_local global i32 0, align 4
@MAXPHYS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_apm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_apm_write(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_entry*, align 8
  %8 = alloca %struct.g_part_apm_entry*, align 8
  %9 = alloca %struct.g_part_apm_table*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %15 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %16 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %15, i32 0, i32 0
  %17 = load %struct.g_provider*, %struct.g_provider** %16, align 8
  store %struct.g_provider* %17, %struct.g_provider** %6, align 8
  %18 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %19 = bitcast %struct.g_part_table* %18 to %struct.g_part_apm_table*
  store %struct.g_part_apm_table* %19, %struct.g_part_apm_table** %9, align 8
  %20 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %21 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @EOPNOTSUPP, align 4
  store i32 %25, i32* %3, align 4
  br label %276

26:                                               ; preds = %2
  %27 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %28 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %72

31:                                               ; preds = %26
  %32 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %33 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* @M_WAITOK, align 4
  %36 = load i32, i32* @M_ZERO, align 4
  %37 = or i32 %35, %36
  %38 = call i8* @g_malloc(i64 %34, i32 %37)
  store i8* %38, i8** %10, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %41 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be16enc(i8* %39, i32 %43)
  %45 = load i8*, i8** %10, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  %47 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %48 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @be16enc(i8* %46, i32 %50)
  %52 = load i8*, i8** %10, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  %54 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %55 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @be32enc(i8* %53, i64 %57)
  %59 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %60 = load i8*, i8** %10, align 8
  %61 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %62 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @g_write_data(%struct.g_consumer* %59, i32 0, i8* %60, i64 %63)
  store i32 %64, i32* %13, align 4
  %65 = load i8*, i8** %10, align 8
  %66 = call i32 @g_free(i8* %65)
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %31
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %3, align 4
  br label %276

71:                                               ; preds = %31
  br label %72

72:                                               ; preds = %71, %26
  %73 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %74 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  store i64 %76, i64* %14, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %79 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = mul i64 %77, %80
  %82 = load i32, i32* @M_WAITOK, align 4
  %83 = load i32, i32* @M_ZERO, align 4
  %84 = or i32 %82, %83
  %85 = call i8* @g_malloc(i64 %81, i32 %84)
  store i8* %85, i8** %10, align 8
  %86 = load i8*, i8** %10, align 8
  %87 = load i32, i32* @APM_ENT_SIG, align 4
  %88 = call i32 @be16enc(i8* %86, i32 %87)
  %89 = load i8*, i8** %10, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 4
  %91 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %92 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @be32enc(i8* %90, i64 %94)
  %96 = load i8*, i8** %10, align 8
  %97 = getelementptr inbounds i8, i8* %96, i64 8
  %98 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %99 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @be32enc(i8* %97, i64 %101)
  %103 = load i8*, i8** %10, align 8
  %104 = getelementptr inbounds i8, i8* %103, i64 12
  %105 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %106 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @be32enc(i8* %104, i64 %108)
  %110 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %111 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 4
  %114 = load i8*, i8** %10, align 8
  %115 = getelementptr inbounds i8, i8* %114, i64 16
  %116 = call i32 @bcopy(i32 %113, i8* %115, i32 4)
  %117 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %118 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = load i8*, i8** %10, align 8
  %122 = getelementptr inbounds i8, i8* %121, i64 48
  %123 = call i32 @bcopy(i32 %120, i8* %122, i32 4)
  %124 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %125 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %124, i32 0, i32 0
  %126 = call %struct.g_part_entry* @LIST_FIRST(i32* %125)
  store %struct.g_part_entry* %126, %struct.g_part_entry** %7, align 8
  store i64 1, i64* %12, align 8
  br label %127

127:                                              ; preds = %212, %72
  %128 = load i64, i64* %12, align 8
  %129 = load i64, i64* %14, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %215

131:                                              ; preds = %127
  %132 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %133 = icmp ne %struct.g_part_entry* %132, null
  br i1 %133, label %134, label %143

134:                                              ; preds = %131
  %135 = load i64, i64* %12, align 8
  %136 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %137 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = icmp eq i64 %135, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %142 = bitcast %struct.g_part_entry* %141 to %struct.g_part_apm_entry*
  br label %144

143:                                              ; preds = %134, %131
  br label %144

144:                                              ; preds = %143, %140
  %145 = phi %struct.g_part_apm_entry* [ %142, %140 ], [ null, %143 ]
  store %struct.g_part_apm_entry* %145, %struct.g_part_apm_entry** %8, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load i64, i64* %12, align 8
  %148 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %149 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = mul i64 %147, %150
  %152 = getelementptr inbounds i8, i8* %146, i64 %151
  store i8* %152, i8** %11, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i32, i32* @APM_ENT_SIG, align 4
  %155 = call i32 @be16enc(i8* %153, i32 %154)
  %156 = load i8*, i8** %11, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 4
  %158 = load %struct.g_part_apm_table*, %struct.g_part_apm_table** %9, align 8
  %159 = getelementptr inbounds %struct.g_part_apm_table, %struct.g_part_apm_table* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = call i32 @be32enc(i8* %157, i64 %161)
  %163 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %164 = icmp ne %struct.g_part_apm_entry* %163, null
  br i1 %164, label %165, label %199

165:                                              ; preds = %144
  %166 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %167 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %199, label %170

170:                                              ; preds = %165
  %171 = load i8*, i8** %11, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 8
  %173 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %174 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = call i32 @be32enc(i8* %172, i64 %176)
  %178 = load i8*, i8** %11, align 8
  %179 = getelementptr inbounds i8, i8* %178, i64 12
  %180 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %181 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %181, i32 0, i32 1
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @be32enc(i8* %179, i64 %183)
  %185 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %186 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 4
  %189 = load i8*, i8** %11, align 8
  %190 = getelementptr inbounds i8, i8* %189, i64 16
  %191 = call i32 @bcopy(i32 %188, i8* %190, i32 4)
  %192 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %193 = getelementptr inbounds %struct.g_part_apm_entry, %struct.g_part_apm_entry* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i8*, i8** %11, align 8
  %197 = getelementptr inbounds i8, i8* %196, i64 48
  %198 = call i32 @bcopy(i32 %195, i8* %197, i32 4)
  br label %204

199:                                              ; preds = %165, %144
  %200 = load i8*, i8** %11, align 8
  %201 = getelementptr inbounds i8, i8* %200, i64 48
  %202 = load i32, i32* @APM_ENT_TYPE_UNUSED, align 4
  %203 = call i32 @strcpy(i8* %201, i32 %202)
  br label %204

204:                                              ; preds = %199, %170
  %205 = load %struct.g_part_apm_entry*, %struct.g_part_apm_entry** %8, align 8
  %206 = icmp ne %struct.g_part_apm_entry* %205, null
  br i1 %206, label %207, label %211

207:                                              ; preds = %204
  %208 = load %struct.g_part_entry*, %struct.g_part_entry** %7, align 8
  %209 = load i32, i32* @gpe_entry, align 4
  %210 = call %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry* %208, i32 %209)
  store %struct.g_part_entry* %210, %struct.g_part_entry** %7, align 8
  br label %211

211:                                              ; preds = %207, %204
  br label %212

212:                                              ; preds = %211
  %213 = load i64, i64* %12, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %12, align 8
  br label %127

215:                                              ; preds = %127
  store i64 0, i64* %12, align 8
  br label %216

216:                                              ; preds = %265, %215
  %217 = load i64, i64* %12, align 8
  %218 = load i64, i64* %14, align 8
  %219 = icmp ult i64 %217, %218
  br i1 %219, label %220, label %273

220:                                              ; preds = %216
  %221 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %222 = load i64, i64* %12, align 8
  %223 = add i64 1, %222
  %224 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %225 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = mul i64 %223, %226
  %228 = trunc i64 %227 to i32
  %229 = load i8*, i8** %10, align 8
  %230 = load i64, i64* %12, align 8
  %231 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %232 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = mul i64 %230, %233
  %235 = getelementptr inbounds i8, i8* %229, i64 %234
  %236 = load i64, i64* %14, align 8
  %237 = load i64, i64* %12, align 8
  %238 = sub i64 %236, %237
  %239 = load i64, i64* @MAXPHYS, align 8
  %240 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %241 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = udiv i64 %239, %242
  %244 = icmp ugt i64 %238, %243
  br i1 %244, label %245, label %247

245:                                              ; preds = %220
  %246 = load i64, i64* @MAXPHYS, align 8
  br label %255

247:                                              ; preds = %220
  %248 = load i64, i64* %14, align 8
  %249 = load i64, i64* %12, align 8
  %250 = sub i64 %248, %249
  %251 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %252 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = mul i64 %250, %253
  br label %255

255:                                              ; preds = %247, %245
  %256 = phi i64 [ %246, %245 ], [ %254, %247 ]
  %257 = call i32 @g_write_data(%struct.g_consumer* %221, i32 %228, i8* %235, i64 %256)
  store i32 %257, i32* %13, align 4
  %258 = load i32, i32* %13, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %255
  %261 = load i8*, i8** %10, align 8
  %262 = call i32 @g_free(i8* %261)
  %263 = load i32, i32* %13, align 4
  store i32 %263, i32* %3, align 4
  br label %276

264:                                              ; preds = %255
  br label %265

265:                                              ; preds = %264
  %266 = load i64, i64* @MAXPHYS, align 8
  %267 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %268 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %267, i32 0, i32 0
  %269 = load i64, i64* %268, align 8
  %270 = udiv i64 %266, %269
  %271 = load i64, i64* %12, align 8
  %272 = add i64 %271, %270
  store i64 %272, i64* %12, align 8
  br label %216

273:                                              ; preds = %216
  %274 = load i8*, i8** %10, align 8
  %275 = call i32 @g_free(i8* %274)
  store i32 0, i32* %3, align 4
  br label %276

276:                                              ; preds = %273, %260, %69, %24
  %277 = load i32, i32* %3, align 4
  ret i32 %277
}

declare dso_local i8* @g_malloc(i64, i32) #1

declare dso_local i32 @be16enc(i8*, i32) #1

declare dso_local i32 @be32enc(i8*, i64) #1

declare dso_local i32 @g_write_data(%struct.g_consumer*, i32, i8*, i64) #1

declare dso_local i32 @g_free(i8*) #1

declare dso_local i32 @bcopy(i32, i8*, i32) #1

declare dso_local %struct.g_part_entry* @LIST_FIRST(i32*) #1

declare dso_local i32 @strcpy(i8*, i32) #1

declare dso_local %struct.g_part_entry* @LIST_NEXT(%struct.g_part_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
