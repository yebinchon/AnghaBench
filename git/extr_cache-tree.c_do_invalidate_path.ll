; ModuleID = '/home/carl/AnghaBench/git/extr_cache-tree.c_do_invalidate_path.c'
source_filename = "/home/carl/AnghaBench/git/extr_cache-tree.c_do_invalidate_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cache_tree = type { i32, i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i32 }
%struct.cache_tree_sub = type { %struct.cache_tree* }

@stderr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cache_tree*, i8*)* @do_invalidate_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_invalidate_path(%struct.cache_tree* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cache_tree*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cache_tree_sub*, align 8
  %9 = alloca i32, align 4
  store %struct.cache_tree* %0, %struct.cache_tree** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %11 = icmp ne %struct.cache_tree* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8
  %15 = call i8* @strchrnul(i8* %14, i8 signext 47)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = ptrtoint i8* %16 to i64
  %19 = ptrtoint i8* %17 to i64
  %20 = sub i64 %18, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %23 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %22, i32 0, i32 0
  store i32 -1, i32* %23, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = load i8, i8* %24, align 1
  %26 = icmp ne i8 %25, 0
  br i1 %26, label %77, label %27

27:                                               ; preds = %13
  %28 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @subtree_pos(%struct.cache_tree* %28, i8* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp sle i32 0, %32
  br i1 %33, label %34, label %76

34:                                               ; preds = %27
  %35 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %36 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %35, i32 0, i32 2
  %37 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %37, i64 %39
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = call i32 @cache_tree_free(i32* %42)
  %44 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %45 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %44, i32 0, i32 2
  %46 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %46, i64 %48
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = call i32 @free(%struct.TYPE_4__* %50)
  %52 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %53 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %53, align 8
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %54, i64 %56
  %58 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %59 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %58, i32 0, i32 2
  %60 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %63, i64 1
  %65 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %66 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %9, align 4
  %69 = sub nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @MOVE_ARRAY(%struct.TYPE_4__** %57, %struct.TYPE_4__** %64, i32 %70)
  %72 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %73 = getelementptr inbounds %struct.cache_tree, %struct.cache_tree* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 4
  br label %76

76:                                               ; preds = %34, %27
  store i32 1, i32* %3, align 4
  br label %92

77:                                               ; preds = %13
  %78 = load %struct.cache_tree*, %struct.cache_tree** %4, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call %struct.cache_tree_sub* @find_subtree(%struct.cache_tree* %78, i8* %79, i32 %80, i32 0)
  store %struct.cache_tree_sub* %81, %struct.cache_tree_sub** %8, align 8
  %82 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %8, align 8
  %83 = icmp ne %struct.cache_tree_sub* %82, null
  br i1 %83, label %84, label %91

84:                                               ; preds = %77
  %85 = load %struct.cache_tree_sub*, %struct.cache_tree_sub** %8, align 8
  %86 = getelementptr inbounds %struct.cache_tree_sub, %struct.cache_tree_sub* %85, i32 0, i32 0
  %87 = load %struct.cache_tree*, %struct.cache_tree** %86, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  %90 = call i32 @do_invalidate_path(%struct.cache_tree* %87, i8* %89)
  br label %91

91:                                               ; preds = %84, %77
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %91, %76, %12
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i8* @strchrnul(i8*, i8 signext) #1

declare dso_local i32 @subtree_pos(%struct.cache_tree*, i8*, i32) #1

declare dso_local i32 @cache_tree_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_4__*) #1

declare dso_local i32 @MOVE_ARRAY(%struct.TYPE_4__**, %struct.TYPE_4__**, i32) #1

declare dso_local %struct.cache_tree_sub* @find_subtree(%struct.cache_tree*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
