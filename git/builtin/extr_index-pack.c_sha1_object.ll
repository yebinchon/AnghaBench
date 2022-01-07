; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_sha1_object.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_sha1_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.object_entry = type { i32 }
%struct.object_id = type { i32 }
%struct.blob = type { %struct.object }
%struct.object = type { i64, i32, i64, %struct.object_id }
%struct.tree = type { i32* }
%struct.commit = type { i32 }

@startup_info = common dso_local global %struct.TYPE_2__* null, align 8
@OBJECT_INFO_QUICK = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"cannot read existing object info %s\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SHA1 COLLISION FOUND WITH %s !\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"cannot read existing object %s\00", align 1
@strict = common dso_local global i64 0, align 8
@do_fsck_object = common dso_local global i64 0, align 8
@OBJ_BLOB = common dso_local global i32 0, align 4
@FLAG_CHECKED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"invalid blob object %s\00", align 1
@fsck_options = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"fsck error in packed object\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"data can only be NULL for large _blobs_\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"invalid %s\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"Not all child objects of %s are reachable\00", align 1
@OBJ_TREE = common dso_local global i64 0, align 8
@OBJ_COMMIT = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [46 x i8] c"parse_object_buffer transmogrified our buffer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.object_entry*, i64, i32, %struct.object_id*)* @sha1_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sha1_object(i8* %0, %struct.object_entry* %1, i64 %2, i32 %3, %struct.object_id* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.object_entry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.object_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.blob*, align 8
  %17 = alloca %struct.object*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca %struct.tree*, align 8
  %21 = alloca %struct.commit*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.object_entry* %1, %struct.object_entry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.object_id* %4, %struct.object_id** %10, align 8
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %5
  %25 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %26 = icmp ne %struct.object_entry* %25, null
  br label %27

