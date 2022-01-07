; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_reuse_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_write_reuse_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.hashfile = type { i32 }
%struct.object_entry = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.packed_git = type { i32 }
%struct.pack_window = type { i32 }
%struct.revindex_entry = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }

@MAX_PACK_OBJECT_HEADER = common dso_local global i32 0, align 4
@the_hash_algo = common dso_local global %struct.TYPE_9__* null, align 8
@allow_ofs_delta = common dso_local global i64 0, align 8
@OBJ_OFS_DELTA = common dso_local global i32 0, align 4
@OBJ_REF_DELTA = common dso_local global i32 0, align 4
@pack_to_stdout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"bad packed object CRC for %s\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"corrupt packed object for %s\00", align 1
@reused_delta = common dso_local global i32 0, align 4
@reused = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hashfile*, %struct.object_entry*, i64, i32)* @write_reuse_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_reuse_object(%struct.hashfile* %0, %struct.object_entry* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hashfile*, align 8
  %7 = alloca %struct.object_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.packed_git*, align 8
  %11 = alloca %struct.pack_window*, align 8
  %12 = alloca %struct.revindex_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %6, align 8
  store %struct.object_entry* %1, %struct.object_entry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %25 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %26 = call %struct.packed_git* @IN_PACK(%struct.object_entry* %25)
  store %struct.packed_git* %26, %struct.packed_git** %10, align 8
  store %struct.pack_window* null, %struct.pack_window** %11, align 8
  %27 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %28 = call i32 @oe_type(%struct.object_entry* %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* @MAX_PACK_OBJECT_HEADER, align 4
  %30 = zext i32 %29 to i64
  %31 = call i8* @llvm.stacksave()
  store i8* %31, i8** %16, align 8
  %32 = alloca i8, i64 %30, align 16
  store i64 %30, i64* %17, align 8
  %33 = load i32, i32* @MAX_PACK_OBJECT_HEADER, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i8, i64 %34, align 16
  store i64 %34, i64* %18, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** @the_hash_algo, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %20, align 4
  %39 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %40 = call i64 @SIZE(%struct.object_entry* %39)
  store i64 %40, i64* %21, align 8
  %41 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %42 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %41)
  %43 = icmp ne %struct.TYPE_10__* %42, null
  br i1 %43, label %44, label %60

44:                                               ; preds = %4
  %45 = load i64, i64* @allow_ofs_delta, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %44
  %48 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %49 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %48)
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* @OBJ_OFS_DELTA, align 4
  br label %58

56:                                               ; preds = %47, %44
  %57 = load i32, i32* @OBJ_REF_DELTA, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  store i32 %59, i32* %14, align 4
  br label %60

60:                                               ; preds = %58, %4
  %61 = trunc i64 %30 to i32
  %62 = load i32, i32* %14, align 4
  %63 = load i64, i64* %21, align 8
  %64 = call i32 @encode_in_pack_object_header(i8* %32, i32 %61, i32 %62, i64 %63)
  store i32 %64, i32* %19, align 4
  %65 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %66 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %13, align 4
  %68 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call %struct.revindex_entry* @find_pack_revindex(%struct.packed_git* %68, i32 %69)
  store %struct.revindex_entry* %70, %struct.revindex_entry** %12, align 8
  %71 = load %struct.revindex_entry*, %struct.revindex_entry** %12, align 8
  %72 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %71, i64 1
  %73 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %13, align 4
  %76 = sub nsw i32 %74, %75
  store i32 %76, i32* %15, align 4
  %77 = load i32, i32* @pack_to_stdout, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %106, label %79

79:                                               ; preds = %60
  %80 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %81 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %82, 1
  br i1 %83, label %84, label %106

