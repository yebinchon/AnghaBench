; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_worktree.c_list.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_worktree.c_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.option = type { i32 }
%struct.worktree = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"porcelain\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"machine-readable output\00", align 1
@worktree_usage = common dso_local global i32 0, align 4
@GWT_SORT_LINKED = common dso_local global i32 0, align 4
@DEFAULT_ABBREV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8**, i8*)* @list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @list(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [2 x %struct.option], align 4
  %9 = alloca %struct.worktree**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %14 = call i32 @N_(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %15 = call i32 @OPT_BOOL(i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %7, i32 %14)
  %16 = getelementptr inbounds %struct.option, %struct.option* %13, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.option, %struct.option* %13, i64 1
  %18 = call i32 (...) @OPT_END()
  %19 = getelementptr inbounds %struct.option, %struct.option* %17, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i8**, i8*** %5, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %24 = load i32, i32* @worktree_usage, align 4
  %25 = call i32 @parse_options(i32 %20, i8** %21, i8* %22, %struct.option* %23, i32 %24, i32 0)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load i32, i32* @worktree_usage, align 4
  %30 = getelementptr inbounds [2 x %struct.option], [2 x %struct.option]* %8, i64 0, i64 0
  %31 = call i32 @usage_with_options(i32 %29, %struct.option* %30)
  br label %75

32:                                               ; preds = %3
  %33 = load i32, i32* @GWT_SORT_LINKED, align 4
  %34 = call %struct.worktree** @get_worktrees(i32 %33)
  store %struct.worktree** %34, %struct.worktree*** %9, align 8
  store i32 0, i32* %10, align 4
  %35 = load i32, i32* @DEFAULT_ABBREV, align 4
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %40 = call i32 @measure_widths(%struct.worktree** %39, i32* %11, i32* %10)
  br label %41

41:                                               ; preds = %38, %32
  store i32 0, i32* %12, align 4
  br label %42

42:                                               ; preds = %69, %41
  %43 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %44 = load i32, i32* %12, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.worktree*, %struct.worktree** %43, i64 %45
  %47 = load %struct.worktree*, %struct.worktree** %46, align 8
  %48 = icmp ne %struct.worktree* %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %42
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.worktree*, %struct.worktree** %53, i64 %55
  %57 = load %struct.worktree*, %struct.worktree** %56, align 8
  %58 = call i32 @show_worktree_porcelain(%struct.worktree* %57)
  br label %68

59:                                               ; preds = %49
  %60 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.worktree*, %struct.worktree** %60, i64 %62
  %64 = load %struct.worktree*, %struct.worktree** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = call i32 @show_worktree(%struct.worktree* %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %59, %52
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %42

72:                                               ; preds = %42
  %73 = load %struct.worktree**, %struct.worktree*** %9, align 8
  %74 = call i32 @free_worktrees(%struct.worktree** %73)
  br label %75

75:                                               ; preds = %72, %28
  ret i32 0
}

declare dso_local i32 @OPT_BOOL(i32, i8*, i32*, i32) #1

declare dso_local i32 @N_(i8*) #1

declare dso_local i32 @OPT_END(...) #1

declare dso_local i32 @parse_options(i32, i8**, i8*, %struct.option*, i32, i32) #1

declare dso_local i32 @usage_with_options(i32, %struct.option*) #1

declare dso_local %struct.worktree** @get_worktrees(i32) #1

declare dso_local i32 @measure_widths(%struct.worktree**, i32*, i32*) #1

declare dso_local i32 @show_worktree_porcelain(%struct.worktree*) #1

declare dso_local i32 @show_worktree(%struct.worktree*, i32, i32) #1

declare dso_local i32 @free_worktrees(%struct.worktree**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
