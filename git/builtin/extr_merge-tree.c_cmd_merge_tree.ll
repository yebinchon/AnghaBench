; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_cmd_merge_tree.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_merge-tree.c_cmd_merge_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.repository = type { i32 }
%struct.tree_desc = type { i32 }

@the_repository = common dso_local global %struct.repository* null, align 8
@merge_tree_usage = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_merge_tree(i32 %0, i8** %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.repository*, align 8
  %8 = alloca [3 x %struct.tree_desc], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i8* %2, i8** %6, align 8
  %12 = load %struct.repository*, %struct.repository** @the_repository, align 8
  store %struct.repository* %12, %struct.repository** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 4
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @merge_tree_usage, align 4
  %17 = call i32 @usage(i32 %16)
  br label %18

18:                                               ; preds = %15, %3
  %19 = load %struct.repository*, %struct.repository** %7, align 8
  %20 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %8, i64 0, i64 0
  %21 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %20, i64 0
  %22 = load i8**, i8*** %5, align 8
  %23 = getelementptr inbounds i8*, i8** %22, i64 1
  %24 = load i8*, i8** %23, align 8
  %25 = call i8* @get_tree_descriptor(%struct.repository* %19, %struct.tree_desc* %21, i8* %24)
  store i8* %25, i8** %9, align 8
  %26 = load %struct.repository*, %struct.repository** %7, align 8
  %27 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %8, i64 0, i64 0
  %28 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %27, i64 1
  %29 = load i8**, i8*** %5, align 8
  %30 = getelementptr inbounds i8*, i8** %29, i64 2
  %31 = load i8*, i8** %30, align 8
  %32 = call i8* @get_tree_descriptor(%struct.repository* %26, %struct.tree_desc* %28, i8* %31)
  store i8* %32, i8** %10, align 8
  %33 = load %struct.repository*, %struct.repository** %7, align 8
  %34 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %8, i64 0, i64 0
  %35 = getelementptr inbounds %struct.tree_desc, %struct.tree_desc* %34, i64 2
  %36 = load i8**, i8*** %5, align 8
  %37 = getelementptr inbounds i8*, i8** %36, i64 3
  %38 = load i8*, i8** %37, align 8
  %39 = call i8* @get_tree_descriptor(%struct.repository* %33, %struct.tree_desc* %35, i8* %38)
  store i8* %39, i8** %11, align 8
  %40 = getelementptr inbounds [3 x %struct.tree_desc], [3 x %struct.tree_desc]* %8, i64 0, i64 0
  %41 = call i32 @merge_trees(%struct.tree_desc* %40, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %42 = load i8*, i8** %9, align 8
  %43 = call i32 @free(i8* %42)
  %44 = load i8*, i8** %10, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @free(i8* %46)
  %48 = call i32 (...) @show_result()
  ret i32 0
}

declare dso_local i32 @usage(i32) #1

declare dso_local i8* @get_tree_descriptor(%struct.repository*, %struct.tree_desc*, i8*) #1

declare dso_local i32 @merge_trees(%struct.tree_desc*, i8*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @show_result(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
