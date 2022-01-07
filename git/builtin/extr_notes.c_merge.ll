; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_notes.c_merge.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_notes.c_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8*, i64 }
%struct.object_id = type { i32 }
%struct.notes_tree = type { i32 }
%struct.notes_merge_options = type { i32, i8*, i8*, i32, i32 }
%struct.option = type { i32 }
%struct.worktree = type { i32 }

@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@.str = private unnamed_addr constant [16 x i8] c"General options\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"Merge options\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"strategy\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"resolve notes conflicts using the given strategy (manual/ours/theirs/union/cat_sort_uniq)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Committing unmerged notes\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"finalize notes merge by committing unmerged notes\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [32 x i8] c"Aborting notes merge resolution\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@.str.9 = private unnamed_addr constant [18 x i8] c"abort notes merge\00", align 1
@git_notes_merge_usage = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [46 x i8] c"cannot mix --commit, --abort or -s/--strategy\00", align 1
@.str.11 = private unnamed_addr constant [34 x i8] c"must specify a notes ref to merge\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"too many parameters\00", align 1
@the_repository = common dso_local global i32 0, align 4
@NOTES_MERGE_VERBOSITY_DEFAULT = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [6 x i8] c"merge\00", align 1
@NOTES_INIT_WRITABLE = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [26 x i8] c"unknown -s/--strategy: %s\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"refs/notes/\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"local ref %s is outside of refs/notes/\00", align 1
@.str.17 = private unnamed_addr constant [23 x i8] c"notes.%s.mergeStrategy\00", align 1
@.str.18 = private unnamed_addr constant [20 x i8] c"notes.mergeStrategy\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"notes: Merged notes from %s into %s\00", align 1
@UPDATE_REFS_DIE_ON_ERR = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [20 x i8] c"NOTES_MERGE_PARTIAL\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"NOTES_MERGE_REF\00", align 1
@.str.22 = private unnamed_addr constant [51 x i8] c"a notes merge into %s is already in-progress at %s\00", align 1
@.str.23 = private unnamed_addr constant [47 x i8] c"failed to store link to current notes ref (%s)\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.24 = private unnamed_addr constant [157 x i8] c"Automatic notes merge failed. Fix conflicts in %s and commit the result with 'git notes merge --commit', or abort the merge with 'git notes merge --abort'.\0A\00", align 1
@NOTES_MERGE_WORKTREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @merge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @merge(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8**, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.strbuf, align 8
  %9 = alloca %struct.strbuf, align 8
  %10 = alloca %struct.object_id, align 4
  %11 = alloca %struct.notes_tree*, align 8
  %12 = alloca %struct.notes_merge_options, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca [9 x %struct.option], align 16
  %20 = alloca %struct.strbuf, align 8
  %21 = alloca i8*, align 8
  %22 = alloca %struct.worktree*, align 8
  store i32 %0, i32* %5, align 4
  store i8** %1, i8*** %6, align 8
  store i8* %2, i8** %7, align 8
  %23 = bitcast %struct.strbuf* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  %24 = bitcast %struct.strbuf* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i8* null, i8** %18, align 8
  %25 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %19, i64 0, i64 0
  %26 = call i32 @N_(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %27 = call i32 @OPT_GROUP(i32 %26)
  %28 = getelementptr inbounds %struct.option, %struct.option* %25, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = getelementptr inbounds %struct.option, %struct.option* %25, i64 1
  %30 = call i32 @OPT__VERBOSITY(i32* %16)
  %31 = getelementptr inbounds %struct.option, %struct.option* %29, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.option, %struct.option* %29, i64 1
  %33 = call i32 @N_(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @OPT_GROUP(i32 %33)
  %35 = getelementptr inbounds %struct.option, %struct.option* %32, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = getelementptr inbounds %struct.option, %struct.option* %32, i64 1
  %37 = call i32 @N_(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @N_(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0))
  %39 = call i32 @OPT_STRING(i8 signext 115, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %18, i32 %37, i32 %38)
  %40 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = getelementptr inbounds %struct.option, %struct.option* %36, i64 1
  %42 = call i32 @N_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %43 = call i32 @OPT_GROUP(i32 %42)
  %44 = getelementptr inbounds %struct.option, %struct.option* %41, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds %struct.option, %struct.option* %41, i64 1
  %46 = call i32 @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %48 = call i32 @OPT_SET_INT_F(i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32* %14, i32 %46, i32 1, i32 %47)
  %49 = getelementptr inbounds %struct.option, %struct.option* %45, i32 0, i32 0
  store i32 %48, i32* %49, align 4
  %50 = getelementptr inbounds %struct.option, %struct.option* %45, i64 1
  %51 = call i32 @N_(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  %52 = call i32 @OPT_GROUP(i32 %51)
  %53 = getelementptr inbounds %struct.option, %struct.option* %50, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.option, %struct.option* %50, i64 1
  %55 = call i32 @N_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.9, i64 0, i64 0))
  %56 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %57 = call i32 @OPT_SET_INT_F(i32 0, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.8, i64 0, i64 0), i32* %15, i32 %55, i32 1, i32 %56)
  %58 = getelementptr inbounds %struct.option, %struct.option* %54, i32 0, i32 0
  store i32 %57, i32* %58, align 4
  %59 = getelementptr inbounds %struct.option, %struct.option* %54, i64 1
  %60 = call i32 (...) @OPT_END()
  %61 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %5, align 4
  %63 = load i8**, i8*** %6, align 8
  %64 = load i8*, i8** %7, align 8
  %65 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %19, i64 0, i64 0
  %66 = load i32, i32* @git_notes_merge_usage, align 4
  %67 = call i32 @parse_options(i32 %62, i8** %63, i8* %64, %struct.option* %65, i32 %66, i32 0)
  store i32 %67, i32* %5, align 4
  %68 = load i8*, i8** %18, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %75, label %70

70:                                               ; preds = %3
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %15, align 4
  %73 = add nsw i32 %71, %72
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %70, %3
  store i32 1, i32* %13, align 4
  br label %76

76:                                               ; preds = %75, %70
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %14, align 4
  %79 = add nsw i32 %77, %78
  %80 = load i32, i32* %15, align 4
  %81 = add nsw i32 %79, %80
  %82 = icmp ne i32 %81, 1
  br i1 %82, label %83, label %89

83:                                               ; preds = %76
  %84 = call i8* @_(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.10, i64 0, i64 0))
  %85 = call i32 (i8*, ...) @error(i8* %84)
  %86 = load i32, i32* @git_notes_merge_usage, align 4
  %87 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %19, i64 0, i64 0
  %88 = call i32 @usage_with_options(i32 %86, %struct.option* %87)
  br label %89

