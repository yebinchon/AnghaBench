; ModuleID = '/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_data.c'
source_filename = "/home/carl/AnghaBench/git/extr_commit-graph.c_write_graph_chunk_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashfile = type { i32 }
%struct.write_commit_graph_context = type { i32, i64, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.commit** }
%struct.commit = type { i32, i32, %struct.TYPE_8__, %struct.commit_list* }
%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.commit_list = type { %struct.commit_list*, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__ }
%struct.object_id = type { i32* }

@.str = private unnamed_addr constant [26 x i8] c"unable to parse commit %s\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"unable to get tree for %s\00", align 1
@GRAPH_PARENT_NONE = common dso_local global i32 0, align 4
@commit_to_sha1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"missing parent %s for commit %s\00", align 1
@GRAPH_EXTRA_EDGES_NEEDED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hashfile*, i32, %struct.write_commit_graph_context*)* @write_graph_chunk_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_graph_chunk_data(%struct.hashfile* %0, i32 %1, %struct.write_commit_graph_context* %2) #0 {
  %4 = alloca %struct.hashfile*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.write_commit_graph_context*, align 8
  %7 = alloca %struct.commit**, align 8
  %8 = alloca %struct.commit**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.commit_list*, align 8
  %11 = alloca %struct.object_id*, align 8
  %12 = alloca i32, align 4
  %13 = alloca [2 x i32], align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.hashfile* %0, %struct.hashfile** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.write_commit_graph_context* %2, %struct.write_commit_graph_context** %6, align 8
  %16 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %17 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  %19 = load %struct.commit**, %struct.commit*** %18, align 8
  store %struct.commit** %19, %struct.commit*** %7, align 8
  %20 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %21 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load %struct.commit**, %struct.commit*** %22, align 8
  %24 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %25 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.commit*, %struct.commit** %23, i64 %28
  store %struct.commit** %29, %struct.commit*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %30

30:                                               ; preds = %242, %3
  %31 = load %struct.commit**, %struct.commit*** %7, align 8
  %32 = load %struct.commit**, %struct.commit*** %8, align 8
  %33 = icmp ult %struct.commit** %31, %32
  br i1 %33, label %34, label %264

