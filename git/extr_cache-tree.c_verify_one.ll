; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_verify_one.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_verify_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.repository = type { i32 }
%struct.index_state = type { %struct.cache_entry** }
%struct.cache_entry = type { i32, i8*, i32, %struct.object_id }
%struct.object_id = type { i32 }
%struct.cache_tree = type { i32, i32, %struct.object_id, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.cache_tree*, i32 }
%struct.cache_tree_sub = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.object_id }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s/\00", align 1
@CE_STAGEMASK = common dso_local global i32 0, align 4
@CE_INTENT_TO_ADD = common dso_local global i32 0, align 4
@CE_REMOVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s with flags 0x%x should not be in cache-tree\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"bad subtree '%.*s'\00", align 1
@S_IFDIR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [10 x i8] c"%o %.*s%c\00", align 1
@the_hash_algo = common dso_local global %struct.TYPE_6__* null, align 8
@tree_type = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [60 x i8] c"cache-tree for path %.*s does not match. Expected %s got %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.repository*, %struct.index_state*, %struct.cache_tree*, %struct.strbuf*)* @verify_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verify_one(%struct.repository* %0, %struct.index_state* %1, %struct.cache_tree* %2, %struct.strbuf* %3) #0 {
  %5 = alloca %struct.repository*, align 8
  %6 = alloca %struct.index_state*, align 8
  %7 = alloca %struct.cache_tree*, align 8
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.strbuf, align 4
  %13 = alloca %struct.object_id, align 4
  %14 = alloca %struct.cache_entry*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.cache_tree_sub*, align 8
  %17 = alloca %struct.object_id*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.repository* %0, %struct.repository** %5, align 8
  store %struct.index_state* %1, %struct.index_state** %6, align 8
  store %struct.cache_tree* %2, %struct.cache_tree** %7, align 8
  store %struct.strbuf* %3, %struct.strbuf** %8, align 8
  %21 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %22 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %11, align 4
  %24 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %58, %4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %28 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %61

31:                                               ; preds = %25
  %32 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %33 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %34 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %34, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %35, i64 %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.repository*, %struct.repository** %5, align 8
  %44 = load %struct.index_state*, %struct.index_state** %6, align 8
  %45 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %46 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %46, align 8
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %47, i64 %49
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load %struct.cache_tree*, %struct.cache_tree** %52, align 8
  %54 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  call void @verify_one(%struct.repository* %43, %struct.index_state* %44, %struct.cache_tree* %53, %struct.strbuf* %54)
  %55 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @strbuf_setlen(%struct.strbuf* %55, i32 %56)
  br label %58

58:                                               ; preds = %31
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %25

61:                                               ; preds = %25
  %62 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %63 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %74, label %66

66:                                               ; preds = %61
  %67 = load %struct.repository*, %struct.repository** %5, align 8
  %68 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %69 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %68, i32 0, i32 2
  %70 = call %struct.object_id* @lookup_replace_object(%struct.repository* %67, %struct.object_id* %69)
  %71 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %72 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %71, i32 0, i32 2
  %73 = icmp ne %struct.object_id* %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %66, %61
  br label %239

75:                                               ; preds = %66
  %76 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %77 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %92

80:                                               ; preds = %75
  %81 = load %struct.index_state*, %struct.index_state** %6, align 8
  %82 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %83 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %86 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @index_name_pos(%struct.index_state* %81, i32 %84, i32 %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 0, %89
  %91 = sub nsw i32 %90, 1
  store i32 %91, i32* %10, align 4
  br label %93

92:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  br label %93

93:                                               ; preds = %92, %80
  store i32 0, i32* %9, align 4
  br label %94

94:                                               ; preds = %201, %93
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %97 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %213

100:                                              ; preds = %94
  %101 = load %struct.index_state*, %struct.index_state** %6, align 8
  %102 = getelementptr inbounds %struct.index_state, %struct.index_state* %101, i32 0, i32 0
  %103 = load %struct.cache_entry**, %struct.cache_entry*** %102, align 8
  %104 = load i32, i32* %10, align 4
  %105 = load i32, i32* %9, align 4
  %106 = add nsw i32 %104, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.cache_entry*, %struct.cache_entry** %103, i64 %107
  %109 = load %struct.cache_entry*, %struct.cache_entry** %108, align 8
  store %struct.cache_entry* %109, %struct.cache_entry** %14, align 8
  store %struct.cache_tree_sub* null, %struct.cache_tree_sub** %16, align 8
  %110 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %111 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @CE_STAGEMASK, align 4
  %114 = load i32, i32* @CE_INTENT_TO_ADD, align 4
  %115 = or i32 %113, %114
  %116 = load i32, i32* @CE_REMOVE, align 4
  %117 = or i32 %115, %116
  %118 = and i32 %112, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %100
  %121 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %122 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %121, i32 0, i32 1
  %123 = load i8*, i8** %122, align 8
  %124 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %125 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i8* %123, i32 %126)
  br label %128

128:                                              ; preds = %120, %100
  %129 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %130 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %129, i32 0, i32 1
  %131 = load i8*, i8** %130, align 8
  %132 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %133 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  store i8* %136, i8** %18, align 8
  %137 = load i8*, i8** %18, align 8
  %138 = call i8* @strchr(i8* %137, i8 signext 47)
  store i8* %138, i8** %15, align 8
  %139 = load i8*, i8** %15, align 8
  %140 = icmp ne i8* %139, null
  br i1 %140, label %141, label %187

