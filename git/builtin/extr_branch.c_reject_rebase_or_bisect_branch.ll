; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_branch.c_reject_rebase_or_bisect_branch.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_branch.c_reject_rebase_or_bisect_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Branch %s is being rebased at %s\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Branch %s is being bisected at %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @reject_rebase_or_bisect_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reject_rebase_or_bisect_branch(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.worktree**, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.worktree*, align 8
  store i8* %0, i8** %2, align 8
  %6 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %6, %struct.worktree*** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %50, %1
  %8 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.worktree*, %struct.worktree** %8, i64 %10
  %12 = load %struct.worktree*, %struct.worktree** %11, align 8
  %13 = icmp ne %struct.worktree* %12, null
  br i1 %13, label %14, label %53

14:                                               ; preds = %7
  %15 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.worktree*, %struct.worktree** %15, i64 %17
  %19 = load %struct.worktree*, %struct.worktree** %18, align 8
  store %struct.worktree* %19, %struct.worktree** %5, align 8
  %20 = load %struct.worktree*, %struct.worktree** %5, align 8
  %21 = getelementptr inbounds %struct.worktree, %struct.worktree* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %50

25:                                               ; preds = %14
  %26 = load %struct.worktree*, %struct.worktree** %5, align 8
  %27 = load i8*, i8** %2, align 8
  %28 = call i64 @is_worktree_being_rebased(%struct.worktree* %26, i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = call i32 @_(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %32 = load i8*, i8** %2, align 8
  %33 = load %struct.worktree*, %struct.worktree** %5, align 8
  %34 = getelementptr inbounds %struct.worktree, %struct.worktree* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @die(i32 %31, i8* %32, i32 %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load %struct.worktree*, %struct.worktree** %5, align 8
  %39 = load i8*, i8** %2, align 8
  %40 = call i64 @is_worktree_being_bisected(%struct.worktree* %38, i8* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = call i32 @_(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i8*, i8** %2, align 8
  %45 = load %struct.worktree*, %struct.worktree** %5, align 8
  %46 = getelementptr inbounds %struct.worktree, %struct.worktree* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @die(i32 %43, i8* %44, i32 %47)
  br label %49

49:                                               ; preds = %42, %37
  br label %50

50:                                               ; preds = %49, %24
  %51 = load i32, i32* %4, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %4, align 4
  br label %7

53:                                               ; preds = %7
  %54 = load %struct.worktree**, %struct.worktree*** %3, align 8
  %55 = call i32 @free_worktrees(%struct.worktree** %54)
  ret void
}

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local i64 @is_worktree_being_rebased(%struct.worktree*, i8*) #1

declare dso_local i32 @die(i32, i8*, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i64 @is_worktree_being_bisected(%struct.worktree*, i8*) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
