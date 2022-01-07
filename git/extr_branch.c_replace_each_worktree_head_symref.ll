; ModuleID = '/home/carl/AnghaBench/git/extr_branch.c_replace_each_worktree_head_symref.c'
source_filename = "/home/carl/AnghaBench/git/extr_branch.c_replace_each_worktree_head_symref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.worktree = type { i32, i32, i64 }
%struct.ref_store = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"HEAD of working tree %s is not updated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @replace_each_worktree_head_symref(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.worktree**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ref_store*, align 8
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = call %struct.worktree** @get_worktrees(i32 0)
  store %struct.worktree** %11, %struct.worktree*** %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %74, %3
  %13 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %14 = load i32, i32* %9, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.worktree*, %struct.worktree** %13, i64 %15
  %17 = load %struct.worktree*, %struct.worktree** %16, align 8
  %18 = icmp ne %struct.worktree* %17, null
  br i1 %18, label %19, label %77

19:                                               ; preds = %12
  %20 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.worktree*, %struct.worktree** %20, i64 %22
  %24 = load %struct.worktree*, %struct.worktree** %23, align 8
  %25 = getelementptr inbounds %struct.worktree, %struct.worktree* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %74

29:                                               ; preds = %19
  %30 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.worktree*, %struct.worktree** %30, i64 %32
  %34 = load %struct.worktree*, %struct.worktree** %33, align 8
  %35 = getelementptr inbounds %struct.worktree, %struct.worktree* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %29
  br label %74

39:                                               ; preds = %29
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.worktree*, %struct.worktree** %41, i64 %43
  %45 = load %struct.worktree*, %struct.worktree** %44, align 8
  %46 = getelementptr inbounds %struct.worktree, %struct.worktree* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @strcmp(i8* %40, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %39
  br label %74

51:                                               ; preds = %39
  %52 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.worktree*, %struct.worktree** %52, i64 %54
  %56 = load %struct.worktree*, %struct.worktree** %55, align 8
  %57 = call %struct.ref_store* @get_worktree_ref_store(%struct.worktree* %56)
  store %struct.ref_store* %57, %struct.ref_store** %10, align 8
  %58 = load %struct.ref_store*, %struct.ref_store** %10, align 8
  %59 = load i8*, i8** %5, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = call i64 @refs_create_symref(%struct.ref_store* %58, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* %59, i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %51
  %64 = call i32 @_(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %65 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.worktree*, %struct.worktree** %65, i64 %67
  %69 = load %struct.worktree*, %struct.worktree** %68, align 8
  %70 = getelementptr inbounds %struct.worktree, %struct.worktree* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @error(i32 %64, i32 %71)
  store i32 %72, i32* %7, align 4
  br label %73

73:                                               ; preds = %63, %51
  br label %74

74:                                               ; preds = %73, %50, %38, %28
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %9, align 4
  br label %12

77:                                               ; preds = %12
  %78 = load %struct.worktree**, %struct.worktree*** %8, align 8
  %79 = call i32 @free_worktrees(%struct.worktree** %78)
  %80 = load i32, i32* %7, align 4
  ret i32 %80
}

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local i64 @strcmp(i8*, i32) #1

declare dso_local %struct.ref_store* @get_worktree_ref_store(%struct.worktree*) #1

declare dso_local i64 @refs_create_symref(%struct.ref_store*, i8*, i8*, i8*) #1

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
