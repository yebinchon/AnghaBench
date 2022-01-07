; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_move_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_move_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.option = type { i32 }
%struct.worktree = type { i8* }

@.str = private unnamed_addr constant [47 x i8] c"force move even if worktree is dirty or locked\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@worktree_usage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"'%s' is not a working tree\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"'%s' is a main working tree\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"could not figure out destination name from '%s'\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"target '%s' already exists\00", align 1
@.str.5 = private unnamed_addr constant [96 x i8] c"cannot move a locked working tree, lock reason: %s\0Ause 'move -f -f' to override or unlock first\00", align 1
@.str.6 = private unnamed_addr constant [80 x i8] c"cannot move a locked working tree;\0Ause 'move -f -f' to override or unlock first\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"validation failed, cannot move working tree: %s\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"failed to move '%s' to '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @move_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @move_worktree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.option], align 4
  %9 = alloca %struct.worktree**, align 8
  %10 = alloca %struct.worktree*, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca %struct.strbuf, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %16 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %17 = call i32 @N_(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %19 = call i32 @OPT__FORCE(i32* %7, i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.option, %struct.option* %16, i32 0, i32 0
  store i32 %19, i32* %20, align 4
  %21 = getelementptr inbounds %struct.option, %struct.option* %16, i64 1
  %22 = call i32 (...) @OPT_END()
  %23 = getelementptr inbounds %struct.option, %struct.option* %21, i32 0, i32 0
  store i32 %22, i32* %23, align 4
  %24 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  %25 = bitcast %struct.strbuf* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i8* null, i8** %13, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %30 = load i32, i32* @worktree_usage, align 4
  %31 = call i32 @parse_options(i32 %26, i8** %27, i8* %28, %struct.option* %29, i32 %30, i32 0)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 2
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load i32, i32* @worktree_usage, align 4
  %36 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %37 = call i32 @usage_with_options(i32 %35, %struct.option* %36)
  br label %38

38:                                               ; preds = %34, %3
  %39 = load i8*, i8** %6, align 8
  %40 = load i8**, i8*** %5, align 8
  %41 = getelementptr inbounds i8*, i8** %40, i64 1
  %42 = load i8*, i8** %41, align 8
  %43 = call i8* @prefix_filename(i8* %39, i8* %42)
  store i8* %43, i8** %14, align 8
  %44 = load i8*, i8** %14, align 8
  %45 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* %44)
  %46 = load i8*, i8** %14, align 8
  %47 = call i32 @free(i8* %46)
  %48 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %48, %struct.worktree*** %9, align 8
  %49 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %50 = load i8*, i8** %6, align 8
  %51 = load i8**, i8*** %5, align 8
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = call %struct.worktree* @find_worktree(%struct.worktree** %49, i8* %50, i8* %53)
  store %struct.worktree* %54, %struct.worktree** %10, align 8
  %55 = load %struct.worktree*, %struct.worktree** %10, align 8
  %56 = icmp ne %struct.worktree* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %38
  %58 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i8**, i8*** %5, align 8
  %60 = getelementptr inbounds i8*, i8** %59, i64 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 (i32, ...) @die(i32 %58, i8* %61)
  br label %63

63:                                               ; preds = %57, %38
  %64 = load %struct.worktree*, %struct.worktree** %10, align 8
  %65 = call i64 @is_main_worktree(%struct.worktree* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %63
  %68 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i8**, i8*** %5, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i32 (i32, ...) @die(i32 %68, i8* %71)
  br label %73

73:                                               ; preds = %67, %63
  %74 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = call i64 @is_directory(i8* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %95

78:                                               ; preds = %73
  %79 = load %struct.worktree*, %struct.worktree** %10, align 8
  %80 = getelementptr inbounds %struct.worktree, %struct.worktree* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @find_last_dir_sep(i8* %81)
  store i8* %82, i8** %15, align 8
  %83 = load i8*, i8** %15, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %91, label %85

85:                                               ; preds = %78
  %86 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %87 = load %struct.worktree*, %struct.worktree** %10, align 8
  %88 = getelementptr inbounds %struct.worktree, %struct.worktree* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, ...) @die(i32 %86, i8* %89)
  br label %91

91:                                               ; preds = %85, %78
  %92 = call i32 @strbuf_trim_trailing_dir_sep(%struct.strbuf* %11)
  %93 = load i8*, i8** %15, align 8
  %94 = call i32 @strbuf_addstr(%struct.strbuf* %11, i8* %93)
  br label %95

95:                                               ; preds = %91, %73
  %96 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = call i64 @file_exists(i8* %97)
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %102 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = call i32 (i32, ...) @die(i32 %101, i8* %103)
  br label %105

105:                                              ; preds = %100, %95
  %106 = load %struct.worktree*, %struct.worktree** %10, align 8
  %107 = call i32 @validate_no_submodules(%struct.worktree* %106)
  %108 = load i32, i32* %7, align 4
  %109 = icmp slt i32 %108, 2
  br i1 %109, label %110, label %113

110:                                              ; preds = %105
  %111 = load %struct.worktree*, %struct.worktree** %10, align 8
  %112 = call i8* @worktree_lock_reason(%struct.worktree* %111)
  store i8* %112, i8** %13, align 8
  br label %113

113:                                              ; preds = %110, %105
  %114 = load i8*, i8** %13, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %116, label %127

116:                                              ; preds = %113
  %117 = load i8*, i8** %13, align 8
  %118 = load i8, i8* %117, align 1
  %119 = icmp ne i8 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %116
  %121 = call i32 @_(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str.5, i64 0, i64 0))
  %122 = load i8*, i8** %13, align 8
  %123 = call i32 (i32, ...) @die(i32 %121, i8* %122)
  br label %124

124:                                              ; preds = %120, %116
  %125 = call i32 @_(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.6, i64 0, i64 0))
  %126 = call i32 (i32, ...) @die(i32 %125)
  br label %127

