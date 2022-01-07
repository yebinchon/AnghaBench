; ModuleID = '/home/carl/AnghaBench/git/extr_blame.c_setup_scoreboard.c'
source_filename = "/home/carl/AnghaBench/git/extr_blame.c_setup_scoreboard.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.blame_scoreboard = type { i32, i64, i32, i32, %struct.TYPE_25__*, %struct.TYPE_26__*, i64, i64, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { %struct.TYPE_17__, %struct.TYPE_19__, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_24__ }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_19__ = type { i8* }
%struct.TYPE_26__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_21__ = type { i32 }
%struct.blame_origin = type { i32, i32, %struct.TYPE_23__ }
%struct.TYPE_23__ = type { i32, i32 }
%struct.commit = type { %struct.TYPE_20__, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { %struct.commit* }
%struct.commit_list = type { %struct.commit* }

@blame_suspects = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"--contents and --reverse do not blend well.\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"repo is NULL\00", align 1
@compare_commits_by_commit_date = common dso_local global i32 0, align 4
@compare_commits_by_reverse_commit_date = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"cannot use --contents with final commit object name\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"--reverse and --first-parent together require specified latest commit\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"revision walk setup failed\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"children\00", align 1
@.str.7 = private unnamed_addr constant [38 x i8] c"not unique item in first-parent chain\00", align 1
@.str.8 = private unnamed_addr constant [73 x i8] c"--reverse --first-parent together require range along first-parent chain\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"no such path %s in %s\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"cannot read blob %s for path %s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @setup_scoreboard(%struct.blame_scoreboard* %0, i8* %1, %struct.blame_origin** %2) #0 {
  %4 = alloca %struct.blame_scoreboard*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.blame_origin**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.blame_origin*, align 8
  %9 = alloca %struct.commit*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.commit*, align 8
  %12 = alloca %struct.commit_list*, align 8
  store %struct.blame_scoreboard* %0, %struct.blame_scoreboard** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.blame_origin** %2, %struct.blame_origin*** %6, align 8
  store i8* null, i8** %7, align 8
  store %struct.commit* null, %struct.commit** %9, align 8
  %13 = call i32 @init_blame_suspects(i32* @blame_suspects)
  %14 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %15 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %3
  %19 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %20 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %19, i32 0, i32 7
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = call i32 @_(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  %25 = call i32 (i32, ...) @die(i32 %24)
  br label %26

26:                                               ; preds = %23, %18, %3
  %27 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %28 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %26
  %32 = call i32 @BUG(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %26
  %34 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %35 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %34, i32 0, i32 6
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %33
  %39 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %40 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %39, i32 0, i32 4
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %40, align 8
  %42 = call i8* @find_single_final(%struct.TYPE_25__* %41, i8** %7)
  %43 = bitcast i8* %42 to %struct.TYPE_26__*
  %44 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %45 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %44, i32 0, i32 5
  store %struct.TYPE_26__* %43, %struct.TYPE_26__** %45, align 8
  %46 = load i32, i32* @compare_commits_by_commit_date, align 4
  %47 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %48 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  br label %61

50:                                               ; preds = %33
  %51 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %52 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %51, i32 0, i32 4
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %52, align 8
  %54 = call %struct.TYPE_26__* @find_single_initial(%struct.TYPE_25__* %53, i8** %7)
  %55 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %56 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %55, i32 0, i32 5
  store %struct.TYPE_26__* %54, %struct.TYPE_26__** %56, align 8
  %57 = load i32, i32* @compare_commits_by_reverse_commit_date, align 4
  %58 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %59 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %58, i32 0, i32 8
  %60 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %59, i32 0, i32 0
  store i32 %57, i32* %60, align 8
  br label %61

61:                                               ; preds = %50, %38
  %62 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %63 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %62, i32 0, i32 5
  %64 = load %struct.TYPE_26__*, %struct.TYPE_26__** %63, align 8
  %65 = icmp ne %struct.TYPE_26__* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %68 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %67, i32 0, i32 7
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = call i32 @_(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %73 = call i32 (i32, ...) @die(i32 %72)
  br label %74

74:                                               ; preds = %71, %66, %61
  %75 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %76 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %75, i32 0, i32 6
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %81 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %80, i32 0, i32 4
  %82 = load %struct.TYPE_25__*, %struct.TYPE_25__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %79
  %87 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %88 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %87, i32 0, i32 4
  %89 = load %struct.TYPE_25__*, %struct.TYPE_25__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 0
  store i8* null, i8** %91, align 8
  br label %92

92:                                               ; preds = %86, %79, %74
  %93 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %94 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %93, i32 0, i32 5
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %94, align 8
  %96 = icmp ne %struct.TYPE_26__* %95, null
  br i1 %96, label %121, label %97

97:                                               ; preds = %92
  %98 = call i32 (...) @setup_work_tree()
  %99 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %100 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %103 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %102, i32 0, i32 4
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %104, i32 0, i32 0
  %106 = load i8*, i8** %5, align 8
  %107 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %108 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %107, i32 0, i32 7
  %109 = load i64, i64* %108, align 8
  %110 = call %struct.TYPE_26__* @fake_working_tree_commit(i32 %101, %struct.TYPE_17__* %105, i8* %106, i64 %109)
  %111 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %112 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %111, i32 0, i32 5
  store %struct.TYPE_26__* %110, %struct.TYPE_26__** %112, align 8
  %113 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %114 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %113, i32 0, i32 4
  %115 = load %struct.TYPE_25__*, %struct.TYPE_25__** %114, align 8
  %116 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %117 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %116, i32 0, i32 5
  %118 = load %struct.TYPE_26__*, %struct.TYPE_26__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %118, i32 0, i32 0
  %120 = call i32 @add_pending_object(%struct.TYPE_25__* %115, %struct.TYPE_18__* %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %121

121:                                              ; preds = %97, %92
  %122 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %123 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %145

126:                                              ; preds = %121
  %127 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %128 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %127, i32 0, i32 4
  %129 = load %struct.TYPE_25__*, %struct.TYPE_25__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %145

133:                                              ; preds = %126
  %134 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %135 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %134, i32 0, i32 4
  %136 = load %struct.TYPE_25__*, %struct.TYPE_25__** %135, align 8
  %137 = call i8* @find_single_final(%struct.TYPE_25__* %136, i8** null)
  %138 = bitcast i8* %137 to %struct.commit*
  store %struct.commit* %138, %struct.commit** %9, align 8
  %139 = load %struct.commit*, %struct.commit** %9, align 8
  %140 = icmp ne %struct.commit* %139, null
  br i1 %140, label %144, label %141

141:                                              ; preds = %133
  %142 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %143 = call i32 (i32, ...) @die(i32 %142)
  br label %144

144:                                              ; preds = %141, %133
  br label %145

145:                                              ; preds = %144, %126, %121
  %146 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %147 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %146, i32 0, i32 4
  %148 = load %struct.TYPE_25__*, %struct.TYPE_25__** %147, align 8
  %149 = call i64 @prepare_revision_walk(%struct.TYPE_25__* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %154

151:                                              ; preds = %145
  %152 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %153 = call i32 (i32, ...) @die(i32 %152)
  br label %154

154:                                              ; preds = %151, %145
  %155 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %156 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %155, i32 0, i32 6
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %233

159:                                              ; preds = %154
  %160 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %161 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %160, i32 0, i32 4
  %162 = load %struct.TYPE_25__*, %struct.TYPE_25__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %162, i32 0, i32 2
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %233

166:                                              ; preds = %159
  %167 = load %struct.commit*, %struct.commit** %9, align 8
  store %struct.commit* %167, %struct.commit** %11, align 8
  %168 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %169 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %168, i32 0, i32 4
  %170 = load %struct.TYPE_25__*, %struct.TYPE_25__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %171, i32 0, i32 0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i8** %172, align 8
  br label %173

173:                                              ; preds = %212, %166
  %174 = load %struct.commit*, %struct.commit** %11, align 8
  %175 = getelementptr inbounds %struct.commit, %struct.commit* %174, i32 0, i32 1
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %175, align 8
  %177 = icmp ne %struct.TYPE_22__* %176, null
  br i1 %177, label %178, label %190

178:                                              ; preds = %173
  %179 = load %struct.commit*, %struct.commit** %11, align 8
  %180 = getelementptr inbounds %struct.commit, %struct.commit* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 0
  %182 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %183 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %182, i32 0, i32 5
  %184 = load %struct.TYPE_26__*, %struct.TYPE_26__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  %187 = call i32 @oideq(i32* %181, i32* %186)
  %188 = icmp ne i32 %187, 0
  %189 = xor i1 %188, true
  br label %190

190:                                              ; preds = %178, %173
  %191 = phi i1 [ false, %173 ], [ %189, %178 ]
  br i1 %191, label %192, label %218

192:                                              ; preds = %190
  %193 = call %struct.commit_list* @xcalloc(i32 1, i32 8)
  store %struct.commit_list* %193, %struct.commit_list** %12, align 8
  %194 = load %struct.commit*, %struct.commit** %11, align 8
  %195 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %196 = getelementptr inbounds %struct.commit_list, %struct.commit_list* %195, i32 0, i32 0
  store %struct.commit* %194, %struct.commit** %196, align 8
  %197 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %198 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %197, i32 0, i32 4
  %199 = load %struct.TYPE_25__*, %struct.TYPE_25__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %199, i32 0, i32 1
  %201 = load %struct.commit*, %struct.commit** %11, align 8
  %202 = getelementptr inbounds %struct.commit, %struct.commit* %201, i32 0, i32 1
  %203 = load %struct.TYPE_22__*, %struct.TYPE_22__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %203, i32 0, i32 0
  %205 = load %struct.commit*, %struct.commit** %204, align 8
  %206 = getelementptr inbounds %struct.commit, %struct.commit* %205, i32 0, i32 0
  %207 = load %struct.commit_list*, %struct.commit_list** %12, align 8
  %208 = call i64 @add_decoration(%struct.TYPE_19__* %200, %struct.TYPE_20__* %206, %struct.commit_list* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %192
  %211 = call i32 @BUG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.7, i64 0, i64 0))
  br label %212

212:                                              ; preds = %210, %192
  %213 = load %struct.commit*, %struct.commit** %11, align 8
  %214 = getelementptr inbounds %struct.commit, %struct.commit* %213, i32 0, i32 1
  %215 = load %struct.TYPE_22__*, %struct.TYPE_22__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %215, i32 0, i32 0
  %217 = load %struct.commit*, %struct.commit** %216, align 8
  store %struct.commit* %217, %struct.commit** %11, align 8
  br label %173

218:                                              ; preds = %190
  %219 = load %struct.commit*, %struct.commit** %11, align 8
  %220 = getelementptr inbounds %struct.commit, %struct.commit* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %220, i32 0, i32 0
  %222 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %223 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %222, i32 0, i32 5
  %224 = load %struct.TYPE_26__*, %struct.TYPE_26__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %225, i32 0, i32 0
  %227 = call i32 @oideq(i32* %221, i32* %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %232, label %229

229:                                              ; preds = %218
  %230 = call i32 @_(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.8, i64 0, i64 0))
  %231 = call i32 (i32, ...) @die(i32 %230)
  br label %232

232:                                              ; preds = %229, %218
  br label %233

233:                                              ; preds = %232, %159, %154
  %234 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %235 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %234, i32 0, i32 5
  %236 = load %struct.TYPE_26__*, %struct.TYPE_26__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %237, i32 0, i32 0
  %239 = call i64 @is_null_oid(i32* %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %263

241:                                              ; preds = %233
  %242 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %243 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %242, i32 0, i32 5
  %244 = load %struct.TYPE_26__*, %struct.TYPE_26__** %243, align 8
  %245 = call %struct.blame_origin* @get_blame_suspects(%struct.TYPE_26__* %244)
  store %struct.blame_origin* %245, %struct.blame_origin** %8, align 8
  %246 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %247 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %246, i32 0, i32 2
  %248 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %251 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = call i64 @xmemdupz(i32 %249, i32 %253)
  %255 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %256 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %255, i32 0, i32 1
  store i64 %254, i64* %256, align 8
  %257 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %258 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %262 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %261, i32 0, i32 2
  store i32 %260, i32* %262, align 8
  br label %328

263:                                              ; preds = %233
  %264 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %265 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %264, i32 0, i32 5
  %266 = load %struct.TYPE_26__*, %struct.TYPE_26__** %265, align 8
  %267 = load i8*, i8** %5, align 8
  %268 = call %struct.blame_origin* @get_origin(%struct.TYPE_26__* %266, i8* %267)
  store %struct.blame_origin* %268, %struct.blame_origin** %8, align 8
  %269 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %270 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %273 = call i64 @fill_blob_sha1_and_mode(i32 %271, %struct.blame_origin* %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %263
  %276 = call i32 @_(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0))
  %277 = load i8*, i8** %5, align 8
  %278 = load i8*, i8** %7, align 8
  %279 = call i32 (i32, ...) @die(i32 %276, i8* %277, i8* %278)
  br label %280

280:                                              ; preds = %275, %263
  %281 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %282 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %281, i32 0, i32 4
  %283 = load %struct.TYPE_25__*, %struct.TYPE_25__** %282, align 8
  %284 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %283, i32 0, i32 0
  %285 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %307

289:                                              ; preds = %280
  %290 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %291 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %290, i32 0, i32 3
  %292 = load i32, i32* %291, align 4
  %293 = load i8*, i8** %5, align 8
  %294 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %295 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %298 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %297, i32 0, i32 0
  %299 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %300 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %299, i32 0, i32 1
  %301 = bitcast i64* %300 to i8**
  %302 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %303 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %302, i32 0, i32 2
  %304 = call i64 @textconv_object(i32 %292, i8* %293, i32 %296, i32* %298, i32 1, i8** %301, i32* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %307

306:                                              ; preds = %289
  br label %315

307:                                              ; preds = %289, %280
  %308 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %309 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %308, i32 0, i32 0
  %310 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %311 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %310, i32 0, i32 2
  %312 = call i64 @read_object_file(i32* %309, i32* %10, i32* %311)
  %313 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %314 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %313, i32 0, i32 1
  store i64 %312, i64* %314, align 8
  br label %315

315:                                              ; preds = %307, %306
  %316 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %317 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %316, i32 0, i32 1
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %327, label %320

320:                                              ; preds = %315
  %321 = call i32 @_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  %322 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %323 = getelementptr inbounds %struct.blame_origin, %struct.blame_origin* %322, i32 0, i32 0
  %324 = call i8* @oid_to_hex(i32* %323)
  %325 = load i8*, i8** %5, align 8
  %326 = call i32 (i32, ...) @die(i32 %321, i8* %324, i8* %325)
  br label %327

327:                                              ; preds = %320, %315
  br label %328

328:                                              ; preds = %327, %241
  %329 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %330 = getelementptr inbounds %struct.blame_scoreboard, %struct.blame_scoreboard* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %330, align 8
  %333 = load %struct.blame_scoreboard*, %struct.blame_scoreboard** %4, align 8
  %334 = call i32 @prepare_lines(%struct.blame_scoreboard* %333)
  %335 = load %struct.blame_origin**, %struct.blame_origin*** %6, align 8
  %336 = icmp ne %struct.blame_origin** %335, null
  br i1 %336, label %337, label %340

337:                                              ; preds = %328
  %338 = load %struct.blame_origin*, %struct.blame_origin** %8, align 8
  %339 = load %struct.blame_origin**, %struct.blame_origin*** %6, align 8
  store %struct.blame_origin* %338, %struct.blame_origin** %339, align 8
  br label %340

340:                                              ; preds = %337, %328
  %341 = load i8*, i8** %7, align 8
  %342 = call i32 @free(i8* %341)
  ret void
}

declare dso_local i32 @init_blame_suspects(i32*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @BUG(i8*) #1

declare dso_local i8* @find_single_final(%struct.TYPE_25__*, i8**) #1

declare dso_local %struct.TYPE_26__* @find_single_initial(%struct.TYPE_25__*, i8**) #1

declare dso_local i32 @setup_work_tree(...) #1

declare dso_local %struct.TYPE_26__* @fake_working_tree_commit(i32, %struct.TYPE_17__*, i8*, i64) #1

declare dso_local i32 @add_pending_object(%struct.TYPE_25__*, %struct.TYPE_18__*, i8*) #1

declare dso_local i64 @prepare_revision_walk(%struct.TYPE_25__*) #1

declare dso_local i32 @oideq(i32*, i32*) #1

declare dso_local %struct.commit_list* @xcalloc(i32, i32) #1

declare dso_local i64 @add_decoration(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.commit_list*) #1

declare dso_local i64 @is_null_oid(i32*) #1

declare dso_local %struct.blame_origin* @get_blame_suspects(%struct.TYPE_26__*) #1

declare dso_local i64 @xmemdupz(i32, i32) #1

declare dso_local %struct.blame_origin* @get_origin(%struct.TYPE_26__*, i8*) #1

declare dso_local i64 @fill_blob_sha1_and_mode(i32, %struct.blame_origin*) #1

declare dso_local i64 @textconv_object(i32, i8*, i32, i32*, i32, i8**, i32*) #1

declare dso_local i64 @read_object_file(i32*, i32*, i32*) #1

declare dso_local i8* @oid_to_hex(i32*) #1

declare dso_local i32 @prepare_lines(%struct.blame_scoreboard*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
