; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_checkout.c_die_if_some_operation_in_progress.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_checkout.c_die_if_some_operation_in_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wt_status_state = type { i64, i64, i64, i64, i64, i64, i64 }

@the_repository = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [86 x i8] c"cannot switch branch while merging\0AConsider \22git merge --quit\22 or \22git worktree add\22.\00", align 1
@.str.1 = private unnamed_addr constant [100 x i8] c"cannot switch branch in the middle of an am session\0AConsider \22git am --quit\22 or \22git worktree add\22.\00", align 1
@.str.2 = private unnamed_addr constant [88 x i8] c"cannot switch branch while rebasing\0AConsider \22git rebase --quit\22 or \22git worktree add\22.\00", align 1
@.str.3 = private unnamed_addr constant [99 x i8] c"cannot switch branch while cherry-picking\0AConsider \22git cherry-pick --quit\22 or \22git worktree add\22.\00", align 1
@.str.4 = private unnamed_addr constant [89 x i8] c"cannot switch branch while reverting\0AConsider \22git revert --quit\22 or \22git worktree add\22.\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"you are switching branch while bisecting\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @die_if_some_operation_in_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @die_if_some_operation_in_progress() #0 {
  %1 = alloca %struct.wt_status_state, align 8
  %2 = call i32 @memset(%struct.wt_status_state* %1, i32 0, i32 56)
  %3 = load i32, i32* @the_repository, align 4
  %4 = call i32 @wt_status_get_state(i32 %3, %struct.wt_status_state* %1, i32 0)
  %5 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %1, i32 0, i32 6
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = call i32 @_(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0))
  %10 = call i32 @die(i32 %9)
  br label %11

11:                                               ; preds = %8, %0
  %12 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %1, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = call i32 @_(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @die(i32 %16)
  br label %18

18:                                               ; preds = %15, %11
  %19 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %1, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %1, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22, %18
  %27 = call i32 @_(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @die(i32 %27)
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %1, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = call i32 @_(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 @die(i32 %34)
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %1, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i32 @_(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.4, i64 0, i64 0))
  %42 = call i32 @die(i32 %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds %struct.wt_status_state, %struct.wt_status_state* %1, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = call i32 @_(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %49 = call i32 @warning(i32 %48)
  br label %50

50:                                               ; preds = %47, %43
  ret void
}

declare dso_local i32 @memset(%struct.wt_status_state*, i32, i32) #1

declare dso_local i32 @wt_status_get_state(i32, %struct.wt_status_state*, i32) #1

declare dso_local i32 @die(i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @warning(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