27:                                               ; preds = %24, %5
  %28 = phi i1 [ true, %5 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @startup_info, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = call i32 (...) @read_lock()
  %37 = load %struct.object_id*, %struct.object_id** %10, align 8
  %38 = load i32, i32* @OBJECT_INFO_QUICK, align 4
  %39 = call i32 @has_object_file_with_flags(%struct.object_id* %37, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = call i32 (...) @read_unlock()
  br label %41

41:                                               ; preds = %35, %27
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %55

44:                                               ; preds = %41
  %45 = load i8*, i8** %6, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = call i32 (...) @read_lock()
  %49 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %50 = call i32 @check_collison(%struct.object_entry* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %52, %47
  %54 = call i32 (...) @read_unlock()
  br label %55

55:                                               ; preds = %53, %44, %41
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %122

58:                                               ; preds = %55
  %59 = call i32 (...) @read_lock()
  %60 = load i32, i32* @the_repository, align 4
  %61 = load %struct.object_id*, %struct.object_id** %10, align 8
  %62 = call i32 @oid_object_info(i32 %60, %struct.object_id* %61, i64* %15)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %14, align 4
  %64 = icmp ult i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %58
  %66 = call i32 @_(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.object_id*, %struct.object_id** %10, align 8
  %68 = call i32 @oid_to_hex(%struct.object_id* %67)
  %69 = call i32 (i32, ...) @die(i32 %66, i32 %68)
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  %75 = load i64, i64* %15, align 8
  %76 = load i64, i64* %8, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74, %70
  %79 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.object_id*, %struct.object_id** %10, align 8
  %81 = call i32 @oid_to_hex(%struct.object_id* %80)
  %82 = call i32 (i32, ...) @die(i32 %79, i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  %84 = load %struct.object_id*, %struct.object_id** %10, align 8
  %85 = call i8* @read_object_file(%struct.object_id* %84, i32* %14, i64* %15)
  store i8* %85, i8** %13, align 8
  %86 = call i32 (...) @read_unlock()
  %87 = load i8*, i8** %6, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = load %struct.object_entry*, %struct.object_entry** %7, align 8
  %91 = call i8* @get_data_from_pack(%struct.object_entry* %90)
  store i8* %91, i8** %11, align 8
  store i8* %91, i8** %6, align 8
  br label %92

92:                                               ; preds = %89, %83
  %93 = load i8*, i8** %13, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %97 = load %struct.object_id*, %struct.object_id** %10, align 8
  %98 = call i32 @oid_to_hex(%struct.object_id* %97)
  %99 = call i32 (i32, ...) @die(i32 %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %92
  %101 = load i64, i64* %8, align 8
  %102 = load i64, i64* %15, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %114, label %104

104:                                              ; preds = %100
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %105, %106
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = load i8*, i8** %6, align 8
  %110 = load i8*, i8** %13, align 8
  %111 = load i64, i64* %8, align 8
  %112 = call i64 @memcmp(i8* %109, i8* %110, i64 %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108, %104, %100
  %115 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.object_id*, %struct.object_id** %10, align 8
  %117 = call i32 @oid_to_hex(%struct.object_id* %116)
  %118 = call i32 (i32, ...) @die(i32 %115, i32 %117)
  br label %119

119:                                              ; preds = %114, %108
  %120 = load i8*, i8** %13, align 8
  %121 = call i32 @free(i8* %120)
  br label %122

122:                                              ; preds = %119, %55
  %123 = load i64, i64* @strict, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i64, i64* @do_fsck_object, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %249

128:                                              ; preds = %125, %122
  %129 = call i32 (...) @read_lock()
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @OBJ_BLOB, align 4
  %132 = icmp eq i32 %130, %131
  br i1 %132, label %133, label %165

133:                                              ; preds = %128
  %134 = load i32, i32* @the_repository, align 4
  %135 = load %struct.object_id*, %struct.object_id** %10, align 8
  %136 = call %struct.blob* @lookup_blob(i32 %134, %struct.object_id* %135)
  store %struct.blob* %136, %struct.blob** %16, align 8
  %137 = load %struct.blob*, %struct.blob** %16, align 8
  %138 = icmp ne %struct.blob* %137, null
  br i1 %138, label %139, label %146

139:                                              ; preds = %133
  %140 = load i32, i32* @FLAG_CHECKED, align 4
  %141 = load %struct.blob*, %struct.blob** %16, align 8
  %142 = getelementptr inbounds %struct.blob, %struct.blob* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.object, %struct.object* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = or i32 %144, %140
  store i32 %145, i32* %143, align 8
  br label %151

146:                                              ; preds = %133
  %147 = call i32 @_(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %148 = load %struct.object_id*, %struct.object_id** %10, align 8
  %149 = call i32 @oid_to_hex(%struct.object_id* %148)
  %150 = call i32 (i32, ...) @die(i32 %147, i32 %149)
  br label %151

151:                                              ; preds = %146, %139
  %152 = load i64, i64* @do_fsck_object, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %164

154:                                              ; preds = %151
  %155 = load %struct.blob*, %struct.blob** %16, align 8
  %156 = getelementptr inbounds %struct.blob, %struct.blob* %155, i32 0, i32 0
  %157 = load i8*, i8** %6, align 8
  %158 = load i64, i64* %8, align 8
  %159 = call i64 @fsck_object(%struct.object* %156, i8* %157, i64 %158, i32* @fsck_options)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %154
  %162 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %163 = call i32 (i32, ...) @die(i32 %162)
  br label %164

164:                                              ; preds = %161, %154, %151
  br label %247

165:                                              ; preds = %128
  %166 = load i8*, i8** %6, align 8
  store i8* %166, i8** %19, align 8
  %167 = load i8*, i8** %6, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %170

169:                                              ; preds = %165
  br label %170

170:                                              ; preds = %169, %165
  %171 = phi i1 [ false, %165 ], [ true, %169 ]
  %172 = zext i1 %171 to i32
  %173 = call i32 @assert(i32 %172)
  %174 = load i32, i32* @the_repository, align 4
  %175 = load %struct.object_id*, %struct.object_id** %10, align 8
  %176 = load i32, i32* %9, align 4
  %177 = load i64, i64* %8, align 8
  %178 = load i8*, i8** %19, align 8
  %179 = call %struct.object* @parse_object_buffer(i32 %174, %struct.object_id* %175, i32 %176, i64 %177, i8* %178, i32* %18)
  store %struct.object* %179, %struct.object** %17, align 8
  %180 = load %struct.object*, %struct.object** %17, align 8
  %181 = icmp ne %struct.object* %180, null
  br i1 %181, label %187, label %182

182:                                              ; preds = %170
  %183 = call i32 @_(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %184 = load i32, i32* %9, align 4
  %185 = call i32 @type_name(i32 %184)
  %186 = call i32 (i32, ...) @die(i32 %183, i32 %185)
  br label %187

187:                                              ; preds = %182, %170
  %188 = load i64, i64* @do_fsck_object, align 8
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %199

190:                                              ; preds = %187
  %191 = load %struct.object*, %struct.object** %17, align 8
  %192 = load i8*, i8** %19, align 8
  %193 = load i64, i64* %8, align 8
  %194 = call i64 @fsck_object(%struct.object* %191, i8* %192, i64 %193, i32* @fsck_options)
  %195 = icmp ne i64 %194, 0
  br i1 %195, label %196, label %199

196:                                              ; preds = %190
  %197 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  %198 = call i32 (i32, ...) @die(i32 %197)
  br label %199

199:                                              ; preds = %196, %190, %187
  %200 = load i64, i64* @strict, align 8
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %199
  %203 = load %struct.object*, %struct.object** %17, align 8
  %204 = call i64 @fsck_walk(%struct.object* %203, i32* null, i32* @fsck_options)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %212

206:                                              ; preds = %202
  %207 = call i32 @_(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %208 = load %struct.object*, %struct.object** %17, align 8
  %209 = getelementptr inbounds %struct.object, %struct.object* %208, i32 0, i32 3
  %210 = call i32 @oid_to_hex(%struct.object_id* %209)
  %211 = call i32 (i32, ...) @die(i32 %207, i32 %210)
  br label %212

212:                                              ; preds = %206, %202, %199
  %213 = load %struct.object*, %struct.object** %17, align 8
  %214 = getelementptr inbounds %struct.object, %struct.object* %213, i32 0, i32 0
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* @OBJ_TREE, align 8
  %217 = icmp eq i64 %215, %216
  br i1 %217, label %218, label %225

218:                                              ; preds = %212
  %219 = load %struct.object*, %struct.object** %17, align 8
  %220 = bitcast %struct.object* %219 to %struct.tree*
  store %struct.tree* %220, %struct.tree** %20, align 8
  %221 = load %struct.tree*, %struct.tree** %20, align 8
  %222 = getelementptr inbounds %struct.tree, %struct.tree* %221, i32 0, i32 0
  store i32* null, i32** %222, align 8
  %223 = load %struct.object*, %struct.object** %17, align 8
  %224 = getelementptr inbounds %struct.object, %struct.object* %223, i32 0, i32 2
  store i64 0, i64* %224, align 8
  br label %225

225:                                              ; preds = %218, %212
  %226 = load %struct.object*, %struct.object** %17, align 8
  %227 = getelementptr inbounds %struct.object, %struct.object* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = load i64, i64* @OBJ_COMMIT, align 8
  %230 = icmp eq i64 %228, %229
  br i1 %230, label %231, label %241

231:                                              ; preds = %225
  %232 = load %struct.object*, %struct.object** %17, align 8
  %233 = bitcast %struct.object* %232 to %struct.commit*
  store %struct.commit* %233, %struct.commit** %21, align 8
  %234 = load %struct.commit*, %struct.commit** %21, align 8
  %235 = call i8* @detach_commit_buffer(%struct.commit* %234, i32* null)
  %236 = load i8*, i8** %6, align 8
  %237 = icmp ne i8* %235, %236
  br i1 %237, label %238, label %240

238:                                              ; preds = %231
  %239 = call i32 @BUG(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.8, i64 0, i64 0))
  br label %240

240:                                              ; preds = %238, %231
  br label %241

241:                                              ; preds = %240, %225
  %242 = load i32, i32* @FLAG_CHECKED, align 4
  %243 = load %struct.object*, %struct.object** %17, align 8
  %244 = getelementptr inbounds %struct.object, %struct.object* %243, i32 0, i32 1
  %245 = load i32, i32* %244, align 8
  %246 = or i32 %245, %242
  store i32 %246, i32* %244, align 8
  br label %247

247:                                              ; preds = %241, %164
  %248 = call i32 (...) @read_unlock()
  br label %249

249:                                              ; preds = %247, %125
  %250 = load i8*, i8** %11, align 8
  %251 = call i32 @free(i8* %250)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @read_lock(...) #1

declare dso_local i32 @has_object_file_with_flags(%struct.object_id*, i32) #1

declare dso_local i32 @read_unlock(...) #1

declare dso_local i32 @check_collison(%struct.object_entry*) #1

declare dso_local i32 @oid_object_info(i32, %struct.object_id*, i64*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.object_id*) #1

declare dso_local i8* @read_object_file(%struct.object_id*, i32*, i64*) #1

declare dso_local i8* @get_data_from_pack(%struct.object_entry*) #1

declare dso_local i64 @memcmp(i8*, i8*, i64) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.blob* @lookup_blob(i32, %struct.object_id*) #1

declare dso_local i64 @fsck_object(%struct.object*, i8*, i64, i32*) #1

declare dso_local %struct.object* @parse_object_buffer(i32, %struct.object_id*, i32, i64, i8*, i32*) #1

declare dso_local i32 @type_name(i32) #1

declare dso_local i64 @fsck_walk(%struct.object*, i32*, i32*) #1

declare dso_local i8* @detach_commit_buffer(%struct.commit*, i32*) #1

declare dso_local i32 @BUG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