89:                                               ; preds = %83, %76
  %90 = load i32, i32* %13, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %101

92:                                               ; preds = %89
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 1
  br i1 %94, label %95, label %101

95:                                               ; preds = %92
  %96 = call i8* @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.11, i64 0, i64 0))
  %97 = call i32 (i8*, ...) @error(i8* %96)
  %98 = load i32, i32* @git_notes_merge_usage, align 4
  %99 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %19, i64 0, i64 0
  %100 = call i32 @usage_with_options(i32 %98, %struct.option* %99)
  br label %114

101:                                              ; preds = %92, %89
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %113, label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %5, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = call i8* @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  %109 = call i32 (i8*, ...) @error(i8* %108)
  %110 = load i32, i32* @git_notes_merge_usage, align 4
  %111 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %19, i64 0, i64 0
  %112 = call i32 @usage_with_options(i32 %110, %struct.option* %111)
  br label %113

113:                                              ; preds = %107, %104, %101
  br label %114

114:                                              ; preds = %113, %95
  %115 = load i32, i32* @the_repository, align 4
  %116 = call i32 @init_notes_merge_options(i32 %115, %struct.notes_merge_options* %12)
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* @NOTES_MERGE_VERBOSITY_DEFAULT, align 4
  %119 = add nsw i32 %117, %118
  %120 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 0
  store i32 %119, i32* %120, align 8
  %121 = load i32, i32* %15, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %125

123:                                              ; preds = %114
  %124 = call i32 @merge_abort(%struct.notes_merge_options* %12)
  store i32 %124, i32* %4, align 4
  br label %242

125:                                              ; preds = %114
  %126 = load i32, i32* %14, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %125
  %129 = call i32 @merge_commit(%struct.notes_merge_options* %12)
  store i32 %129, i32* %4, align 4
  br label %242

