; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_remove_worktree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_remove_worktree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i8* }
%struct.option = type { i32 }
%struct.worktree = type { i32, i32 }

@.str = private unnamed_addr constant [50 x i8] c"force removal even if worktree is dirty or locked\00", align 1
@PARSE_OPT_NOCOMPLETE = common dso_local global i32 0, align 4
@STRBUF_INIT = common dso_local global %struct.strbuf zeroinitializer, align 8
@worktree_usage = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"'%s' is not a working tree\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"'%s' is a main working tree\00", align 1
@.str.3 = private unnamed_addr constant [100 x i8] c"cannot remove a locked working tree, lock reason: %s\0Ause 'remove -f -f' to override or unlock first\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"cannot remove a locked working tree;\0Ause 'remove -f -f' to override or unlock first\00", align 1
@WT_VALIDATE_WORKTREE_MISSING_OK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [50 x i8] c"validation failed, cannot remove working tree: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @remove_worktree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_worktree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.option], align 4
  %9 = alloca %struct.worktree**, align 8
  %10 = alloca %struct.worktree*, align 8
  %11 = alloca %struct.strbuf, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %14 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %15 = call i32 @N_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @PARSE_OPT_NOCOMPLETE, align 4
  %17 = call i32 @OPT__FORCE(i32* %7, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.option, %struct.option* %14, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = getelementptr inbounds %struct.option, %struct.option* %14, i64 1
  %20 = call i32 (...) @OPT_END()
  %21 = getelementptr inbounds %struct.option, %struct.option* %19, i32 0, i32 0
  store i32 %20, i32* %21, align 4
  %22 = bitcast %struct.strbuf* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 bitcast (%struct.strbuf* @STRBUF_INIT to i8*), i64 8, i1 false)
  store i8* null, i8** %12, align 8
  store i32 0, i32* %13, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i8**, i8*** %5, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %27 = load i32, i32* @worktree_usage, align 4
  %28 = call i32 @parse_options(i32 %23, i8** %24, i8* %25, %struct.option* %26, i32 %27, i32 0)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 1
  br i1 %30, label %31, label %35

31:                                               ; preds = %3
  %32 = load i32, i32* @worktree_usage, align 4
  %33 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %34 = call i32 @usage_with_options(i32 %32, %struct.option* %33)
  br label %35

35:                                               ; preds = %31, %3
  %36 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %36, %struct.worktree*** %9, align 8
  %37 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = load i8**, i8*** %5, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  %41 = load i8*, i8** %40, align 8
  %42 = call %struct.worktree* @find_worktree(%struct.worktree** %37, i8* %38, i8* %41)
  store %struct.worktree* %42, %struct.worktree** %10, align 8
  %43 = load %struct.worktree*, %struct.worktree** %10, align 8
  %44 = icmp ne %struct.worktree* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = call i32 @_(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i8**, i8*** %5, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = call i32 (i32, ...) @die(i32 %46, i8* %49)
  br label %51

51:                                               ; preds = %45, %35
  %52 = load %struct.worktree*, %struct.worktree** %10, align 8
  %53 = call i64 @is_main_worktree(%struct.worktree* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = call i32 @_(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %57 = load i8**, i8*** %5, align 8
  %58 = getelementptr inbounds i8*, i8** %57, i64 0
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i32, ...) @die(i32 %56, i8* %59)
  br label %61

61:                                               ; preds = %55, %51
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %62, 2
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load %struct.worktree*, %struct.worktree** %10, align 8
  %66 = call i8* @worktree_lock_reason(%struct.worktree* %65)
  store i8* %66, i8** %12, align 8
  br label %67

67:                                               ; preds = %64, %61
  %68 = load i8*, i8** %12, align 8
  %69 = icmp ne i8* %68, null
  br i1 %69, label %70, label %81

70:                                               ; preds = %67
  %71 = load i8*, i8** %12, align 8
  %72 = load i8, i8* %71, align 1
  %73 = icmp ne i8 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.3, i64 0, i64 0))
  %76 = load i8*, i8** %12, align 8
  %77 = call i32 (i32, ...) @die(i32 %75, i8* %76)
  br label %78

78:                                               ; preds = %74, %70
  %79 = call i32 @_(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0))
  %80 = call i32 (i32, ...) @die(i32 %79)
  br label %81

81:                                               ; preds = %78, %67
  %82 = load %struct.worktree*, %struct.worktree** %10, align 8
  %83 = load i32, i32* @WT_VALIDATE_WORKTREE_MISSING_OK, align 4
  %84 = call i64 @validate_worktree(%struct.worktree* %82, %struct.strbuf* %11, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %81
  %87 = call i32 @_(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0))
  %88 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %11, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 (i32, ...) @die(i32 %87, i8* %89)
  br label %91

91:                                               ; preds = %86, %81
  %92 = call i32 @strbuf_release(%struct.strbuf* %11)
  %93 = load %struct.worktree*, %struct.worktree** %10, align 8
  %94 = getelementptr inbounds %struct.worktree, %struct.worktree* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @file_exists(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %112

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %107, label %101

101:                                              ; preds = %98
  %102 = load %struct.worktree*, %struct.worktree** %10, align 8
  %103 = load i8**, i8*** %5, align 8
  %104 = getelementptr inbounds i8*, i8** %103, i64 0
  %105 = load i8*, i8** %104, align 8
  %106 = call i32 @check_clean_worktree(%struct.worktree* %102, i8* %105)
  br label %107

107:                                              ; preds = %101, %98
  %108 = load %struct.worktree*, %struct.worktree** %10, align 8
  %109 = call i32 @delete_git_work_tree(%struct.worktree* %108)
  %110 = load i32, i32* %13, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %13, align 4
  br label %112

112:                                              ; preds = %107, %91
  %113 = load %struct.worktree*, %struct.worktree** %10, align 8
  %114 = getelementptr inbounds %struct.worktree, %struct.worktree* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = call i32 @delete_git_dir(i32 %115)
  %117 = load i32, i32* %13, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %13, align 4
  %119 = call i32 (...) @delete_worktrees_dir_if_empty()
  %120 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %121 = call i32 @free_worktrees(%struct.worktree** %120)
  %122 = load i32, i32* %13, align 4
  ret i32 %122
}

declare dso_local i32 @OPT__FORCE(i32*, i32, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local %struct.worktree* @find_worktree(%struct.worktree**, i8*, i8*) #1

declare dso_local i32 @die(i32, ...) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @is_main_worktree(%struct.worktree*) #1

declare dso_local i8* @worktree_lock_reason(%struct.worktree*) #1

declare dso_local i64 @validate_worktree(%struct.worktree*, %struct.strbuf*, i32) #1

declare dso_local i32 @strbuf_release(%struct.strbuf*) #1

declare dso_local i64 @file_exists(i32) #1

declare dso_local i32 @check_clean_worktree(%struct.worktree*, i8*) #1

declare dso_local i32 @delete_git_work_tree(%struct.worktree*) #1

declare dso_local i32 @delete_git_dir(i32) #1

declare dso_local i32 @delete_worktrees_dir_if_empty(...) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
