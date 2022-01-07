; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_cmd_diff_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_diff-tree.c_cmd_diff_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_7__, i64 }
%struct.TYPE_9__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.object* }
%struct.object = type { i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.setup_revision_opt = type { i32 }
%struct.object_id = type { i32 }

@cmd_diff_tree.opt = internal global %struct.rev_info* @log_tree_opt, align 8
@log_tree_opt = common dso_local global %struct.rev_info zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c"-h\00", align 1
@diff_tree_usage = common dso_local global i32 0, align 4
@git_diff_basic_config = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"index file corrupt\00", align 1
@diff_tree_tweak_rev = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"--stdin\00", align 1
@UNINTERESTING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@the_index = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@DIFF_SETUP_USE_SIZE_CACHE = common dso_local global i32 0, align 4
@stdin = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_diff_tree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca [1000 x i8], align 16
  %8 = alloca %struct.object*, align 8
  %9 = alloca %struct.object*, align 8
  %10 = alloca %struct.setup_revision_opt, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.object_id, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 2
  br i1 %17, label %18, label %27

18:                                               ; preds = %3
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @strcmp(i8* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @diff_tree_usage, align 4
  %26 = call i32 @usage(i32 %25)
  br label %27

27:                                               ; preds = %24, %18, %3
  %28 = load i32, i32* @git_diff_basic_config, align 4
  %29 = call i32 @git_config(i32 %28, i32* null)
  %30 = load i32, i32* @the_repository, align 4
  %31 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @repo_init_revisions(i32 %30, %struct.rev_info* %31, i8* %32)
  %34 = call i64 (...) @read_cache()
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = call i32 @die(i32 %37)
  br label %39

39:                                               ; preds = %36, %27
  %40 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %41 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %43 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %42, i32 0, i32 0
  store i32 1, i32* %43, align 8
  %44 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %45 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %44, i32 0, i32 1
  store i32 1, i32* %45, align 4
  %46 = call i32 @memset(%struct.setup_revision_opt* %10, i32 0, i32 4)
  %47 = load i32, i32* @diff_tree_tweak_rev, align 4
  %48 = getelementptr inbounds %struct.setup_revision_opt, %struct.setup_revision_opt* %10, i32 0, i32 0
  store i32 %47, i32* %48, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i8**, i8*** %5, align 8
  %51 = call i32 @precompose_argv(i32 %49, i8** %50)
  %52 = load i32, i32* %4, align 4
  %53 = load i8**, i8*** %5, align 8
  %54 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %55 = call i32 @setup_revisions(i32 %52, i8** %53, %struct.rev_info* %54, %struct.setup_revision_opt* %10)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %68, %67, %39
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  %59 = icmp sgt i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load i8**, i8*** %5, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i32 1
  store i8** %62, i8*** %5, align 8
  %63 = load i8*, i8** %62, align 8
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %60
  store i32 1, i32* %11, align 4
  br label %56

68:                                               ; preds = %60
  %69 = load i32, i32* @diff_tree_usage, align 4
  %70 = call i32 @usage(i32 %69)
  br label %56

71:                                               ; preds = %56
  %72 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %73 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  switch i32 %75, label %129 [
    i32 0, label %76
    i32 1, label %83
    i32 2, label %94
  ]

76:                                               ; preds = %71
  %77 = load i32, i32* %11, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @diff_tree_usage, align 4
  %81 = call i32 @usage(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  br label %129

83:                                               ; preds = %71
  %84 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %85 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i64 0
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.object*, %struct.object** %89, align 8
  store %struct.object* %90, %struct.object** %8, align 8
  %91 = load %struct.object*, %struct.object** %8, align 8
  %92 = getelementptr inbounds %struct.object, %struct.object* %91, i32 0, i32 1
  %93 = call i32 @diff_tree_commit_oid(i32* %92)
  br label %129

94:                                               ; preds = %71
  %95 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %96 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 1
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i64 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load %struct.object*, %struct.object** %100, align 8
  store %struct.object* %101, %struct.object** %8, align 8
  %102 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %103 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %102, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 1
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i64 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.object*, %struct.object** %107, align 8
  store %struct.object* %108, %struct.object** %9, align 8
  %109 = load %struct.object*, %struct.object** %9, align 8
  %110 = getelementptr inbounds %struct.object, %struct.object* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @UNINTERESTING, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %94
  %116 = load %struct.object*, %struct.object** %9, align 8
  %117 = load %struct.object*, %struct.object** %8, align 8
  %118 = call i32 @SWAP(%struct.object* %116, %struct.object* %117)
  br label %119

119:                                              ; preds = %115, %94
  %120 = load %struct.object*, %struct.object** %8, align 8
  %121 = getelementptr inbounds %struct.object, %struct.object* %120, i32 0, i32 1
  %122 = load %struct.object*, %struct.object** %9, align 8
  %123 = getelementptr inbounds %struct.object, %struct.object* %122, i32 0, i32 1
  %124 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %125 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %124, i32 0, i32 2
  %126 = call i32 @diff_tree_oid(i32* %121, i32* %123, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_9__* %125)
  %127 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %128 = call i32 @log_tree_diff_flush(%struct.rev_info* %127)
  br label %129

129:                                              ; preds = %71, %119, %83, %82
  %130 = load i32, i32* %11, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %199

132:                                              ; preds = %129
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %133 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %134 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %151

138:                                              ; preds = %132
  %139 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @the_index, i32 0, i32 0), align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i32, i32* @the_repository, align 4
  %143 = call i32 @repo_read_index(i32 %142)
  br label %144

144:                                              ; preds = %141, %138
  %145 = load i32, i32* @DIFF_SETUP_USE_SIZE_CACHE, align 4
  %146 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %147 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %145
  store i32 %150, i32* %148, align 8
  br label %151

151:                                              ; preds = %144, %132
  br label %152

152:                                              ; preds = %189, %151
  %153 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %154 = load i32, i32* @stdin, align 4
  %155 = call i64 @fgets(i8* %153, i32 1000, i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %190

157:                                              ; preds = %152
  %158 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %159 = call i64 @get_oid_hex(i8* %158, %struct.object_id* %15)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %157
  %162 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %163 = load i32, i32* @stdout, align 4
  %164 = call i32 @fputs(i8* %162, i32 %163)
  %165 = load i32, i32* @stdout, align 4
  %166 = call i32 @fflush(i32 %165)
  br label %189

167:                                              ; preds = %157
  %168 = getelementptr inbounds [1000 x i8], [1000 x i8]* %7, i64 0, i64 0
  %169 = call i32 @diff_tree_stdin(i8* %168)
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %172 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %171, i32 0, i32 2
  %173 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = icmp slt i32 %170, %174
  br i1 %175, label %176, label %181

176:                                              ; preds = %167
  %177 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %178 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %177, i32 0, i32 2
  %179 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %176, %167
  %182 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %183 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32 1, i32* %14, align 4
  br label %188

188:                                              ; preds = %187, %181
  br label %189

189:                                              ; preds = %188, %161
  br label %152

190:                                              ; preds = %152
  %191 = load i32, i32* %14, align 4
  %192 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %193 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %192, i32 0, i32 2
  %194 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %193, i32 0, i32 1
  store i32 %191, i32* %194, align 4
  %195 = load i32, i32* %13, align 4
  %196 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %197 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %197, i32 0, i32 0
  store i32 %195, i32* %198, align 8
  br label %199

199:                                              ; preds = %190, %129
  %200 = load %struct.rev_info*, %struct.rev_info** @cmd_diff_tree.opt, align 8
  %201 = getelementptr inbounds %struct.rev_info, %struct.rev_info* %200, i32 0, i32 2
  %202 = call i32 @diff_result_code(%struct.TYPE_9__* %201, i32 0)
  ret i32 %202
}

declare dso_local i32 @strcmp(i8*, i8*) #1

declare dso_local i32 @usage(i32) #1

declare dso_local i32 @git_config(i32, i32*) #1

declare dso_local i32 @repo_init_revisions(i32, %struct.rev_info*, i8*) #1

declare dso_local i64 @read_cache(...) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @memset(%struct.setup_revision_opt*, i32, i32) #1

declare dso_local i32 @precompose_argv(i32, i8**) #1

declare dso_local i32 @setup_revisions(i32, i8**, %struct.rev_info*, %struct.setup_revision_opt*) #1

declare dso_local i32 @diff_tree_commit_oid(i32*) #1

declare dso_local i32 @SWAP(%struct.object*, %struct.object*) #1

declare dso_local i32 @diff_tree_oid(i32*, i32*, i8*, %struct.TYPE_9__*) #1

declare dso_local i32 @log_tree_diff_flush(%struct.rev_info*) #1

declare dso_local i32 @repo_read_index(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32) #1

declare dso_local i64 @get_oid_hex(i8*, %struct.object_id*) #1

declare dso_local i32 @fputs(i8*, i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @diff_tree_stdin(i8*) #1

declare dso_local i32 @diff_result_code(%struct.TYPE_9__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
