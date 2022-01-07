; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_find_copy_in_parent.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_find_copy_in_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, %struct.diff_filepair** }
%struct.diff_filepair = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.blame_scoreboard = type { i64, i32, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.blame_entry = type { %struct.blame_entry*, i64 }
%struct.commit = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.blame_origin = type { %struct.blame_entry*, i32, i32, i32, %struct.commit* }
%struct.diff_options = type { i32, %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.blame_list = type { %struct.blame_entry*, %struct.blame_entry* }
%struct.TYPE_12__ = type { i32 }

@DIFF_FORMAT_NO_OUTPUT = common dso_local global i32 0, align 4
@PICKAXE_BLAME_COPY_HARDEST = common dso_local global i32 0, align 4
@PICKAXE_BLAME_COPY_HARDER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@diff_queued_diff = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.blame_scoreboard*, %struct.blame_entry***, %struct.blame_entry**, %struct.blame_origin*, %struct.commit*, %struct.blame_origin*, i32)* @find_copy_in_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_copy_in_parent(%struct.blame_scoreboard* %0, %struct.blame_entry*** %1, %struct.blame_entry** %2, %struct.blame_origin* %3, %struct.commit* %4, %struct.blame_origin* %5, i32 %6) #0 {
  %8 = alloca %struct.blame_scoreboard*, align 8
  %9 = alloca %struct.blame_entry***, align 8
  %10 = alloca %struct.blame_entry**, align 8
  %11 = alloca %struct.blame_origin*, align 8
  %12 = alloca %struct.commit*, align 8
  %13 = alloca %struct.blame_origin*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.diff_options, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.blame_list*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.blame_entry*, align 8
  %21 = alloca %struct.blame_entry*, align 8
  %22 = alloca %struct.blame_entry**, align 8
  %23 = alloca %struct.diff_filepair*, align 8
  %24 = alloca %struct.blame_origin*, align 8
  %25 = alloca %struct.TYPE_12__, align 4
  %26 = alloca [3 x %struct.blame_entry], align 16
  %27 = alloca %struct.blame_entry*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %8, align 8
  store %struct.blame_entry*** %1, %struct.blame_entry**** %9, align 8
  store %struct.blame_entry** %2, %struct.blame_entry*** %10, align 8
  store %struct.blame_origin* %3, %struct.blame_origin** %11, align 8
  store %struct.commit* %4, %struct.commit** %12, align 8
  store %struct.blame_origin* %5, %struct.blame_origin** %13, align 8
  store i32 %6, i32* %14, align 4
  %28 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %29 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %28, i32 0, i32 0
  %30 = load %struct.blame_entry*, %struct.blame_entry** %29, align 8
  store %struct.blame_entry* %30, %struct.blame_entry** %20, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %21, align 8
  %31 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %32 = icmp ne %struct.blame_entry* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %7
  br label %287

34:                                               ; preds = %7
  %35 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %36 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @repo_diff_setup(i32 %37, %struct.diff_options* %15)
  %39 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  %41 = load i32, i32* @DIFF_FORMAT_NO_OUTPUT, align 4
  %42 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = call i32 @diff_setup_done(%struct.diff_options* %15)
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @PICKAXE_BLAME_COPY_HARDEST, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %34
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* @PICKAXE_BLAME_COPY_HARDER, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.blame_origin*, %struct.blame_origin** %13, align 8
  %55 = icmp ne %struct.blame_origin* %54, null
  br i1 %55, label %56, label %65

56:                                               ; preds = %53
  %57 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %58 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.blame_origin*, %struct.blame_origin** %13, align 8
  %61 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @strcmp(i32 %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56, %53, %34
  %66 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 1
  store i32 1, i32* %67, align 4
  br label %68

68:                                               ; preds = %65, %56, %48
  %69 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %70 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %69, i32 0, i32 4
  %71 = load %struct.commit*, %struct.commit** %70, align 8
  %72 = getelementptr inbounds %struct.commit, %struct.commit* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = call i64 @is_null_oid(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %68
  %77 = load %struct.commit*, %struct.commit** %12, align 8
  %78 = call i32 @get_commit_tree_oid(%struct.commit* %77)
  %79 = call i32 @do_diff_cache(i32 %78, %struct.diff_options* %15)
  br label %88

80:                                               ; preds = %68
  %81 = load %struct.commit*, %struct.commit** %12, align 8
  %82 = call i32 @get_commit_tree_oid(%struct.commit* %81)
  %83 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %84 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %83, i32 0, i32 4
  %85 = load %struct.commit*, %struct.commit** %84, align 8
  %86 = call i32 @get_commit_tree_oid(%struct.commit* %85)
  %87 = call i32 @diff_tree_oid(i32 %82, i32 %86, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), %struct.diff_options* %15)
  br label %88

88:                                               ; preds = %80, %76
  %89 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 @diffcore_std(%struct.diff_options* %15)
  br label %95

95:                                               ; preds = %93, %88
  br label %96

96:                                               ; preds = %276, %95
  store %struct.blame_entry** %20, %struct.blame_entry*** %22, align 8
  %97 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %98 = call %struct.blame_list* @setup_blame_list(%struct.blame_entry* %97, i32* %19)
  store %struct.blame_list* %98, %struct.blame_list** %18, align 8
  store i32 0, i32* %16, align 4
  br label %99

99:                                               ; preds = %206, %96
  %100 = load i32, i32* %16, align 4
  %101 = load i32, i32* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @diff_queued_diff, i32 0, i32 0), align 8
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %209

103:                                              ; preds = %99
  %104 = load %struct.diff_filepair**, %struct.diff_filepair*** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @diff_queued_diff, i32 0, i32 1), align 8
  %105 = load i32, i32* %16, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.diff_filepair*, %struct.diff_filepair** %104, i64 %106
  %108 = load %struct.diff_filepair*, %struct.diff_filepair** %107, align 8
  store %struct.diff_filepair* %108, %struct.diff_filepair** %23, align 8
  %109 = load %struct.diff_filepair*, %struct.diff_filepair** %23, align 8
  %110 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %109, i32 0, i32 0
  %111 = load %struct.TYPE_14__*, %struct.TYPE_14__** %110, align 8
  %112 = call i32 @DIFF_FILE_VALID(%struct.TYPE_14__* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %103
  br label %206

115:                                              ; preds = %103
  %116 = load %struct.diff_filepair*, %struct.diff_filepair** %23, align 8
  %117 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i64 @S_ISGITLINK(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  br label %206

124:                                              ; preds = %115
  %125 = load %struct.blame_origin*, %struct.blame_origin** %13, align 8
  %126 = icmp ne %struct.blame_origin* %125, null
  br i1 %126, label %127, label %139

127:                                              ; preds = %124
  %128 = load %struct.diff_filepair*, %struct.diff_filepair** %23, align 8
  %129 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %128, i32 0, i32 0
  %130 = load %struct.TYPE_14__*, %struct.TYPE_14__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.blame_origin*, %struct.blame_origin** %13, align 8
  %134 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i64 @strcmp(i32 %132, i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %139, label %138

138:                                              ; preds = %127
  br label %206

139:                                              ; preds = %127, %124
  %140 = load %struct.commit*, %struct.commit** %12, align 8
  %141 = load %struct.diff_filepair*, %struct.diff_filepair** %23, align 8
  %142 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %141, i32 0, i32 0
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 2
  %145 = load i32, i32* %144, align 4
  %146 = call %struct.blame_origin* @get_origin(%struct.commit* %140, i32 %145)
  store %struct.blame_origin* %146, %struct.blame_origin** %24, align 8
  %147 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %148 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %147, i32 0, i32 2
  %149 = load %struct.diff_filepair*, %struct.diff_filepair** %23, align 8
  %150 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %149, i32 0, i32 0
  %151 = load %struct.TYPE_14__*, %struct.TYPE_14__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %151, i32 0, i32 1
  %153 = call i32 @oidcpy(i32* %148, i32* %152)
  %154 = load %struct.diff_filepair*, %struct.diff_filepair** %23, align 8
  %155 = getelementptr inbounds %struct.diff_filepair, %struct.diff_filepair* %154, i32 0, i32 0
  %156 = load %struct.TYPE_14__*, %struct.TYPE_14__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %160 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 8
  %161 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %162 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %161, i32 0, i32 2
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 0
  %165 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %166 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %167 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %166, i32 0, i32 1
  %168 = call i32 @fill_origin_blob(i32* %164, %struct.blame_origin* %165, %struct.TYPE_12__* %25, i32* %167, i32 0)
  %169 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %139
  br label %206

173:                                              ; preds = %139
  store i32 0, i32* %17, align 4
  br label %174

174:                                              ; preds = %200, %173
  %175 = load i32, i32* %17, align 4
  %176 = load i32, i32* %19, align 4
  %177 = icmp slt i32 %175, %176
  br i1 %177, label %178, label %203

178:                                              ; preds = %174
  %179 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %180 = load %struct.blame_list*, %struct.blame_list** %18, align 8
  %181 = load i32, i32* %17, align 4
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %180, i64 %182
  %184 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %183, i32 0, i32 0
  %185 = load %struct.blame_entry*, %struct.blame_entry** %184, align 8
  %186 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %187 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %26, i64 0, i64 0
  %188 = call i32 @find_copy_in_blob(%struct.blame_scoreboard* %179, %struct.blame_entry* %185, %struct.blame_origin* %186, %struct.blame_entry* %187, %struct.TYPE_12__* %25)
  %189 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %190 = load %struct.blame_list*, %struct.blame_list** %18, align 8
  %191 = load i32, i32* %17, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %190, i64 %192
  %194 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %193, i32 0, i32 1
  %195 = load %struct.blame_entry*, %struct.blame_entry** %194, align 8
  %196 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %26, i64 0, i64 0
  %197 = call i32 @copy_split_if_better(%struct.blame_scoreboard* %189, %struct.blame_entry* %195, %struct.blame_entry* %196)
  %198 = getelementptr inbounds [3 x %struct.blame_entry], [3 x %struct.blame_entry]* %26, i64 0, i64 0
  %199 = call i32 @decref_split(%struct.blame_entry* %198)
  br label %200

200:                                              ; preds = %178
  %201 = load i32, i32* %17, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %17, align 4
  br label %174

203:                                              ; preds = %174
  %204 = load %struct.blame_origin*, %struct.blame_origin** %24, align 8
  %205 = call i32 @blame_origin_decref(%struct.blame_origin* %204)
  br label %206

206:                                              ; preds = %203, %172, %138, %123, %114
  %207 = load i32, i32* %16, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %16, align 4
  br label %99

209:                                              ; preds = %99
  store i32 0, i32* %17, align 4
  br label %210

210:                                              ; preds = %263, %209
  %211 = load i32, i32* %17, align 4
  %212 = load i32, i32* %19, align 4
  %213 = icmp slt i32 %211, %212
  br i1 %213, label %214, label %266

214:                                              ; preds = %210
  %215 = load %struct.blame_list*, %struct.blame_list** %18, align 8
  %216 = load i32, i32* %17, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %215, i64 %217
  %219 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %218, i32 0, i32 1
  %220 = load %struct.blame_entry*, %struct.blame_entry** %219, align 8
  store %struct.blame_entry* %220, %struct.blame_entry** %27, align 8
  %221 = load %struct.blame_entry*, %struct.blame_entry** %27, align 8
  %222 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %221, i64 1
  %223 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %222, i32 0, i32 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %245

226:                                              ; preds = %214
  %227 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %228 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %231 = load %struct.blame_entry*, %struct.blame_entry** %27, align 8
  %232 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %231, i64 1
  %233 = call i64 @blame_entry_score(%struct.blame_scoreboard* %230, %struct.blame_entry* %232)
  %234 = icmp slt i64 %229, %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %226
  %236 = load %struct.blame_entry***, %struct.blame_entry**** %9, align 8
  %237 = load %struct.blame_entry*, %struct.blame_entry** %27, align 8
  %238 = load %struct.blame_list*, %struct.blame_list** %18, align 8
  %239 = load i32, i32* %17, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %238, i64 %240
  %242 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %241, i32 0, i32 0
  %243 = load %struct.blame_entry*, %struct.blame_entry** %242, align 8
  %244 = call i32 @split_blame(%struct.blame_entry*** %236, %struct.blame_entry*** %22, %struct.blame_entry* %237, %struct.blame_entry* %243)
  br label %260

245:                                              ; preds = %226, %214
  %246 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %247 = load %struct.blame_list*, %struct.blame_list** %18, align 8
  %248 = load i32, i32* %17, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %247, i64 %249
  %251 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %250, i32 0, i32 0
  %252 = load %struct.blame_entry*, %struct.blame_entry** %251, align 8
  %253 = getelementptr inbounds %struct.blame_entry, %struct.blame_entry* %252, i32 0, i32 0
  store %struct.blame_entry* %246, %struct.blame_entry** %253, align 8
  %254 = load %struct.blame_list*, %struct.blame_list** %18, align 8
  %255 = load i32, i32* %17, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %254, i64 %256
  %258 = getelementptr inbounds %struct.blame_list, %struct.blame_list* %257, i32 0, i32 0
  %259 = load %struct.blame_entry*, %struct.blame_entry** %258, align 8
  store %struct.blame_entry* %259, %struct.blame_entry** %21, align 8
  br label %260

260:                                              ; preds = %245, %235
  %261 = load %struct.blame_entry*, %struct.blame_entry** %27, align 8
  %262 = call i32 @decref_split(%struct.blame_entry* %261)
  br label %263

263:                                              ; preds = %260
  %264 = load i32, i32* %17, align 4
  %265 = add nsw i32 %264, 1
  store i32 %265, i32* %17, align 4
  br label %210

266:                                              ; preds = %210
  %267 = load %struct.blame_list*, %struct.blame_list** %18, align 8
  %268 = call i32 @free(%struct.blame_list* %267)
  %269 = load %struct.blame_entry**, %struct.blame_entry*** %22, align 8
  store %struct.blame_entry* null, %struct.blame_entry** %269, align 8
  %270 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %271 = load %struct.blame_entry**, %struct.blame_entry*** %10, align 8
  %272 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %8, align 8
  %273 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %272, i32 0, i32 0
  %274 = load i64, i64* %273, align 8
  %275 = call %struct.blame_entry** @filter_small(%struct.blame_scoreboard* %270, %struct.blame_entry** %271, %struct.blame_entry** %20, i64 %274)
  store %struct.blame_entry** %275, %struct.blame_entry*** %10, align 8
  br label %276

276:                                              ; preds = %266
  %277 = load %struct.blame_entry*, %struct.blame_entry** %20, align 8
  %278 = icmp ne %struct.blame_entry* %277, null
  br i1 %278, label %96, label %279

279:                                              ; preds = %276
  %280 = load %struct.blame_entry*, %struct.blame_entry** %21, align 8
  %281 = call %struct.blame_entry* @reverse_blame(%struct.blame_entry* %280, i32* null)
  %282 = load %struct.blame_origin*, %struct.blame_origin** %11, align 8
  %283 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %282, i32 0, i32 0
  store %struct.blame_entry* %281, %struct.blame_entry** %283, align 8
  %284 = call i32 @diff_flush(%struct.diff_options* %15)
  %285 = getelementptr inbounds %struct.diff_options, %struct.diff_options* %15, i32 0, i32 0
  %286 = call i32 @clear_pathspec(i32* %285)
  br label %287

287:                                              ; preds = %279, %33
  ret void
}

declare dso_local i32 @repo_diff_setup(i32, %struct.diff_options*) #1

declare dso_local i32 @diff_setup_done(%struct.diff_options*) #1

declare dso_local i64 @strcmp(i32, i32) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local i32 @do_diff_cache(i32, %struct.diff_options*) #1

declare dso_local i32 @get_commit_tree_oid(%struct.commit*) #1

declare dso_local i32 @diff_tree_oid(i32, i32, i8*, %struct.diff_options*) #1

declare dso_local i32 @diffcore_std(%struct.diff_options*) #1

declare dso_local %struct.blame_list* @setup_blame_list(%struct.blame_entry*, i32*) #1

declare dso_local i32 @DIFF_FILE_VALID(%struct.TYPE_14__*) #1

declare dso_local i64 @S_ISGITLINK(i32) #1

declare dso_local %struct.blame_origin* @get_origin(%struct.commit*, i32) #1

declare dso_local i32 @oidcpy(i32*, i32*) #1

declare dso_local i32 @fill_origin_blob(i32*, %struct.blame_origin*, %struct.TYPE_12__*, i32*, i32) #1

declare dso_local i32 @find_copy_in_blob(%struct.blame_scoreboard*, %struct.blame_entry*, %struct.blame_origin*, %struct.blame_entry*, %struct.TYPE_12__*) #1

declare dso_local i32 @copy_split_if_better(%struct.blame_scoreboard*, %struct.blame_entry*, %struct.blame_entry*) #1

declare dso_local i32 @decref_split(%struct.blame_entry*) #1

declare dso_local i32 @blame_origin_decref(%struct.blame_origin*) #1

declare dso_local i64 @blame_entry_score(%struct.blame_scoreboard*, %struct.blame_entry*) #1

declare dso_local i32 @split_blame(%struct.blame_entry***, %struct.blame_entry***, %struct.blame_entry*, %struct.blame_entry*) #1

declare dso_local i32 @free(%struct.blame_list*) #1

declare dso_local %struct.blame_entry** @filter_small(%struct.blame_scoreboard*, %struct.blame_entry**, %struct.blame_entry**, i64) #1

declare dso_local %struct.blame_entry* @reverse_blame(%struct.blame_entry*, i32*) #1

declare dso_local i32 @diff_flush(%struct.diff_options*) #1

declare dso_local i32 @clear_pathspec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
