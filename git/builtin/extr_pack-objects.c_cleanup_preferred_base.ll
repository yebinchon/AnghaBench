; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_cleanup_preferred_base.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_cleanup_preferred_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbase_tree = type { %struct.TYPE_6__, %struct.pbase_tree* }
%struct.TYPE_6__ = type { %struct.pbase_tree* }
%struct.TYPE_7__ = type { %struct.pbase_tree* }

@pbase_tree = common dso_local global %struct.pbase_tree* null, align 8
@pbase_tree_cache = common dso_local global %struct.TYPE_7__** null, align 8
@done_pbase_paths = common dso_local global %struct.TYPE_7__* null, align 8
@done_pbase_paths_alloc = common dso_local global i64 0, align 8
@done_pbase_paths_num = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_preferred_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_preferred_base() #0 {
  %1 = alloca %struct.pbase_tree*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.pbase_tree*, align 8
  %4 = load %struct.pbase_tree*, %struct.pbase_tree** @pbase_tree, align 8
  store %struct.pbase_tree* %4, %struct.pbase_tree** %1, align 8
  store %struct.pbase_tree* null, %struct.pbase_tree** @pbase_tree, align 8
  br label %5

5:                                                ; preds = %8, %0
  %6 = load %struct.pbase_tree*, %struct.pbase_tree** %1, align 8
  %7 = icmp ne %struct.pbase_tree* %6, null
  br i1 %7, label %8, label %20

8:                                                ; preds = %5
  %9 = load %struct.pbase_tree*, %struct.pbase_tree** %1, align 8
  store %struct.pbase_tree* %9, %struct.pbase_tree** %3, align 8
  %10 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %11 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %10, i32 0, i32 1
  %12 = load %struct.pbase_tree*, %struct.pbase_tree** %11, align 8
  store %struct.pbase_tree* %12, %struct.pbase_tree** %1, align 8
  %13 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %14 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.pbase_tree*, %struct.pbase_tree** %15, align 8
  %17 = call i32 @free(%struct.pbase_tree* %16)
  %18 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %19 = call i32 @free(%struct.pbase_tree* %18)
  br label %5

20:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %49, %20
  %22 = load i32, i32* %2, align 4
  %23 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pbase_tree_cache, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.TYPE_7__** %23)
  %25 = icmp ult i32 %22, %24
  br i1 %25, label %26, label %52

26:                                               ; preds = %21
  %27 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pbase_tree_cache, align 8
  %28 = load i32, i32* %2, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %27, i64 %29
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = icmp ne %struct.TYPE_7__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  br label %49

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pbase_tree_cache, align 8
  %36 = load i32, i32* %2, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %35, i64 %37
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.pbase_tree*, %struct.pbase_tree** %40, align 8
  %42 = call i32 @free(%struct.pbase_tree* %41)
  %43 = load %struct.TYPE_7__**, %struct.TYPE_7__*** @pbase_tree_cache, align 8
  %44 = load i32, i32* %2, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %43, i64 %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = call i32 @FREE_AND_NULL(%struct.TYPE_7__* %47)
  br label %49

49:                                               ; preds = %34, %33
  %50 = load i32, i32* %2, align 4
  %51 = add i32 %50, 1
  store i32 %51, i32* %2, align 4
  br label %21

52:                                               ; preds = %21
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @done_pbase_paths, align 8
  %54 = call i32 @FREE_AND_NULL(%struct.TYPE_7__* %53)
  store i64 0, i64* @done_pbase_paths_alloc, align 8
  store i64 0, i64* @done_pbase_paths_num, align 8
  ret void
}

declare dso_local i32 @free(%struct.pbase_tree*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__**) #1

declare dso_local i32 @FREE_AND_NULL(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