130:                                              ; preds = %125
  %131 = call i8* (...) @default_notes_ref()
  %132 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 1
  store i8* %131, i8** %132, align 8
  %133 = load i8**, i8*** %6, align 8
  %134 = getelementptr inbounds i8*, i8** %133, i64 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 @strbuf_addstr(%struct.strbuf* %8, i8* %135)
  %137 = call i32 @expand_loose_notes_ref(%struct.strbuf* %8)
  %138 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 2
  store i8* %139, i8** %140, align 8
  %141 = load i32, i32* @NOTES_INIT_WRITABLE, align 4
  %142 = call %struct.notes_tree* @init_notes_check(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.13, i64 0, i64 0), i32 %141)
  store %struct.notes_tree* %142, %struct.notes_tree** %11, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %158

145:                                              ; preds = %130
  %146 = load i8*, i8** %18, align 8
  %147 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 4
  %148 = call i64 @parse_notes_merge_strategy(i8* %146, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = call i8* @_(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  %152 = load i8*, i8** %18, align 8
  %153 = call i32 (i8*, ...) @error(i8* %151, i8* %152)
  %154 = load i32, i32* @git_notes_merge_usage, align 4
  %155 = getelementptr inbounds [9 x %struct.option], [9 x %struct.option]* %19, i64 0, i64 0
  %156 = call i32 @usage_with_options(i32 %154, %struct.option* %155)
  br label %157

157:                                              ; preds = %150, %145
  br label %181

158:                                              ; preds = %130
  %159 = bitcast %struct.strbuf* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %159, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 16, i1 false)
  store i8* null, i8** %21, align 8
  %160 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 1
  %161 = load i8*, i8** %160, align 8
  %162 = call i32 @skip_prefix(i8* %161, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), i8** %21)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %168, label %164

164:                                              ; preds = %158
  %165 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @BUG(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0), i8* %166)
  br label %168

168:                                              ; preds = %164, %158
  %169 = load i8*, i8** %21, align 8
  %170 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %20, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.17, i64 0, i64 0), i8* %169)
  %171 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %20, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 4
  %174 = call i64 @git_config_get_notes_strategy(i8* %172, i32* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %168
  %177 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 4
  %178 = call i64 @git_config_get_notes_strategy(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.18, i64 0, i64 0), i32* %177)
  br label %179

179:                                              ; preds = %176, %168
  %180 = call i32 @strbuf_release(%struct.strbuf* %20)
  br label %181

181:                                              ; preds = %179, %157
  %182 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %8, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = call i8* (...) @default_notes_ref()
  %185 = call i32 (%struct.strbuf*, i8*, i8*, ...) @strbuf_addf(%struct.strbuf* %9, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8* %183, i8* %184)
  %186 = getelementptr inbounds %struct.notes_merge_options, %struct.notes_merge_options* %12, i32 0, i32 3
  %187 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %188 = load i8*, i8** %187, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 7
  %190 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 1
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %191, 7
  %193 = call i32 @strbuf_add(i32* %186, i8* %189, i64 %192)
  %194 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %195 = call i32 @notes_merge(%struct.notes_merge_options* %12, %struct.notes_tree* %194, %struct.object_id* %10)
  store i32 %195, i32* %17, align 4
  %196 = load i32, i32* %17, align 4
  %197 = icmp sge i32 %196, 0
  br i1 %197, label %198, label %204

198:                                              ; preds = %181
  %199 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = call i8* (...) @default_notes_ref()
  %202 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %203 = call i32 @update_ref(i8* %200, i8* %201, %struct.object_id* %10, i32* null, i32 0, i32 %202)
  br label %234

204:                                              ; preds = %181
  %205 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %9, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = load i32, i32* @UPDATE_REFS_DIE_ON_ERR, align 4
  %208 = call i32 @update_ref(i8* %206, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.20, i64 0, i64 0), %struct.object_id* %10, i32* null, i32 0, i32 %207)
  %209 = call i8* (...) @default_notes_ref()
  %210 = call %struct.worktree* @find_shared_symref(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %209)
  store %struct.worktree* %210, %struct.worktree** %22, align 8
  %211 = load %struct.worktree*, %struct.worktree** %22, align 8
  %212 = icmp ne %struct.worktree* %211, null
  br i1 %212, label %213, label %220

