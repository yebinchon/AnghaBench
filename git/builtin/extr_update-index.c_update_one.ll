; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_update-index.c_update_one.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_update-index.c_update_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i64 }

@mark_valid_only = common dso_local global i64 0, align 8
@mark_skip_worktree_only = common dso_local global i64 0, align 8
@force_remove = common dso_local global i64 0, align 8
@mark_fsmonitor_only = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Ignoring path %s\0A\00", align 1
@CE_VALID = common dso_local global i32 0, align 4
@MARK_FLAG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Unable to mark file %s\00", align 1
@CE_SKIP_WORKTREE = common dso_local global i32 0, align 4
@CE_FSMONITOR_VALID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"git update-index: unable to remove %s\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"remove '%s'\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Unable to process path %s\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"add '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @update_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_one(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.stat, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i64, i64* @mark_valid_only, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* @mark_skip_worktree_only, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %7
  %11 = load i64, i64* @force_remove, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %10
  %14 = load i64, i64* @mark_fsmonitor_only, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13, %10, %7, %1
  %17 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  store i64 0, i64* %17, align 8
  br label %26

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = call i64 @lstat(i8* %19, %struct.stat* %4)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @errno, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %16
  %27 = load i8*, i8** %2, align 8
  %28 = getelementptr inbounds %struct.stat, %struct.stat* %4, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @verify_path(i8* %27, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load i32, i32* @stderr, align 4
  %34 = load i8*, i8** %2, align 8
  %35 = call i32 @fprintf(i32 %33, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %34)
  br label %108

36:                                               ; preds = %26
  %37 = load i64, i64* @mark_valid_only, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %36
  %40 = load i8*, i8** %2, align 8
  %41 = load i32, i32* @CE_VALID, align 4
  %42 = load i64, i64* @mark_valid_only, align 8
  %43 = load i64, i64* @MARK_FLAG, align 8
  %44 = icmp eq i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @mark_ce_flags(i8* %40, i32 %41, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i8*, i8** %2, align 8
  %50 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %49)
  br label %51

51:                                               ; preds = %48, %39
  br label %108

52:                                               ; preds = %36
  %53 = load i64, i64* @mark_skip_worktree_only, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %68

55:                                               ; preds = %52
  %56 = load i8*, i8** %2, align 8
  %57 = load i32, i32* @CE_SKIP_WORKTREE, align 4
  %58 = load i64, i64* @mark_skip_worktree_only, align 8
  %59 = load i64, i64* @MARK_FLAG, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @mark_ce_flags(i8* %56, i32 %57, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %55
  %65 = load i8*, i8** %2, align 8
  %66 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %65)
  br label %67

67:                                               ; preds = %64, %55
  br label %108

68:                                               ; preds = %52
  %69 = load i64, i64* @mark_fsmonitor_only, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %84

71:                                               ; preds = %68
  %72 = load i8*, i8** %2, align 8
  %73 = load i32, i32* @CE_FSMONITOR_VALID, align 4
  %74 = load i64, i64* @mark_fsmonitor_only, align 8
  %75 = load i64, i64* @MARK_FLAG, align 8
  %76 = icmp eq i64 %74, %75
  %77 = zext i1 %76 to i32
  %78 = call i64 @mark_ce_flags(i8* %72, i32 %73, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %71
  %81 = load i8*, i8** %2, align 8
  %82 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8* %81)
  br label %83

83:                                               ; preds = %80, %71
  br label %108

84:                                               ; preds = %68
  %85 = load i64, i64* @force_remove, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %84
  %88 = load i8*, i8** %2, align 8
  %89 = call i64 @remove_file_from_cache(i8* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i8*, i8** %2, align 8
  %93 = call i32 @die(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i8* %92)
  br label %94

94:                                               ; preds = %91, %87
  %95 = load i8*, i8** %2, align 8
  %96 = call i32 @report(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8* %95)
  br label %108

97:                                               ; preds = %84
  %98 = load i8*, i8** %2, align 8
  %99 = load i32, i32* %3, align 4
  %100 = call i64 @process_path(i8* %98, %struct.stat* %4, i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i8*, i8** %2, align 8
  %104 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %103)
  br label %105

105:                                              ; preds = %102, %97
  %106 = load i8*, i8** %2, align 8
  %107 = call i32 @report(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0), i8* %106)
  br label %108

108:                                              ; preds = %105, %94, %83, %67, %51, %32
  ret void
}

declare dso_local i64 @lstat(i8*, %struct.stat*) #1

declare dso_local i32 @verify_path(i8*, i64) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local i64 @mark_ce_flags(i8*, i32, i32) #1

declare dso_local i32 @die(i8*, i8*) #1

declare dso_local i64 @remove_file_from_cache(i8*) #1

declare dso_local i32 @report(i8*, i8*) #1

declare dso_local i64 @process_path(i8*, %struct.stat*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