127:                                              ; preds = %124, %113
  %128 = load %struct.worktree*, %struct.worktree** %10, align 8
  %129 = call i64 @validate_worktree(%struct.worktree* %128, %struct.strbuf* %12, i32 0)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %127
  %132 = call i32 @_(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  %133 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %12, i32 0, i32 0
  %134 = load i8*, i8** %133, align 8
  %135 = call i32 (i32, ...) @die(i32 %132, i8* %134)
  br label %136

136:                                              ; preds = %131, %127
  %137 = call i32 @strbuf_release(%struct.strbuf* %12)
  %138 = load %struct.worktree*, %struct.worktree** %10, align 8
  %139 = getelementptr inbounds %struct.worktree, %struct.worktree* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @rename(i8* %140, i8* %142)
  %144 = icmp eq i32 %143, -1
  br i1 %144, label %145, label %153

145:                                              ; preds = %136
  %146 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0))
  %147 = load %struct.worktree*, %struct.worktree** %10, align 8
  %148 = getelementptr inbounds %struct.worktree, %struct.worktree* %147, i32 0, i32 0
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %151 = load i8*, i8** %150, align 8
  %152 = call i32 @die_errno(i32 %146, i8* %149, i8* %151)
  br label %153

153:                                              ; preds = %145, %136
  %154 = load %struct.worktree*, %struct.worktree** %10, align 8
  %155 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @update_worktree_location(%struct.worktree* %154, i8* %156)
  %158 = call i32 @strbuf_release(%struct.strbuf* %11)
  %159 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %160 = call i32 @free_worktrees(%struct.worktree** %159)
  ret i32 0
}

declare dso_local i32 @OPT__FORCE(i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local i8* @prefix_filename(i8*, i8*) #1

declare dso_local i32 @strbuf_addstr(%struct.strbuf*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local %struct.worktree* @find_worktree(%struct.worktree**, i8*, i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @is_main_worktree(%struct.worktree*) #1

declare dso_local i64 @is_directory(i8*) #1

declare dso_local i8* @find_last_dir_sep(i8*) #1

declare dso_local i32 @strbuf_trim_trailing_dir_sep(%struct.strbuf*) #1

declare dso_local i64 @file_exists(i8*) #1

declare dso_local i32 @validate_no_submodules(%struct.worktree*) #1

declare dso_local i8* @worktree_lock_reason(%struct.worktree*) #1

declare dso_local i64 @validate_worktree(%struct.worktree*, %struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i32 @rename(i8*, i8*) #1

declare dso_local i32 @die_errno(i32, i8*, i8*) #1

declare dso_local i32 @update_worktree_location(%struct.worktree*, i8*) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
