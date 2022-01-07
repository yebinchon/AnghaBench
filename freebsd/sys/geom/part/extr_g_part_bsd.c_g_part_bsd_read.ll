; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/part/extr_g_part_bsd.c_g_part_bsd_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.g_part_table = type { i32, i32, i32, i32, i32, i64, i32 }
%struct.g_consumer = type { %struct.g_provider* }
%struct.g_provider = type { i32, i32, i8* }
%struct.g_part_bsd_table = type { i8**, i32 }
%struct.g_part_entry = type { i32 }
%struct.g_part_bsd_entry = type { %struct.partition }
%struct.partition = type { i32, i32, i8*, i8*, i8*, i8* }

@UINT32_MAX = common dso_local global i32 0, align 4
@BBSIZE = common dso_local global i32 0, align 4
@g_part_bsd_scheme = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@RAW_PART = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"GEOM: %s: invalid disklabel.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_part_table*, %struct.g_consumer*)* @g_part_bsd_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_part_bsd_read(%struct.g_part_table* %0, %struct.g_consumer* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_part_table*, align 8
  %5 = alloca %struct.g_consumer*, align 8
  %6 = alloca %struct.g_provider*, align 8
  %7 = alloca %struct.g_part_bsd_table*, align 8
  %8 = alloca %struct.g_part_entry*, align 8
  %9 = alloca %struct.g_part_bsd_entry*, align 8
  %10 = alloca %struct.partition, align 8
  %11 = alloca i8**, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.g_part_table* %0, %struct.g_part_table** %4, align 8
  store %struct.g_consumer* %1, %struct.g_consumer** %5, align 8
  %19 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %20 = getelementptr inbounds %struct.g_consumer, %struct.g_consumer* %19, i32 0, i32 0
  %21 = load %struct.g_provider*, %struct.g_provider** %20, align 8
  store %struct.g_provider* %21, %struct.g_provider** %6, align 8
  %22 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %23 = bitcast %struct.g_part_table* %22 to %struct.g_part_bsd_table*
  store %struct.g_part_bsd_table* %23, %struct.g_part_bsd_table** %7, align 8
  %24 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %25 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %28 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = sdiv i32 %26, %29
  %31 = load i32, i32* @UINT32_MAX, align 4
  %32 = call i32 @MIN(i32 %30, i32 %31)
  store i32 %32, i32* %14, align 4
  %33 = load %struct.g_consumer*, %struct.g_consumer** %5, align 8
  %34 = load i32, i32* @BBSIZE, align 4
  %35 = call i8** @g_read_data(%struct.g_consumer* %33, i32 0, i32 %34, i32* %17)
  %36 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %37 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %36, i32 0, i32 0
  store i8** %35, i8*** %37, align 8
  %38 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %39 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %38, i32 0, i32 0
  %40 = load i8**, i8*** %39, align 8
  %41 = icmp eq i8** %40, null
  br i1 %41, label %42, label %44

42:                                               ; preds = %2
  %43 = load i32, i32* %17, align 4
  store i32 %43, i32* %3, align 4
  br label %296

44:                                               ; preds = %2
  %45 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %46 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %45, i32 0, i32 0
  %47 = load i8**, i8*** %46, align 8
  %48 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %49 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %47, i64 %51
  store i8** %52, i8*** %11, align 8
  %53 = load i8**, i8*** %11, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 40
  %55 = call i8* @le32dec(i8** %54)
  %56 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %57 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = inttoptr i64 %59 to i8*
  %61 = icmp ne i8* %55, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %44
  br label %284

63:                                               ; preds = %44
  %64 = load i8**, i8*** %11, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 44
  %66 = call i8* @le32dec(i8** %65)
  %67 = ptrtoint i8* %66 to i32
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp slt i32 %68, 1
  br i1 %69, label %73, label %70

70:                                               ; preds = %63
  %71 = load i32, i32* %15, align 4
  %72 = icmp sgt i32 %71, 255
  br i1 %72, label %73, label %74

73:                                               ; preds = %70, %63
  br label %284

74:                                               ; preds = %70
  %75 = load i32, i32* %15, align 4
  %76 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %77 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %99

80:                                               ; preds = %74
  %81 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %82 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %99, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %14, align 4
  %87 = load i32, i32* %15, align 4
  %88 = call i32 @g_part_geometry_heads(i32 %86, i32 %87, i32* %13, i32* %16)
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %85
  %92 = load i32, i32* %15, align 4
  %93 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %94 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %93, i32 0, i32 0
  store i32 %92, i32* %94, align 8
  %95 = load i32, i32* %16, align 4
  %96 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %97 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  br label %98

98:                                               ; preds = %91, %85
  br label %99

