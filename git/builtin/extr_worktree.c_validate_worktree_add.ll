; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_validate_worktree_add.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_validate_worktree_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.add_opts = type { i32 }
%struct.worktree = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"'%s' already exists\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"unable to re-add worktree '%s'\00", align 1
@.str.2 = private unnamed_addr constant [113 x i8] c"'%s' is a missing but locked worktree;\0Ause 'add -f -f' to override, or 'unlock' and 'prune' or 'remove' to clear\00", align 1
@.str.3 = private unnamed_addr constant [109 x i8] c"'%s' is a missing but already registered worktree;\0Ause 'add -f' to override, or 'prune' or 'remove' to clear\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.add_opts*)* @validate_worktree_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @validate_worktree_add(i8* %0, %struct.add_opts* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.add_opts*, align 8
  %5 = alloca %struct.worktree**, align 8
  %6 = alloca %struct.worktree*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.add_opts* %1, %struct.add_opts** %4, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @file_exists(i8* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = call i32 @is_empty_dir(i8* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = call i32 @_(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @die(i32 %16, i8* %17)
  br label %19

19:                                               ; preds = %15, %11, %2
  %20 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %20, %struct.worktree*** %5, align 8
  %21 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %22 = getelementptr inbounds %struct.worktree*, %struct.worktree** %21, i64 1
  %23 = load i8*, i8** %3, align 8
  %24 = call %struct.worktree* @find_worktree(%struct.worktree** %22, i32* null, i8* %23)
  store %struct.worktree* %24, %struct.worktree** %6, align 8
  %25 = load %struct.worktree*, %struct.worktree** %6, align 8
  %26 = icmp ne %struct.worktree* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %73

28:                                               ; preds = %19
  %29 = load %struct.worktree*, %struct.worktree** %6, align 8
  %30 = call i32 @worktree_lock_reason(%struct.worktree* %29)
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %28
  %38 = load %struct.add_opts*, %struct.add_opts** %4, align 8
  %39 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %37, %28
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %42
  %46 = load %struct.add_opts*, %struct.add_opts** %4, align 8
  %47 = getelementptr inbounds %struct.add_opts, %struct.add_opts* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 1
  br i1 %49, label %50, label %61

50:                                               ; preds = %45, %37
  %51 = load %struct.worktree*, %struct.worktree** %6, align 8
  %52 = getelementptr inbounds %struct.worktree, %struct.worktree* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @delete_git_dir(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = call i32 @_(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i8*, i8** %3, align 8
  %59 = call i32 @die(i32 %57, i8* %58)
  br label %60

60:                                               ; preds = %56, %50
  br label %73

61:                                               ; preds = %45, %42
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %61
  %65 = call i32 @_(i8* getelementptr inbounds ([113 x i8], [113 x i8]* @.str.2, i64 0, i64 0))
  %66 = load i8*, i8** %3, align 8
  %67 = call i32 @die(i32 %65, i8* %66)
  br label %72

68:                                               ; preds = %61
  %69 = call i32 @_(i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i8*, i8** %3, align 8
  %71 = call i32 @die(i32 %69, i8* %70)
  br label %72

72:                                               ; preds = %68, %64
  br label %73

73:                                               ; preds = %72, %60, %27
  %74 = load %struct.worktree**, %struct.worktree*** %5, align 8
  %75 = call i32 @free_worktrees(%struct.worktree** %74)
  ret void
}

declare dso_local i64 @file_exists(i8*) #1

declare dso_local i32 @is_empty_dir(i8*) #1

declare dso_local i32 @die(i32, i8*) #1

declare dso_local i32 @_(i8*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local %struct.worktree* @find_worktree(%struct.worktree**, i32*, i8*) #1

declare dso_local i32 @worktree_lock_reason(%struct.worktree*) #1

declare dso_local i64 @delete_git_dir(i32) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