141:                                              ; preds = %128
  %142 = load i8*, i8** %15, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = ptrtoint i8* %142 to i64
  %145 = ptrtoint i8* %143 to i64
  %146 = sub i64 %144, %145
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %20, align 4
  %148 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %149 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %150 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %153 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i8, i8* %151, i64 %155
  %157 = load i32, i32* %20, align 4
  %158 = call %struct.cache_tree_sub* @find_subtree(%struct.cache_tree* %148, i8* %156, i32 %157, i32 0)
  store %struct.cache_tree_sub* %158, %struct.cache_tree_sub** %16, align 8
  %159 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %16, align 8
  %160 = icmp ne %struct.cache_tree_sub* %159, null
  br i1 %160, label %161, label %168

161:                                              ; preds = %141
  %162 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %16, align 8
  %163 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %162, i32 0, i32 0
  %164 = load %struct.TYPE_5__*, %struct.TYPE_5__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp slt i64 %166, 0
  br i1 %167, label %168, label %172

168:                                              ; preds = %161, %141
  %169 = load i32, i32* %20, align 4
  %170 = load i8*, i8** %18, align 8
  %171 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %169, i8* %170)
  br label %172

172:                                              ; preds = %168, %161
  %173 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %16, align 8
  %174 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %173, i32 0, i32 0
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 1
  store %struct.object_id* %176, %struct.object_id** %17, align 8
  %177 = load i32, i32* @S_IFDIR, align 4
  store i32 %177, i32* %19, align 4
  %178 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %16, align 8
  %179 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %178, i32 0, i32 0
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %184, %182
  %186 = trunc i64 %185 to i32
  store i32 %186, i32* %9, align 4
  br label %201

187:                                              ; preds = %128
  %188 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %189 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %188, i32 0, i32 3
  store %struct.object_id* %189, %struct.object_id** %17, align 8
  %190 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %191 = getelementptr inbounds %struct.cache_entry, %struct.cache_entry* %190, i32 0, i32 2
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %19, align 4
  %193 = load %struct.cache_entry*, %struct.cache_entry** %14, align 8
  %194 = call i32 @ce_namelen(%struct.cache_entry* %193)
  %195 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %196 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = sub nsw i32 %194, %197
  store i32 %198, i32* %20, align 4
  %199 = load i32, i32* %9, align 4
  %200 = add nsw i32 %199, 1
  store i32 %200, i32* %9, align 4
  br label %201

201:                                              ; preds = %187, %172
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* %20, align 4
  %204 = load i8*, i8** %18, align 8
  %205 = call i32 (%struct.strbuf*, i8*, i32, ...) @strbuf_addf(%struct.strbuf* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i32 %202, i32 %203, i8* %204, i32 0)
  %206 = load %struct.object_id*, %struct.object_id** %17, align 8
  %207 = getelementptr inbounds %struct.object_id, %struct.object_id* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** @the_hash_algo, align 8
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = call i32 @strbuf_add(%struct.strbuf* %12, i32 %208, i32 %211)
  br label %94

213:                                              ; preds = %94
  %214 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* @tree_type, align 4
  %219 = call i32 @hash_object_file(i32 %215, i32 %217, i32 %218, %struct.object_id* %13)
  %220 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %221 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %220, i32 0, i32 2
  %222 = call i32 @oideq(%struct.object_id* %13, %struct.object_id* %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %234, label %224

224:                                              ; preds = %213
  %225 = load i32, i32* %11, align 4
  %226 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %227 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @oid_to_hex(%struct.object_id* %13)
  %230 = load %struct.cache_tree*, %struct.cache_tree** %7, align 8
  %231 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %230, i32 0, i32 2
  %232 = call i32 @oid_to_hex(%struct.object_id* %231)
  %233 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i32 %225, i32 %228, i32 %229, i32 %232)
  br label %234

234:                                              ; preds = %224, %213
  %235 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %236 = load i32, i32* %11, align 4
  %237 = call i32 @strbuf_setlen(%struct.strbuf* %235, i32 %236)
  %238 = call i32 @strbuf_release(%struct.strbuf* %12)
  br label %239

239:                                              ; preds = %234, %74
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i32, ...) #2

declare dso_local i32 @strbuf_setlen(%struct.strbuf*, i32) #2

declare dso_local %struct.object_id* @lookup_replace_object(%struct.repository*, %struct.object_id*) #2

declare dso_local i32 @index_name_pos(%struct.index_state*, i32, i32) #2

declare dso_local i32 @BUG(i8*, ...) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local %struct.cache_tree_sub* @find_subtree(%struct.cache_tree*, i8*, i32, i32) #2

declare dso_local i32 @ce_namelen(%struct.cache_entry*) #2

declare dso_local i32 @strbuf_add(%struct.strbuf*, i32, i32) #2

declare dso_local i32 @hash_object_file(i32, i32, i32, %struct.object_id*) #2

declare dso_local i32 @oideq(%struct.object_id*, %struct.object_id*) #2

declare dso_local i32 @oid_to_hex(%struct.object_id*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
