; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_add_merge_parent.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_fmt-merge-msg.c_add_merge_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_parents = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.merge_parents*, %struct.object_id*, %struct.object_id*)* @add_merge_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_merge_parent(%struct.merge_parents* %0, %struct.object_id* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.merge_parents*, align 8
  %5 = alloca %struct.object_id*, align 8
  %6 = alloca %struct.object_id*, align 8
  store %struct.merge_parents* %0, %struct.merge_parents** %4, align 8
  store %struct.object_id* %1, %struct.object_id** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %7 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %8 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %3
  %12 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %13 = load %struct.object_id*, %struct.object_id** %5, align 8
  %14 = load %struct.object_id*, %struct.object_id** %6, align 8
  %15 = call i64 @find_merge_parent(%struct.merge_parents* %12, %struct.object_id* %13, %struct.object_id* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %65

18:                                               ; preds = %11, %3
  %19 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %20 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %23 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %24, 1
  %26 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %27 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @ALLOC_GROW(%struct.TYPE_2__* %21, i32 %25, i32 %28)
  %30 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %31 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %34 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load %struct.object_id*, %struct.object_id** %5, align 8
  %40 = call i32 @oidcpy(i32* %38, %struct.object_id* %39)
  %41 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %42 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %45 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load %struct.object_id*, %struct.object_id** %6, align 8
  %51 = call i32 @oidcpy(i32* %49, %struct.object_id* %50)
  %52 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %53 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %56 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.merge_parents*, %struct.merge_parents** %4, align 8
  %62 = getelementptr inbounds %struct.merge_parents, %struct.merge_parents* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 8
  br label %65

65:                                               ; preds = %18, %17
  ret void
}

declare dso_local i64 @find_merge_parent(%struct.merge_parents*, %struct.object_id*, %struct.object_id*) #1

declare dso_local i32 @ALLOC_GROW(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @oidcpy(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