34:                                               ; preds = %30
  %35 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %36 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %39 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 8
  %42 = call i32 @display_progress(i32 %37, i32 %41)
  %43 = load %struct.commit**, %struct.commit*** %7, align 8
  %44 = load %struct.commit*, %struct.commit** %43, align 8
  %45 = call i64 @parse_commit_no_graph(%struct.commit* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %55

47:                                               ; preds = %34
  %48 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.commit**, %struct.commit*** %7, align 8
  %50 = load %struct.commit*, %struct.commit** %49, align 8
  %51 = getelementptr inbounds %struct.commit, %struct.commit* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = call i32 @oid_to_hex(%struct.TYPE_9__* %52)
  %54 = call i32 @die(i32 %48, i32 %53)
  br label %55

55:                                               ; preds = %47, %34
  %56 = load %struct.commit**, %struct.commit*** %7, align 8
  %57 = load %struct.commit*, %struct.commit** %56, align 8
  %58 = call %struct.object_id* @get_commit_tree_oid(%struct.commit* %57)
  store %struct.object_id* %58, %struct.object_id** %11, align 8
  %59 = load %struct.object_id*, %struct.object_id** %11, align 8
  %60 = icmp ne %struct.object_id* %59, null
  br i1 %60, label %69, label %61

61:                                               ; preds = %55
  %62 = call i32 @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.commit**, %struct.commit*** %7, align 8
  %64 = load %struct.commit*, %struct.commit** %63, align 8
  %65 = getelementptr inbounds %struct.commit, %struct.commit* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = call i32 @oid_to_hex(%struct.TYPE_9__* %66)
  %68 = call i32 @die(i32 %62, i32 %67)
  br label %69

69:                                               ; preds = %61, %55
  %70 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %71 = load %struct.object_id*, %struct.object_id** %11, align 8
  %72 = getelementptr inbounds %struct.object_id, %struct.object_id* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @hashwrite(%struct.hashfile* %70, i32* %73, i32 %74)
  %76 = load %struct.commit**, %struct.commit*** %7, align 8
  %77 = load %struct.commit*, %struct.commit** %76, align 8
  %78 = getelementptr inbounds %struct.commit, %struct.commit* %77, i32 0, i32 3
  %79 = load %struct.commit_list*, %struct.commit_list** %78, align 8
  store %struct.commit_list* %79, %struct.commit_list** %10, align 8
  %80 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %81 = icmp ne %struct.commit_list* %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %69
  %83 = load i32, i32* @GRAPH_PARENT_NONE, align 4
  store i32 %83, i32* %12, align 4
  br label %141

84:                                               ; preds = %69
  %85 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %86 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %85, i32 0, i32 1
  %87 = load %struct.TYPE_10__*, %struct.TYPE_10__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %93 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = load %struct.commit**, %struct.commit*** %94, align 8
  %96 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %97 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @commit_to_sha1, align 4
  %101 = call i32 @sha1_pos(i32 %91, %struct.commit** %95, i32 %99, i32 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i32, i32* %12, align 4
  %103 = icmp sge i32 %102, 0
  br i1 %103, label %104, label %112

104:                                              ; preds = %84
  %105 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %106 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i32, i32* %12, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %12, align 4
  br label %124

112:                                              ; preds = %84
  %113 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %114 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %117 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i64 @find_commit_in_graph(%struct.TYPE_10__* %115, i32 %118, i32* %14)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %112
  %122 = load i32, i32* %14, align 4
  store i32 %122, i32* %12, align 4
  br label %123

123:                                              ; preds = %121, %112
  br label %124

124:                                              ; preds = %123, %104
  %125 = load i32, i32* %12, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %140

127:                                              ; preds = %124
  %128 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %129 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %128, i32 0, i32 1
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = call i32 @oid_to_hex(%struct.TYPE_9__* %132)
  %134 = load %struct.commit**, %struct.commit*** %7, align 8
  %135 = load %struct.commit*, %struct.commit** %134, align 8
  %136 = getelementptr inbounds %struct.commit, %struct.commit* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = call i32 @oid_to_hex(%struct.TYPE_9__* %137)
  %139 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %133, i32 %138)
  br label %140

140:                                              ; preds = %127, %124
  br label %141

141:                                              ; preds = %140, %82
  %142 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @hashwrite_be32(%struct.hashfile* %142, i32 %143)
  %145 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %146 = icmp ne %struct.commit_list* %145, null
  br i1 %146, label %147, label %151

147:                                              ; preds = %141
  %148 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %149 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %148, i32 0, i32 0
  %150 = load %struct.commit_list*, %struct.commit_list** %149, align 8
  store %struct.commit_list* %150, %struct.commit_list** %10, align 8
  br label %151

151:                                              ; preds = %147, %141
  %152 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %153 = icmp ne %struct.commit_list* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %151
  %155 = load i32, i32* @GRAPH_PARENT_NONE, align 4
  store i32 %155, i32* %12, align 4
  br label %223

156:                                              ; preds = %151
  %157 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %158 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %157, i32 0, i32 0
  %159 = load %struct.commit_list*, %struct.commit_list** %158, align 8
  %160 = icmp ne %struct.commit_list* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %156
  %162 = load i32, i32* @GRAPH_EXTRA_EDGES_NEEDED, align 4
  %163 = load i32, i32* %9, align 4
  %164 = or i32 %162, %163
  store i32 %164, i32* %12, align 4
  br label %222

165:                                              ; preds = %156
  %166 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %167 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %166, i32 0, i32 1
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %174 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 1
  %176 = load %struct.commit**, %struct.commit*** %175, align 8
  %177 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %178 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* @commit_to_sha1, align 4
  %182 = call i32 @sha1_pos(i32 %172, %struct.commit** %176, i32 %180, i32 %181)
  store i32 %182, i32* %12, align 4
  %183 = load i32, i32* %12, align 4
  %184 = icmp sge i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %165
  %186 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %187 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = sext i32 %189 to i64
  %191 = add nsw i64 %190, %188
  %192 = trunc i64 %191 to i32
  store i32 %192, i32* %12, align 4
  br label %205

193:                                              ; preds = %165
  %194 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %195 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %194, i32 0, i32 1
  %196 = load %struct.TYPE_10__*, %struct.TYPE_10__** %195, align 8
  %197 = load %struct.write_commit_graph_context*, %struct.write_commit_graph_context** %6, align 8
  %198 = getelementptr inbounds %struct.write_commit_graph_context, %struct.write_commit_graph_context* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = call i64 @find_commit_in_graph(%struct.TYPE_10__* %196, i32 %199, i32* %15)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %193
  %203 = load i32, i32* %15, align 4
  store i32 %203, i32* %12, align 4
  br label %204

204:                                              ; preds = %202, %193
  br label %205

205:                                              ; preds = %204, %185
  %206 = load i32, i32* %12, align 4
  %207 = icmp slt i32 %206, 0
  br i1 %207, label %208, label %221

208:                                              ; preds = %205
  %209 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %210 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %209, i32 0, i32 1
  %211 = load %struct.TYPE_10__*, %struct.TYPE_10__** %210, align 8
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = call i32 @oid_to_hex(%struct.TYPE_9__* %213)
  %215 = load %struct.commit**, %struct.commit*** %7, align 8
  %216 = load %struct.commit*, %struct.commit** %215, align 8
  %217 = getelementptr inbounds %struct.commit, %struct.commit* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = call i32 @oid_to_hex(%struct.TYPE_9__* %218)
  %220 = call i32 @BUG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %214, i32 %219)
  br label %221

