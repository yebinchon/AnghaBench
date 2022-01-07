; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_insert.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist = type { i64, %struct.llist_item*, %struct.llist_item* }
%struct.llist_item = type { %struct.llist_item*, %struct.object_id* }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llist_item* (%struct.llist*, %struct.llist_item*, %struct.object_id*)* @llist_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llist_item* @llist_insert(%struct.llist* %0, %struct.llist_item* %1, %struct.object_id* %2) #0 {
  %4 = alloca %struct.llist*, align 8
  %5 = alloca %struct.llist_item*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.llist_item*, align 8
  store %struct.llist* %0, %struct.llist** %4, align 8
  store %struct.llist_item* %1, %struct.llist_item** %5, align 8
  store %struct.object_id* %2, %struct.object_id** %6, align 8
  %8 = call %struct.llist_item* (...) @llist_item_get()
  store %struct.llist_item* %8, %struct.llist_item** %7, align 8
  %9 = load %struct.object_id*, %struct.object_id** %6, align 8
  %10 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %11 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %10, i32 0, i32 1
  store %struct.object_id* %9, %struct.object_id** %11, align 8
  %12 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %13 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %12, i32 0, i32 0
  store %struct.llist_item* null, %struct.llist_item** %13, align 8
  %14 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %15 = icmp ne %struct.llist_item* %14, null
  br i1 %15, label %16, label %35

16:                                               ; preds = %3
  %17 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %18 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %17, i32 0, i32 0
  %19 = load %struct.llist_item*, %struct.llist_item** %18, align 8
  %20 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %21 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %20, i32 0, i32 0
  store %struct.llist_item* %19, %struct.llist_item** %21, align 8
  %22 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %23 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %24 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %23, i32 0, i32 0
  store %struct.llist_item* %22, %struct.llist_item** %24, align 8
  %25 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %26 = load %struct.llist*, %struct.llist** %4, align 8
  %27 = getelementptr inbounds %struct.llist, %struct.llist* %26, i32 0, i32 2
  %28 = load %struct.llist_item*, %struct.llist_item** %27, align 8
  %29 = icmp eq %struct.llist_item* %25, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %16
  %31 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %32 = load %struct.llist*, %struct.llist** %4, align 8
  %33 = getelementptr inbounds %struct.llist, %struct.llist* %32, i32 0, i32 2
  store %struct.llist_item* %31, %struct.llist_item** %33, align 8
  br label %34

34:                                               ; preds = %30, %16
  br label %54

35:                                               ; preds = %3
  %36 = load %struct.llist*, %struct.llist** %4, align 8
  %37 = getelementptr inbounds %struct.llist, %struct.llist* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %42 = load %struct.llist*, %struct.llist** %4, align 8
  %43 = getelementptr inbounds %struct.llist, %struct.llist* %42, i32 0, i32 2
  store %struct.llist_item* %41, %struct.llist_item** %43, align 8
  br label %50

44:                                               ; preds = %35
  %45 = load %struct.llist*, %struct.llist** %4, align 8
  %46 = getelementptr inbounds %struct.llist, %struct.llist* %45, i32 0, i32 1
  %47 = load %struct.llist_item*, %struct.llist_item** %46, align 8
  %48 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %49 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %48, i32 0, i32 0
  store %struct.llist_item* %47, %struct.llist_item** %49, align 8
  br label %50

50:                                               ; preds = %44, %40
  %51 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %52 = load %struct.llist*, %struct.llist** %4, align 8
  %53 = getelementptr inbounds %struct.llist, %struct.llist* %52, i32 0, i32 1
  store %struct.llist_item* %51, %struct.llist_item** %53, align 8
  br label %54

54:                                               ; preds = %50, %34
  %55 = load %struct.llist*, %struct.llist** %4, align 8
  %56 = getelementptr inbounds %struct.llist, %struct.llist* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 1
  store i64 %58, i64* %56, align 8
  %59 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  ret %struct.llist_item* %59
}

declare dso_local %struct.llist_item* @llist_item_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
