; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_ref_delta_children.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_ref_delta_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@nr_ref_deltas = common dso_local global i32 0, align 4
@ref_deltas = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.object_id*, i32*, i32*, i32)* @find_ref_delta_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_ref_delta_children(%struct.object_id* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.object_id*, %struct.object_id** %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @find_ref_delta(%struct.object_id* %12, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @nr_ref_deltas, align 4
  %17 = sub nsw i32 %16, 1
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %9, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  store i32 0, i32* %21, align 4
  %22 = load i32*, i32** %7, align 8
  store i32 -1, i32* %22, align 4
  br label %67

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %39, %23
  %25 = load i32, i32* %9, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ref_deltas, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.object_id*, %struct.object_id** %5, align 8
  %35 = call i64 @oideq(i32* %33, %struct.object_id* %34)
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %27, %24
  %38 = phi i1 [ false, %24 ], [ %36, %27 ]
  br i1 %38, label %39, label %42

39:                                               ; preds = %37
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %9, align 4
  br label %24

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %59, %42
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ref_deltas, align 8
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load %struct.object_id*, %struct.object_id** %5, align 8
  %55 = call i64 @oideq(i32* %53, %struct.object_id* %54)
  %56 = icmp ne i64 %55, 0
  br label %57

57:                                               ; preds = %47, %43
  %58 = phi i1 [ false, %43 ], [ %56, %47 ]
  br i1 %58, label %59, label %62

59:                                               ; preds = %57
  %60 = load i32, i32* %10, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %43

62:                                               ; preds = %57
  %63 = load i32, i32* %9, align 4
  %64 = load i32*, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32*, i32** %7, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %20
  ret void
}

declare dso_local i32 @find_ref_delta(%struct.object_id*, i32) #1

declare dso_local i64 @oideq(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
