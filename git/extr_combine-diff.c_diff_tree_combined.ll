; ModuleID = '/home/carl/AnghaBench/git/extr_combine-diff.c_diff_tree_combined.c'
source_filename = "/home/carl/AnghaBench/git/extr_combine-diff.c_diff_tree_combined.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.oid_array = type { i32, i32* }
%struct.rev_info = type { i32, i32, i64, i32, i32, %struct.diff_options }
%struct.diff_options = type { i64, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.combine_diff_path = type { %struct.TYPE_4__*, %struct.combine_diff_path*, %struct.combine_diff_path* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.obj_order = type { %struct.TYPE_4__*, %struct.obj_order*, %struct.obj_order* }

@DIFF_FORMAT_NO_OUTPUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"%s%c\00", align 1
@DIFF_PICKAXE_KINDS_MASK = common dso_local global i32 0, align 4
@STAT_FORMAT_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@path_path = common dso_local global i32 0, align 4
@DIFF_FORMAT_RAW = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME = common dso_local global i32 0, align 4
@DIFF_FORMAT_NAME_STATUS = common dso_local global i32 0, align 4
@DIFF_FORMAT_CALLBACK = common dso_local global i32 0, align 4
@DIFF_FORMAT_PATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @diff_tree_combined(%struct.object_id* %0, %struct.oid_array* %1, i32 %2, %struct.rev_info* %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.oid_array*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rev_info*, align 8
  %9 = alloca %struct.diff_options*, align 8
  %10 = alloca %struct.diff_options, align 8
  %11 = alloca %struct.combine_diff_path*, align 8
  %12 = alloca %struct.combine_diff_path*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.obj_order*, align 8
  %21 = alloca %struct.combine_diff_path*, align 8
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store %struct.oid_array* %1, %struct.oid_array** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.rev_info* %3, %struct.rev_info** %8, align 8
  %22 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %23 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %22, i32 0, i32 5
  store %struct.diff_options* %23, %struct.diff_options** %9, align 8
  %24 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %25 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %17, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %408

30:                                               ; preds = %4
  %31 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %32 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %37 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  br label %41

41:                                               ; preds = %35, %30
  %42 = phi i1 [ false, %30 ], [ %40, %35 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %78

46:                                               ; preds = %41
  %47 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %48 = call i32 @show_log(%struct.rev_info* %47)
  %49 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %50 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %77

53:                                               ; preds = %46
  %54 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %55 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %60 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @DIFF_FORMAT_NO_OUTPUT, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %77

64:                                               ; preds = %58
  %65 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %66 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @commit_format_is_empty(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %64
  %71 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %72 = call i8* @diff_line_prefix(%struct.diff_options* %71)
  %73 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %74 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %72, i32 %75)
  br label %77

77:                                               ; preds = %70, %64, %58, %53, %46
  br label %78

78:                                               ; preds = %77, %41
  %79 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %80 = bitcast %struct.diff_options* %10 to i8*
  %81 = bitcast %struct.diff_options* %79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %80, i8* align 8 %81, i64 80, i1 false)
  %82 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %10, i32 0, i32 3
  %83 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %84 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %83, i32 0, i32 3
  %85 = call i32 @copy_pathspec(i32* %82, i32* %84)
  %86 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %10, i32 0, i32 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %10, i32 0, i32 8
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %91 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %90, i32 0, i32 9
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %122, label %94

94:                                               ; preds = %78
  %95 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %96 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %95, i32 0, i32 8
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %122, label %100

100:                                              ; preds = %94
  %101 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %102 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp ne i32 %103, -1
  br i1 %104, label %122, label %105

105:                                              ; preds = %100
  %106 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %107 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %106, i32 0, i32 7
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %122, label %110

110:                                              ; preds = %105
  %111 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %112 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @DIFF_PICKAXE_KINDS_MASK, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %122, label %117

117:                                              ; preds = %110
  %118 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %119 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br label %122

122:                                              ; preds = %117, %110, %105, %100, %94, %78
  %123 = phi i1 [ true, %110 ], [ true, %105 ], [ true, %100 ], [ true, %94 ], [ true, %78 ], [ %121, %117 ]
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %18, align 4
  %125 = load i32, i32* %18, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %122
  %128 = load %struct.object_id*, %struct.object_id** %5, align 8
  %129 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %130 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %131 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = call %struct.obj_order* @find_paths_generic(%struct.object_id* %128, %struct.oid_array* %129, %struct.diff_options* %10, i32 %132)
  %134 = bitcast %struct.obj_order* %133 to %struct.combine_diff_path*
  store %struct.combine_diff_path* %134, %struct.combine_diff_path** %12, align 8
  br label %172

135:                                              ; preds = %122
  %136 = load %struct.object_id*, %struct.object_id** %5, align 8
  %137 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %138 = call %struct.obj_order* @find_paths_multitree(%struct.object_id* %136, %struct.oid_array* %137, %struct.diff_options* %10)
  %139 = bitcast %struct.obj_order* %138 to %struct.combine_diff_path*
  store %struct.combine_diff_path* %139, %struct.combine_diff_path** %12, align 8
  %140 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %141 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* @STAT_FORMAT_MASK, align 4
  %144 = sext i32 %143 to i64
  %145 = and i64 %142, %144
  %146 = trunc i64 %145 to i32
  store i32 %146, i32* %19, align 4
  %147 = load i32, i32* %19, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %171

149:                                              ; preds = %135
  %150 = load i32, i32* %19, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %10, i32 0, i32 0
  store i64 %151, i64* %152, align 8
  %153 = load %struct.oid_array*, %struct.oid_array** %6, align 8
  %154 = getelementptr inbounds %struct.oid_array, %struct.oid_array* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 0
  %157 = load %struct.object_id*, %struct.object_id** %5, align 8
  %158 = call i32 @diff_tree_oid(i32* %156, %struct.object_id* %157, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), %struct.diff_options* %10)
  %159 = call i32 @diffcore_std(%struct.diff_options* %10)
  %160 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %161 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %160, i32 0, i32 5
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %149
  %165 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %166 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %165, i32 0, i32 5
  %167 = load i64, i64* %166, align 8
  %168 = call i32 @diffcore_order(i64 %167)
  br label %169

169:                                              ; preds = %164, %149
  %170 = call i32 @diff_flush(%struct.diff_options* %10)
  br label %171

171:                                              ; preds = %169, %135
  br label %172

172:                                              ; preds = %171, %127
  store i32 0, i32* %14, align 4
  %173 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  store %struct.combine_diff_path* %173, %struct.combine_diff_path** %11, align 8
  br label %174

174:                                              ; preds = %180, %172
  %175 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %176 = icmp ne %struct.combine_diff_path* %175, null
  br i1 %176, label %177, label %184

177:                                              ; preds = %174
  %178 = load i32, i32* %14, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %14, align 4
  br label %180

180:                                              ; preds = %177
  %181 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %182 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %181, i32 0, i32 1
  %183 = load %struct.combine_diff_path*, %struct.combine_diff_path** %182, align 8
  store %struct.combine_diff_path* %183, %struct.combine_diff_path** %11, align 8
  br label %174

184:                                              ; preds = %174
  %185 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %186 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %185, i32 0, i32 5
  %187 = load i64, i64* %186, align 8
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %266

189:                                              ; preds = %184
  %190 = load i32, i32* %14, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %266

192:                                              ; preds = %189
  %193 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %194 = load i32, i32* %14, align 4
  %195 = call i32 @ALLOC_ARRAY(%struct.obj_order* %193, i32 %194)
  store i32 0, i32* %13, align 4
  %196 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  store %struct.combine_diff_path* %196, %struct.combine_diff_path** %11, align 8
  br label %197

197:                                              ; preds = %208, %192
  %198 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %199 = icmp ne %struct.combine_diff_path* %198, null
  br i1 %199, label %200, label %214

200:                                              ; preds = %197
  %201 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %202 = bitcast %struct.combine_diff_path* %201 to %struct.obj_order*
  %203 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %204 = load i32, i32* %13, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %203, i64 %205
  %207 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %206, i32 0, i32 2
  store %struct.obj_order* %202, %struct.obj_order** %207, align 8
  br label %208

208:                                              ; preds = %200
  %209 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %210 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %209, i32 0, i32 1
  %211 = load %struct.combine_diff_path*, %struct.combine_diff_path** %210, align 8
  store %struct.combine_diff_path* %211, %struct.combine_diff_path** %11, align 8
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %197

214:                                              ; preds = %197
  %215 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %216 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  %218 = load i32, i32* @path_path, align 4
  %219 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %220 = load i32, i32* %14, align 4
  %221 = call i32 @order_objects(i64 %217, i32 %218, %struct.obj_order* %219, i32 %220)
  store i32 0, i32* %13, align 4
  br label %222

222:                                              ; preds = %245, %214
  %223 = load i32, i32* %13, align 4
  %224 = load i32, i32* %14, align 4
  %225 = sub nsw i32 %224, 1
  %226 = icmp slt i32 %223, %225
  br i1 %226, label %227, label %248

227:                                              ; preds = %222
  %228 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %229 = load i32, i32* %13, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %228, i64 %230
  %232 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %231, i32 0, i32 2
  %233 = load %struct.obj_order*, %struct.obj_order** %232, align 8
  %234 = bitcast %struct.obj_order* %233 to %struct.combine_diff_path*
  store %struct.combine_diff_path* %234, %struct.combine_diff_path** %11, align 8
  %235 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %236 = load i32, i32* %13, align 4
  %237 = add nsw i32 %236, 1
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %235, i64 %238
  %240 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %239, i32 0, i32 2
  %241 = load %struct.obj_order*, %struct.obj_order** %240, align 8
  %242 = bitcast %struct.obj_order* %241 to %struct.combine_diff_path*
  %243 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %244 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %243, i32 0, i32 1
  store %struct.combine_diff_path* %242, %struct.combine_diff_path** %244, align 8
  br label %245

245:                                              ; preds = %227
  %246 = load i32, i32* %13, align 4
  %247 = add nsw i32 %246, 1
  store i32 %247, i32* %13, align 4
  br label %222

248:                                              ; preds = %222
  %249 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %250 = load i32, i32* %14, align 4
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %249, i64 %252
  %254 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %253, i32 0, i32 2
  %255 = load %struct.obj_order*, %struct.obj_order** %254, align 8
  %256 = bitcast %struct.obj_order* %255 to %struct.combine_diff_path*
  store %struct.combine_diff_path* %256, %struct.combine_diff_path** %11, align 8
  %257 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %258 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %257, i32 0, i32 1
  store %struct.combine_diff_path* null, %struct.combine_diff_path** %258, align 8
  %259 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %260 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %259, i64 0
  %261 = getelementptr inbounds %struct.obj_order, %struct.obj_order* %260, i32 0, i32 2
  %262 = load %struct.obj_order*, %struct.obj_order** %261, align 8
  %263 = bitcast %struct.obj_order* %262 to %struct.combine_diff_path*
  store %struct.combine_diff_path* %263, %struct.combine_diff_path** %12, align 8
  %264 = load %struct.obj_order*, %struct.obj_order** %20, align 8
  %265 = call i32 @free(%struct.obj_order* %264)
  br label %266

266:                                              ; preds = %248, %189, %184
  %267 = load i32, i32* %14, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %359

269:                                              ; preds = %266
  %270 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %271 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %270, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = load i32, i32* @DIFF_FORMAT_RAW, align 4
  %274 = load i32, i32* @DIFF_FORMAT_NAME, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* @DIFF_FORMAT_NAME_STATUS, align 4
  %277 = or i32 %275, %276
  %278 = sext i32 %277 to i64
  %279 = and i64 %272, %278
  %280 = icmp ne i64 %279, 0
  br i1 %280, label %281, label %297

281:                                              ; preds = %269
  %282 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  store %struct.combine_diff_path* %282, %struct.combine_diff_path** %11, align 8
  br label %283

283:                                              ; preds = %292, %281
  %284 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %285 = icmp ne %struct.combine_diff_path* %284, null
  br i1 %285, label %286, label %296

286:                                              ; preds = %283
  %287 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %288 = bitcast %struct.combine_diff_path* %287 to %struct.obj_order*
  %289 = load i32, i32* %17, align 4
  %290 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %291 = call i32 @show_raw_diff(%struct.obj_order* %288, i32 %289, %struct.rev_info* %290)
  br label %292

292:                                              ; preds = %286
  %293 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %294 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %293, i32 0, i32 1
  %295 = load %struct.combine_diff_path*, %struct.combine_diff_path** %294, align 8
  store %struct.combine_diff_path* %295, %struct.combine_diff_path** %11, align 8
  br label %283

296:                                              ; preds = %283
  store i32 1, i32* %15, align 4
  br label %323

297:                                              ; preds = %269
  %298 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %299 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = load i32, i32* @STAT_FORMAT_MASK, align 4
  %302 = sext i32 %301 to i64
  %303 = and i64 %300, %302
  %304 = icmp ne i64 %303, 0
  br i1 %304, label %305, label %306

305:                                              ; preds = %297
  store i32 1, i32* %15, align 4
  br label %322

306:                                              ; preds = %297
  %307 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %308 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %307, i32 0, i32 0
  %309 = load i64, i64* %308, align 8
  %310 = load i32, i32* @DIFF_FORMAT_CALLBACK, align 4
  %311 = sext i32 %310 to i64
  %312 = and i64 %309, %311
  %313 = icmp ne i64 %312, 0
  br i1 %313, label %314, label %321

314:                                              ; preds = %306
  %315 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %316 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  %317 = bitcast %struct.combine_diff_path* %316 to %struct.obj_order*
  %318 = load i32, i32* %17, align 4
  %319 = load i32, i32* %14, align 4
  %320 = call i32 @handle_combined_callback(%struct.diff_options* %315, %struct.obj_order* %317, i32 %318, i32 %319)
  br label %321

321:                                              ; preds = %314, %306
  br label %322

322:                                              ; preds = %321, %305
  br label %323

323:                                              ; preds = %322, %296
  %324 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %325 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %324, i32 0, i32 0
  %326 = load i64, i64* %325, align 8
  %327 = load i32, i32* @DIFF_FORMAT_PATCH, align 4
  %328 = sext i32 %327 to i64
  %329 = and i64 %326, %328
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %358

331:                                              ; preds = %323
  %332 = load i32, i32* %15, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %334, label %341

334:                                              ; preds = %331
  %335 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %336 = call i8* @diff_line_prefix(%struct.diff_options* %335)
  %337 = load %struct.diff_options*, %struct.diff_options** %9, align 8
  %338 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %337, i32 0, i32 4
  %339 = load i32, i32* %338, align 4
  %340 = call i32 @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %336, i32 %339)
  br label %341

341:                                              ; preds = %334, %331
  %342 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  store %struct.combine_diff_path* %342, %struct.combine_diff_path** %11, align 8
  br label %343

343:                                              ; preds = %353, %341
  %344 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %345 = icmp ne %struct.combine_diff_path* %344, null
  br i1 %345, label %346, label %357

346:                                              ; preds = %343
  %347 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %348 = bitcast %struct.combine_diff_path* %347 to %struct.obj_order*
  %349 = load i32, i32* %17, align 4
  %350 = load i32, i32* %7, align 4
  %351 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %352 = call i32 @show_patch_diff(%struct.obj_order* %348, i32 %349, i32 %350, i32 0, %struct.rev_info* %351)
  br label %353

353:                                              ; preds = %346
  %354 = load %struct.combine_diff_path*, %struct.combine_diff_path** %11, align 8
  %355 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %354, i32 0, i32 1
  %356 = load %struct.combine_diff_path*, %struct.combine_diff_path** %355, align 8
  store %struct.combine_diff_path* %356, %struct.combine_diff_path** %11, align 8
  br label %343

357:                                              ; preds = %343
  br label %358

358:                                              ; preds = %357, %323
  br label %359

359:                                              ; preds = %358, %266
  br label %360

360:                                              ; preds = %401, %359
  %361 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  %362 = icmp ne %struct.combine_diff_path* %361, null
  br i1 %362, label %363, label %405

363:                                              ; preds = %360
  %364 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  store %struct.combine_diff_path* %364, %struct.combine_diff_path** %21, align 8
  %365 = load %struct.combine_diff_path*, %struct.combine_diff_path** %12, align 8
  %366 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %365, i32 0, i32 1
  %367 = load %struct.combine_diff_path*, %struct.combine_diff_path** %366, align 8
  store %struct.combine_diff_path* %367, %struct.combine_diff_path** %12, align 8
  store i32 0, i32* %13, align 4
  br label %368

368:                                              ; preds = %398, %363
  %369 = load i32, i32* %13, align 4
  %370 = load i32, i32* %17, align 4
  %371 = icmp slt i32 %369, %370
  br i1 %371, label %372, label %401

372:                                              ; preds = %368
  %373 = load %struct.rev_info*, %struct.rev_info** %8, align 8
  %374 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 8
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %397

377:                                              ; preds = %372
  %378 = load %struct.combine_diff_path*, %struct.combine_diff_path** %21, align 8
  %379 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %378, i32 0, i32 0
  %380 = load %struct.TYPE_4__*, %struct.TYPE_4__** %379, align 8
  %381 = load i32, i32* %13, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %380, i64 %382
  %384 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = call i64 @filename_changed(i32 %385)
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %388, label %397

388:                                              ; preds = %377
  %389 = load %struct.combine_diff_path*, %struct.combine_diff_path** %21, align 8
  %390 = getelementptr inbounds %struct.combine_diff_path, %struct.combine_diff_path* %389, i32 0, i32 0
  %391 = load %struct.TYPE_4__*, %struct.TYPE_4__** %390, align 8
  %392 = load i32, i32* %13, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %391, i64 %393
  %395 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %394, i32 0, i32 0
  %396 = call i32 @strbuf_release(i32* %395)
  br label %397

397:                                              ; preds = %388, %377, %372
  br label %398

398:                                              ; preds = %397
  %399 = load i32, i32* %13, align 4
  %400 = add nsw i32 %399, 1
  store i32 %400, i32* %13, align 4
  br label %368

401:                                              ; preds = %368
  %402 = load %struct.combine_diff_path*, %struct.combine_diff_path** %21, align 8
  %403 = bitcast %struct.combine_diff_path* %402 to %struct.obj_order*
  %404 = call i32 @free(%struct.obj_order* %403)
  br label %360

405:                                              ; preds = %360
  %406 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %10, i32 0, i32 3
  %407 = call i32 @clear_pathspec(i32* %406)
  br label %408

408:                                              ; preds = %405, %29
  ret void
}