99:                                               ; preds = %98, %80, %74
  %100 = load i8**, i8*** %11, align 8
  %101 = getelementptr inbounds i8*, i8** %100, i64 48
  %102 = call i8* @le32dec(i8** %101)
  %103 = ptrtoint i8* %102 to i32
  store i32 %103, i32* %16, align 4
  %104 = load i32, i32* %16, align 4
  %105 = icmp slt i32 %104, 1
  br i1 %105, label %109, label %106

106:                                              ; preds = %99
  %107 = load i32, i32* %16, align 4
  %108 = icmp sgt i32 %107, 255
  br i1 %108, label %109, label %110

109:                                              ; preds = %106, %99
  br label %284

110:                                              ; preds = %106
  %111 = load i32, i32* %16, align 4
  %112 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %113 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp ne i32 %111, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %110
  %117 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %118 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %117, i32 0, i32 6
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %125, label %121

121:                                              ; preds = %116
  %122 = load i32, i32* %16, align 4
  %123 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %124 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  br label %125

125:                                              ; preds = %121, %116, %110
  %126 = load i8**, i8*** %11, align 8
  %127 = getelementptr inbounds i8*, i8** %126, i64 60
  %128 = call i8* @le32dec(i8** %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %13, align 4
  %130 = load i32, i32* %13, align 4
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %132, label %133

132:                                              ; preds = %125
  br label %284

133:                                              ; preds = %125
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* %14, align 4
  %136 = icmp sgt i32 %134, %135
  br i1 %136, label %137, label %143

137:                                              ; preds = %133
  %138 = load i32, i32* %14, align 4
  store i32 %138, i32* %13, align 4
  %139 = load i8**, i8*** %11, align 8
  %140 = getelementptr inbounds i8*, i8** %139, i64 60
  %141 = load i32, i32* %14, align 4
  %142 = call i32 @le32enc(i8** %140, i32 %141)
  br label %143

143:                                              ; preds = %137, %133
  %144 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %145 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %144, i32 0, i32 5
  store i64 0, i64* %145, align 8
  %146 = load i32, i32* %14, align 4
  %147 = sub nsw i32 %146, 1
  %148 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %149 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %148, i32 0, i32 2
  store i32 %147, i32* %149, align 8
  %150 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %151 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %150, i32 0, i32 3
  store i32 1, i32* %151, align 4
  %152 = load i8**, i8*** %11, align 8
  %153 = getelementptr inbounds i8*, i8** %152, i64 138
  %154 = call i8* @le16dec(i8** %153)
  %155 = ptrtoint i8* %154 to i32
  %156 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %157 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %156, i32 0, i32 4
  store i32 %155, i32* %157, align 8
  %158 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %159 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %158, i32 0, i32 4
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_part_bsd_scheme, i32 0, i32 0), align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %143
  %164 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %165 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %164, i32 0, i32 4
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @g_part_bsd_scheme, i32 0, i32 1), align 4
  %168 = icmp sgt i32 %166, %167
  br i1 %168, label %169, label %170

169:                                              ; preds = %163, %143
  br label %284

