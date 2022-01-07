; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_preferred_base.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_preferred_base.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pbase_tree = type { %struct.TYPE_2__, %struct.pbase_tree* }
%struct.TYPE_2__ = type { i64, i8*, i32 }
%struct.object_id = type { i32 }

@window = common dso_local global i64 0, align 8
@num_preferred_base = common dso_local global i32 0, align 4
@the_repository = common dso_local global i32 0, align 4
@tree_type = common dso_local global i32 0, align 4
@pbase_tree = common dso_local global %struct.pbase_tree* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*)* @add_preferred_base to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_preferred_base(%struct.object_id* %0) #0 {
  %2 = alloca %struct.object_id*, align 8
  %3 = alloca %struct.pbase_tree*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.object_id, align 4
  store %struct.object_id* %0, %struct.object_id** %2, align 8
  %7 = load i64, i64* @window, align 8
  %8 = load i32, i32* @num_preferred_base, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @num_preferred_base, align 4
  %10 = sext i32 %8 to i64
  %11 = icmp sle i64 %7, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %58

13:                                               ; preds = %1
  %14 = load i32, i32* @the_repository, align 4
  %15 = load %struct.object_id*, %struct.object_id** %2, align 8
  %16 = load i32, i32* @tree_type, align 4
  %17 = call i8* @read_object_with_reference(i32 %14, %struct.object_id* %15, i32 %16, i64* %5, %struct.object_id* %6)
  store i8* %17, i8** %4, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = icmp ne i8* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %58

21:                                               ; preds = %13
  %22 = load %struct.pbase_tree*, %struct.pbase_tree** @pbase_tree, align 8
  store %struct.pbase_tree* %22, %struct.pbase_tree** %3, align 8
  br label %23

23:                                               ; preds = %36, %21
  %24 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %25 = icmp ne %struct.pbase_tree* %24, null
  br i1 %25, label %26, label %40

26:                                               ; preds = %23
  %27 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %28 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  %30 = call i64 @oideq(i32* %29, %struct.object_id* %6)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i8*, i8** %4, align 8
  %34 = call i32 @free(i8* %33)
  br label %58

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %38 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %37, i32 0, i32 1
  %39 = load %struct.pbase_tree*, %struct.pbase_tree** %38, align 8
  store %struct.pbase_tree* %39, %struct.pbase_tree** %3, align 8
  br label %23

40:                                               ; preds = %23
  %41 = call %struct.pbase_tree* @xcalloc(i32 1, i32 32)
  store %struct.pbase_tree* %41, %struct.pbase_tree** %3, align 8
  %42 = load %struct.pbase_tree*, %struct.pbase_tree** @pbase_tree, align 8
  %43 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %44 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %43, i32 0, i32 1
  store %struct.pbase_tree* %42, %struct.pbase_tree** %44, align 8
  %45 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  store %struct.pbase_tree* %45, %struct.pbase_tree** @pbase_tree, align 8
  %46 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %47 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 2
  %49 = call i32 @oidcpy(i32* %48, %struct.object_id* %6)
  %50 = load i8*, i8** %4, align 8
  %51 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %52 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 1
  store i8* %50, i8** %53, align 8
  %54 = load i64, i64* %5, align 8
  %55 = load %struct.pbase_tree*, %struct.pbase_tree** %3, align 8
  %56 = getelementptr inbounds %struct.pbase_tree, %struct.pbase_tree* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  br label %58

58:                                               ; preds = %40, %32, %20, %12
  ret void
}

declare dso_local i8* @read_object_with_reference(i32, %struct.object_id*, i32, i64*, %struct.object_id*) #1

declare dso_local i64 @oideq(i32*, %struct.object_id*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local %struct.pbase_tree* @xcalloc(i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