221:                                              ; preds = %208, %205
  br label %222

222:                                              ; preds = %221, %161
  br label %223

223:                                              ; preds = %222, %154
  %224 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %225 = load i32, i32* %12, align 4
  %226 = call i32 @hashwrite_be32(%struct.hashfile* %224, i32 %225)
  %227 = load i32, i32* %12, align 4
  %228 = load i32, i32* @GRAPH_EXTRA_EDGES_NEEDED, align 4
  %229 = and i32 %227, %228
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %242

231:                                              ; preds = %223
  br label %232

232:                                              ; preds = %238, %231
  %233 = load i32, i32* %9, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %9, align 4
  %235 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %236 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %235, i32 0, i32 0
  %237 = load %struct.commit_list*, %struct.commit_list** %236, align 8
  store %struct.commit_list* %237, %struct.commit_list** %10, align 8
  br label %238

238:                                              ; preds = %232
  %239 = load %struct.commit_list*, %struct.commit_list** %10, align 8
  %240 = icmp ne %struct.commit_list* %239, null
  br i1 %240, label %232, label %241

241:                                              ; preds = %238
  br label %242

242:                                              ; preds = %241, %223
  %243 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  store i32 0, i32* %243, align 4
  %244 = load %struct.commit**, %struct.commit*** %7, align 8
  %245 = load %struct.commit*, %struct.commit** %244, align 8
  %246 = getelementptr inbounds %struct.commit, %struct.commit* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 2
  %249 = call i32 @htonl(i32 %248)
  %250 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %251 = load i32, i32* %250, align 4
  %252 = or i32 %251, %249
  store i32 %252, i32* %250, align 4
  %253 = load %struct.commit**, %struct.commit*** %7, align 8
  %254 = load %struct.commit*, %struct.commit** %253, align 8
  %255 = getelementptr inbounds %struct.commit, %struct.commit* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @htonl(i32 %256)
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 1
  store i32 %257, i32* %258, align 4
  %259 = load %struct.hashfile*, %struct.hashfile** %4, align 8
  %260 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i64 0, i64 0
  %261 = call i32 @hashwrite(%struct.hashfile* %259, i32* %260, i32 8)
  %262 = load %struct.commit**, %struct.commit*** %7, align 8
  %263 = getelementptr inbounds %struct.commit*, %struct.commit** %262, i32 1
  store %struct.commit** %263, %struct.commit*** %7, align 8
  br label %30

264:                                              ; preds = %30
  ret void
}

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i64 @parse_commit_no_graph(%struct.commit*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @oid_to_hex(%struct.TYPE_9__*) #1

declare dso_local %struct.object_id* @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @hashwrite(%struct.hashfile*, i32*, i32) #1

declare dso_local i32 @sha1_pos(i32, %struct.commit**, i32, i32) #1

declare dso_local i64 @find_commit_in_graph(%struct.TYPE_10__*, i32, i32*) #1

declare dso_local i32 @BUG(i8*, i32, i32) #1

declare dso_local i32 @hashwrite_be32(%struct.hashfile*, i32) #1

declare dso_local i32 @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