170:                                              ; preds = %163
  %171 = load i8**, i8*** %11, align 8
  %172 = getelementptr inbounds i8*, i8** %171, i64 148
  %173 = load i32, i32* @RAW_PART, align 4
  %174 = mul nsw i32 %173, 16
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %172, i64 %175
  %177 = getelementptr inbounds i8*, i8** %176, i64 4
  %178 = call i8* @le32dec(i8** %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %181 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %180, i32 0, i32 1
  store i32 %179, i32* %181, align 8
  %182 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %183 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = sub nsw i32 %184, 1
  store i32 %185, i32* %18, align 4
  br label %186

186:                                              ; preds = %280, %170
  %187 = load i32, i32* %18, align 4
  %188 = icmp sge i32 %187, 0
  br i1 %188, label %189, label %283

189:                                              ; preds = %186
  %190 = load i8**, i8*** %11, align 8
  %191 = getelementptr inbounds i8*, i8** %190, i64 148
  %192 = load i32, i32* %18, align 4
  %193 = mul nsw i32 %192, 16
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i8*, i8** %191, i64 %194
  store i8** %195, i8*** %12, align 8
  %196 = load i8**, i8*** %12, align 8
  %197 = getelementptr inbounds i8*, i8** %196, i64 0
  %198 = call i8* @le32dec(i8** %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 0
  store i32 %199, i32* %200, align 8
  %201 = load i8**, i8*** %12, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i64 4
  %203 = call i8* @le32dec(i8** %202)
  %204 = ptrtoint i8* %203 to i32
  %205 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 1
  store i32 %204, i32* %205, align 4
  %206 = load i8**, i8*** %12, align 8
  %207 = getelementptr inbounds i8*, i8** %206, i64 8
  %208 = call i8* @le32dec(i8** %207)
  %209 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 5
  store i8* %208, i8** %209, align 8
  %210 = load i8**, i8*** %12, align 8
  %211 = getelementptr inbounds i8*, i8** %210, i64 12
  %212 = load i8*, i8** %211, align 8
  %213 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 4
  store i8* %212, i8** %213, align 8
  %214 = load i8**, i8*** %12, align 8
  %215 = getelementptr inbounds i8*, i8** %214, i64 13
  %216 = load i8*, i8** %215, align 8
  %217 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 3
  store i8* %216, i8** %217, align 8
  %218 = load i8**, i8*** %12, align 8
  %219 = getelementptr inbounds i8*, i8** %218, i64 14
  %220 = call i8* @le16dec(i8** %219)
  %221 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 2
  store i8* %220, i8** %221, align 8
  %222 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = icmp eq i32 %223, 0
  br i1 %224, label %225, label %226

225:                                              ; preds = %189
  br label %280

226:                                              ; preds = %189
  %227 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %230 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 8
  %232 = icmp slt i32 %228, %231
  br i1 %232, label %233, label %234

233:                                              ; preds = %226
  br label %280

234:                                              ; preds = %226
  %235 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 1
  %236 = load i32, i32* %235, align 4
  %237 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %238 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = sub nsw i32 %236, %239
  %241 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %242 = getelementptr inbounds %struct.g_part_table, %struct.g_part_table* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp sgt i32 %240, %243
  br i1 %244, label %245, label %246

245:                                              ; preds = %234
  br label %284

246:                                              ; preds = %234
  %247 = load %struct.g_part_table*, %struct.g_part_table** %4, align 8
  %248 = load i32, i32* %18, align 4
  %249 = add nsw i32 %248, 1
  %250 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 1
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %253 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 8
  %255 = sub nsw i32 %251, %254
  %256 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %259 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 8
  %261 = sub nsw i32 %257, %260
  %262 = getelementptr inbounds %struct.partition, %struct.partition* %10, i32 0, i32 0
  %263 = load i32, i32* %262, align 8
  %264 = add nsw i32 %261, %263
  %265 = sub nsw i32 %264, 1
  %266 = call %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table* %247, i32 %249, i32 %255, i32 %265)
  store %struct.g_part_entry* %266, %struct.g_part_entry** %8, align 8
  %267 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %268 = bitcast %struct.g_part_entry* %267 to %struct.g_part_bsd_entry*
  store %struct.g_part_bsd_entry* %268, %struct.g_part_bsd_entry** %9, align 8
  %269 = load %struct.g_part_bsd_entry*, %struct.g_part_bsd_entry** %9, align 8
  %270 = getelementptr inbounds %struct.g_part_bsd_entry, %struct.g_part_bsd_entry* %269, i32 0, i32 0
  %271 = bitcast %struct.partition* %270 to i8*
  %272 = bitcast %struct.partition* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %271, i8* align 8 %272, i64 40, i1 false)
  %273 = load i32, i32* %18, align 4
  %274 = load i32, i32* @RAW_PART, align 4
  %275 = icmp eq i32 %273, %274
  br i1 %275, label %276, label %279

276:                                              ; preds = %246
  %277 = load %struct.g_part_entry*, %struct.g_part_entry** %8, align 8
  %278 = getelementptr inbounds %struct.g_part_entry, %struct.g_part_entry* %277, i32 0, i32 0
  store i32 1, i32* %278, align 4
  br label %279

279:                                              ; preds = %276, %246
  br label %280

280:                                              ; preds = %279, %233, %225
  %281 = load i32, i32* %18, align 4
  %282 = add nsw i32 %281, -1
  store i32 %282, i32* %18, align 4
  br label %186

283:                                              ; preds = %186
  store i32 0, i32* %3, align 4
  br label %296

284:                                              ; preds = %245, %169, %132, %109, %73, %62
  %285 = load %struct.g_provider*, %struct.g_provider** %6, align 8
  %286 = getelementptr inbounds %struct.g_provider, %struct.g_provider* %285, i32 0, i32 2
  %287 = load i8*, i8** %286, align 8
  %288 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8* %287)
  %289 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %290 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %289, i32 0, i32 0
  %291 = load i8**, i8*** %290, align 8
  %292 = call i32 @g_free(i8** %291)
  %293 = load %struct.g_part_bsd_table*, %struct.g_part_bsd_table** %7, align 8
  %294 = getelementptr inbounds %struct.g_part_bsd_table, %struct.g_part_bsd_table* %293, i32 0, i32 0
  store i8** null, i8*** %294, align 8
  %295 = load i32, i32* @EINVAL, align 4
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %284, %283, %42
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i8** @g_read_data(%struct.g_consumer*, i32, i32, i32*) #1

declare dso_local i8* @le32dec(i8**) #1

declare dso_local i32 @g_part_geometry_heads(i32, i32, i32*, i32*) #1

declare dso_local i32 @le32enc(i8**, i32) #1

declare dso_local i8* @le16dec(i8**) #1

declare dso_local %struct.g_part_entry* @g_part_new_entry(%struct.g_part_table*, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @g_free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