declare dso_local i32 @show_log(%struct.rev_info*) #1

declare dso_local i32 @commit_format_is_empty(i32) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local i8* @diff_line_prefix(%struct.diff_options*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @copy_pathspec(i32*, i32*) #1

declare dso_local %struct.obj_order* @find_paths_generic(%struct.object_id*, %struct.oid_array*, %struct.diff_options*, i32) #1

declare dso_local %struct.obj_order* @find_paths_multitree(%struct.object_id*, %struct.oid_array*, %struct.diff_options*) #1

declare dso_local i32 @diff_tree_oid(i32*, %struct.object_id*, i8*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local i32 @diffcore_order(i64) #1

declare dso_local i32 @diff_flush(%struct.diff_options*) #1

declare dso_local i32 @ALLOC_ARRAY(%struct.obj_order*, i32) #1

declare dso_local i32 @order_objects(i64, i32, %struct.obj_order*, i32) #1

declare dso_local i32 @free(%struct.obj_order*) #1

declare dso_local i32 @show_raw_diff(%struct.obj_order*, i32, %struct.rev_info*) #1

declare dso_local i32 @handle_combined_callback(%struct.diff_options*, %struct.obj_order*, i32, i32) #1

declare dso_local i32 @show_patch_diff(%struct.obj_order*, i32, i32, i32, %struct.rev_info*) #1

declare dso_local i64 @filename_changed(i32) #1

declare dso_local i32 @strbuf_release(i32*) #1

declare dso_local i32 @clear_pathspec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