213:                                              ; preds = %204
  %214 = call i8* @_(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.22, i64 0, i64 0))
  %215 = call i8* (...) @default_notes_ref()
  %216 = load %struct.worktree*, %struct.worktree** %22, align 8
  %217 = getelementptr inbounds %struct.worktree, %struct.worktree* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = call i32 (i8*, i8*, ...) @die(i8* %214, i8* %215, i32 %218)
  br label %220

220:                                              ; preds = %213, %204
  %221 = call i8* (...) @default_notes_ref()
  %222 = call i64 @create_symref(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i8* %221, i32* null)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %220
  %225 = call i8* @_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.23, i64 0, i64 0))
  %226 = call i8* (...) @default_notes_ref()
  %227 = call i32 (i8*, i8*, ...) @die(i8* %225, i8* %226)
  br label %228

228:                                              ; preds = %224, %220
  %229 = load i32, i32* @stderr, align 4
  %230 = call i8* @_(i8* getelementptr inbounds ([157 x i8], [157 x i8]* @.str.24, i64 0, i64 0))
  %231 = load i32, i32* @NOTES_MERGE_WORKTREE, align 4
  %232 = call i8* @git_path(i32 %231)
  %233 = call i32 @fprintf(i32 %229, i8* %230, i8* %232)
  br label %234

234:                                              ; preds = %228, %198
  %235 = load %struct.notes_tree*, %struct.notes_tree** %11, align 8
  %236 = call i32 @free_notes(%struct.notes_tree* %235)
  %237 = call i32 @strbuf_release(%struct.strbuf* %8)
  %238 = call i32 @strbuf_release(%struct.strbuf* %9)
  %239 = load i32, i32* %17, align 4
  %240 = icmp slt i32 %239, 0
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %4, align 4
  br label %242

242:                                              ; preds = %234, %128, %123
  %243 = load i32, i32* %4, align 4
  ret i32 %243
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @OPT_GROUP(i32) #2

declare dso_local i32 @N_(i8*) #2

declare dso_local i32 @OPT__VERBOSITY(i32*) #2

declare dso_local i32 @OPT_STRING(i8 signext, i8*, i8**, i32, i32) #2

declare dso_local i32 @OPT_SET_INT_F(i32, i8*, i32*, i32, i32, i32) #2

declare dso_local i32 @OPT_END(...) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #2

declare dso_local i32 @error(i8*, ...) #2

declare dso_local i8* @_(i8*) #2

declare dso_local i32 @usage_with_options(i32, %struct.option*) #2

declare dso_local i32 @init_notes_merge_options(i32, %struct.notes_merge_options*) #2

declare dso_local i32 @merge_abort(%struct.notes_merge_options*) #2

declare dso_local i32 @merge_commit(%struct.notes_merge_options*) #2

declare dso_local i8* @default_notes_ref(...) #2

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #2

declare dso_local i32 @expand_loose_notes_ref(%struct.strbuf*) #2

declare dso_local %struct.notes_tree* @init_notes_check(i8*, i32) #2

declare dso_local i64 @parse_notes_merge_strategy(i8*, i32*) #2

declare dso_local i32 @skip_prefix(i8*, i8*, i8**) #2

declare dso_local i32 @BUG(i8*, i8*) #2

declare dso_local i32 @strbuf_addf(%struct.strbuf*, i8*, i8*, ...) #2

declare dso_local i64 @git_config_get_notes_strategy(i8*, i32*) #2

declare dso_local i32 @strbuf_release(%struct.strbuf*) #2

declare dso_local i32 @strbuf_add(i32*, i8*, i64) #2

declare dso_local i32 @notes_merge(%struct.notes_merge_options*, %struct.notes_tree*, %struct.object_id*) #2

declare dso_local i32 @update_ref(i8*, i8*, %struct.object_id*, i32*, i32, i32) #2

declare dso_local %struct.worktree* @find_shared_symref(i8*, i8*) #2

declare dso_local i32 @die(i8*, i8*, ...) #2

declare dso_local i64 @create_symref(i8*, i8*, i32*) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @git_path(i32) #2

declare dso_local i32 @free_notes(%struct.notes_tree*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
