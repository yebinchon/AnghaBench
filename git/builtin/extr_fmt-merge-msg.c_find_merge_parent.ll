; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_find_merge_parent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_find_merge_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_parent = type { i32, i32 }
%struct.merge_parents = type { i32, %struct.merge_parent* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.merge_parent* (%struct.merge_parents*, %struct.object_id*, %struct.object_id*)* @find_merge_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.merge_parent* @find_merge_parent(%struct.merge_parents* %0, %struct.object_id* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.merge_parent*, align 8
  %5 = alloca %struct.merge_parents*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.object_id*, align 8
  %8 = alloca i32, align 4
  store %struct.merge_parents* %0, %struct.merge_parents** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.object_id* %2, %struct.object_id** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %52, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.merge_parents*, %struct.merge_parents** %5, align 8
  %12 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %55

15:                                               ; preds = %9
  %16 = load %struct.object_id*, %struct.object_id** %6, align 8
  %17 = icmp ne %struct.object_id* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.merge_parents*, %struct.merge_parents** %5, align 8
  %20 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %19, i32 0, i32 1
  %21 = load %struct.merge_parent*, %struct.merge_parent** %20, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.merge_parent, %struct.merge_parent* %21, i64 %23
  %25 = getelementptr inbounds %struct.merge_parent, %struct.merge_parent* %24, i32 0, i32 1
  %26 = load %struct.object_id*, %struct.object_id** %6, align 8
  %27 = call i32 @oideq(i32* %25, %struct.object_id* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %18
  br label %52

30:                                               ; preds = %18, %15
  %31 = load %struct.object_id*, %struct.object_id** %7, align 8
  %32 = icmp ne %struct.object_id* %31, null
  br i1 %32, label %33, label %45

33:                                               ; preds = %30
  %34 = load %struct.merge_parents*, %struct.merge_parents** %5, align 8
  %35 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %34, i32 0, i32 1
  %36 = load %struct.merge_parent*, %struct.merge_parent** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.merge_parent, %struct.merge_parent* %36, i64 %38
  %40 = getelementptr inbounds %struct.merge_parent, %struct.merge_parent* %39, i32 0, i32 0
  %41 = load %struct.object_id*, %struct.object_id** %7, align 8
  %42 = call i32 @oideq(i32* %40, %struct.object_id* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %33
  br label %52

45:                                               ; preds = %33, %30
  %46 = load %struct.merge_parents*, %struct.merge_parents** %5, align 8
  %47 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %46, i32 0, i32 1
  %48 = load %struct.merge_parent*, %struct.merge_parent** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.merge_parent, %struct.merge_parent* %48, i64 %50
  store %struct.merge_parent* %51, %struct.merge_parent** %4, align 8
  br label %56

52:                                               ; preds = %44, %29
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %9

55:                                               ; preds = %9
  store %struct.merge_parent* null, %struct.merge_parent** %4, align 8
  br label %56

56:                                               ; preds = %55, %45
  %57 = load %struct.merge_parent*, %struct.merge_parent** %4, align 8
  ret %struct.merge_parent* %57
}

declare dso_local i32 @oideq(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