84:                                               ; preds = %79
  %85 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load %struct.revindex_entry*, %struct.revindex_entry** %12, align 8
  %89 = getelementptr inbounds %struct.revindex_entry, %struct.revindex_entry* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @check_pack_crc(%struct.packed_git* %85, %struct.pack_window** %11, i32 %86, i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %84
  %94 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %95 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %96 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 1
  %98 = call i32 @oid_to_hex(i32* %97)
  %99 = call i32 @error(i32 %94, i32 %98)
  %100 = call i32 @unuse_pack(%struct.pack_window** %11)
  %101 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %102 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %103 = load i64, i64* %8, align 8
  %104 = load i32, i32* %9, align 4
  %105 = call i32 @write_no_reuse_object(%struct.hashfile* %101, %struct.object_entry* %102, i64 %103, i32 %104)
  store i32 %105, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %292

106:                                              ; preds = %84, %79, %60
  %107 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %108 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %13, align 4
  %111 = add nsw i32 %110, %109
  store i32 %111, i32* %13, align 4
  %112 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %113 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load i32, i32* %15, align 4
  %116 = sub nsw i32 %115, %114
  store i32 %116, i32* %15, align 4
  %117 = load i32, i32* @pack_to_stdout, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %144, label %119

119:                                              ; preds = %106
  %120 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %121 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %144

124:                                              ; preds = %119
  %125 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load i64, i64* %21, align 8
  %129 = call i64 @check_pack_inflate(%struct.packed_git* %125, %struct.pack_window** %11, i32 %126, i32 %127, i64 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %144

131:                                              ; preds = %124
  %132 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %133 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %134 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = call i32 @oid_to_hex(i32* %135)
  %137 = call i32 @error(i32 %132, i32 %136)
  %138 = call i32 @unuse_pack(%struct.pack_window** %11)
  %139 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %140 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %141 = load i64, i64* %8, align 8
  %142 = load i32, i32* %9, align 4
  %143 = call i32 @write_no_reuse_object(%struct.hashfile* %139, %struct.object_entry* %140, i64 %141, i32 %142)
  store i32 %143, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %292

144:                                              ; preds = %124, %119, %106
  %145 = load i32, i32* %14, align 4
  %146 = load i32, i32* @OBJ_OFS_DELTA, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %223

148:                                              ; preds = %144
  %149 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %150 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %154 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %153)
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %152, %157
  store i32 %158, i32* %23, align 4
  %159 = sub i64 %34, 1
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %24, align 4
  %161 = load i32, i32* %23, align 4
  %162 = and i32 %161, 127
  %163 = trunc i32 %162 to i8
  %164 = load i32, i32* %24, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds i8, i8* %35, i64 %165
  store i8 %163, i8* %166, align 1
  br label %167

167:                                              ; preds = %171, %148
  %168 = load i32, i32* %23, align 4
  %169 = ashr i32 %168, 7
  store i32 %169, i32* %23, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %167
  %172 = load i32, i32* %23, align 4
  %173 = add nsw i32 %172, -1
  store i32 %173, i32* %23, align 4
  %174 = and i32 %173, 127
  %175 = or i32 128, %174
  %176 = trunc i32 %175 to i8
  %177 = load i32, i32* %24, align 4
  %178 = add i32 %177, -1
  store i32 %178, i32* %24, align 4
  %179 = zext i32 %178 to i64
  %180 = getelementptr inbounds i8, i8* %35, i64 %179
  store i8 %176, i8* %180, align 1
  br label %167

181:                                              ; preds = %167
  %182 = load i64, i64* %8, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %201

184:                                              ; preds = %181
  %185 = load i32, i32* %19, align 4
  %186 = zext i32 %185 to i64
  %187 = add i64 %186, %34
  %188 = load i32, i32* %24, align 4
  %189 = zext i32 %188 to i64
  %190 = sub i64 %187, %189
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = add i64 %190, %192
  %194 = load i32, i32* %20, align 4
  %195 = zext i32 %194 to i64
  %196 = add i64 %193, %195
  %197 = load i64, i64* %8, align 8
  %198 = icmp uge i64 %196, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %184
  %200 = call i32 @unuse_pack(%struct.pack_window** %11)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %292

201:                                              ; preds = %184, %181
  %202 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %203 = load i32, i32* %19, align 4
  %204 = call i32 @hashwrite(%struct.hashfile* %202, i8* %32, i32 %203)
  %205 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %206 = load i32, i32* %24, align 4
  %207 = zext i32 %206 to i64
  %208 = getelementptr inbounds i8, i8* %35, i64 %207
  %209 = load i32, i32* %24, align 4
  %210 = zext i32 %209 to i64
  %211 = sub i64 %34, %210
  %212 = trunc i64 %211 to i32
  %213 = call i32 @hashwrite(%struct.hashfile* %205, i8* %208, i32 %212)
  %214 = load i32, i32* %24, align 4
  %215 = zext i32 %214 to i64
  %216 = sub i64 %34, %215
  %217 = load i32, i32* %19, align 4
  %218 = zext i32 %217 to i64
  %219 = add i64 %218, %216
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %19, align 4
  %221 = load i32, i32* @reused_delta, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* @reused_delta, align 4
  br label %280

223:                                              ; preds = %144
  %224 = load i32, i32* %14, align 4
  %225 = load i32, i32* @OBJ_REF_DELTA, align 4
  %226 = icmp eq i32 %224, %225
  br i1 %226, label %227, label %261

227:                                              ; preds = %223
  %228 = load i64, i64* %8, align 8
  %229 = icmp ne i64 %228, 0
  br i1 %229, label %230, label %243

230:                                              ; preds = %227
  %231 = load i32, i32* %19, align 4
  %232 = load i32, i32* %20, align 4
  %233 = add i32 %231, %232
  %234 = load i32, i32* %15, align 4
  %235 = add i32 %233, %234
  %236 = load i32, i32* %20, align 4
  %237 = add i32 %235, %236
  %238 = zext i32 %237 to i64
  %239 = load i64, i64* %8, align 8
  %240 = icmp uge i64 %238, %239
  br i1 %240, label %241, label %243

241:                                              ; preds = %230
  %242 = call i32 @unuse_pack(%struct.pack_window** %11)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %292

243:                                              ; preds = %230, %227
  %244 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %245 = load i32, i32* %19, align 4
  %246 = call i32 @hashwrite(%struct.hashfile* %244, i8* %32, i32 %245)
  %247 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %248 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %249 = call %struct.TYPE_10__* @DELTA(%struct.object_entry* %248)
  %250 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %251, i32 0, i32 0
  %253 = load i8*, i8** %252, align 8
  %254 = load i32, i32* %20, align 4
  %255 = call i32 @hashwrite(%struct.hashfile* %247, i8* %253, i32 %254)
  %256 = load i32, i32* %20, align 4
  %257 = load i32, i32* %19, align 4
  %258 = add i32 %257, %256
  store i32 %258, i32* %19, align 4
  %259 = load i32, i32* @reused_delta, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* @reused_delta, align 4
  br label %279

261:                                              ; preds = %223
  %262 = load i64, i64* %8, align 8
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %275

264:                                              ; preds = %261
  %265 = load i32, i32* %19, align 4
  %266 = load i32, i32* %15, align 4
  %267 = add i32 %265, %266
  %268 = load i32, i32* %20, align 4
  %269 = add i32 %267, %268
  %270 = zext i32 %269 to i64
  %271 = load i64, i64* %8, align 8
  %272 = icmp uge i64 %270, %271
  br i1 %272, label %273, label %275

273:                                              ; preds = %264
  %274 = call i32 @unuse_pack(%struct.pack_window** %11)
  store i32 0, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %292

275:                                              ; preds = %264, %261
  %276 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %277 = load i32, i32* %19, align 4
  %278 = call i32 @hashwrite(%struct.hashfile* %276, i8* %32, i32 %277)
  br label %279

279:                                              ; preds = %275, %243
  br label %280

280:                                              ; preds = %279, %201
  %281 = load %struct.hashfile*, %struct.hashfile** %6, align 8
  %282 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* %15, align 4
  %285 = call i32 @copy_pack_data(%struct.hashfile* %281, %struct.packed_git* %282, %struct.pack_window** %11, i32 %283, i32 %284)
  %286 = call i32 @unuse_pack(%struct.pack_window** %11)
  %287 = load i32, i32* @reused, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* @reused, align 4
  %289 = load i32, i32* %19, align 4
  %290 = load i32, i32* %15, align 4
  %291 = add i32 %289, %290
  store i32 %291, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %292

292:                                              ; preds = %280, %273, %241, %199, %131, %93
  %293 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %293)
  %294 = load i32, i32* %5, align 4
  ret i32 %294
}

declare dso_local %struct.packed_git* @IN_PACK(%struct.object_entry*) #1

declare dso_local i32 @oe_type(%struct.object_entry*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @SIZE(%struct.object_entry*) #1

declare dso_local %struct.TYPE_10__* @DELTA(%struct.object_entry*) #1

declare dso_local i32 @encode_in_pack_object_header(i8*, i32, i32, i64) #1

declare dso_local %struct.revindex_entry* @find_pack_revindex(%struct.packed_git*, i32) #1

declare dso_local i64 @check_pack_crc(%struct.packed_git*, %struct.pack_window**, i32, i32, i32) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(i32*) #1

declare dso_local i32 @unuse_pack(%struct.pack_window**) #1

declare dso_local i32 @write_no_reuse_object(%struct.hashfile*, %struct.object_entry*, i64, i32) #1

declare dso_local i64 @check_pack_inflate(%struct.packed_git*, %struct.pack_window**, i32, i32, i64) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i8*, i32) #1

declare dso_local i32 @copy_pack_data(%struct.hashfile*, %struct.packed_git*, %struct.pack_window**, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
