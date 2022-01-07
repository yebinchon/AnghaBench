; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_commit.c_handle_untracked_files_arg.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_commit.c_handle_untracked_files_arg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status = type { i32 }

@untracked_files_arg = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"no\00", align 1
@SHOW_NO_UNTRACKED_FILES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"normal\00", align 1
@SHOW_NORMAL_UNTRACKED_FILES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"all\00", align 1
@SHOW_ALL_UNTRACKED_FILES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"Invalid untracked files mode '%s'\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wt_status*)* @handle_untracked_files_arg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_untracked_files_arg(%struct.wt_status* %0) #0 {
  %2 = alloca %struct.wt_status*, align 8
  store %struct.wt_status* %0, %struct.wt_status** %2, align 8
  %3 = load i32, i32* @untracked_files_arg, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %37

6:                                                ; preds = %1
  %7 = load i32, i32* @untracked_files_arg, align 4
  %8 = call i32 @strcmp(i32 %7, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* @SHOW_NO_UNTRACKED_FILES, align 4
  %12 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %13 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  br label %36

14:                                               ; preds = %6
  %15 = load i32, i32* @untracked_files_arg, align 4
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @SHOW_NORMAL_UNTRACKED_FILES, align 4
  %20 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %21 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %35

22:                                               ; preds = %14
  %23 = load i32, i32* @untracked_files_arg, align 4
  %24 = call i32 @strcmp(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @SHOW_ALL_UNTRACKED_FILES, align 4
  %28 = load %struct.wt_status*, %struct.wt_status** %2, align 8
  %29 = getelementptr inbounds %struct.wt_status, %struct.wt_status* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %34

30:                                               ; preds = %22
  %31 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  %32 = load i32, i32* @untracked_files_arg, align 4
  %33 = call i32 @die(i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %26
  br label %35

35:                                               ; preds = %34, %18
  br label %36

36:                                               ; preds = %35, %10
  br label %37

37:                                               ; preds = %36, %5
  ret void
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @die(i32, i32) #1

declare dso_local i32 @_(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
