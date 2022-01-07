; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_insert_sorted_unique.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_insert_sorted_unique.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist = type { %struct.llist_item* }
%struct.object_id = type { i32 }
%struct.llist_item = type { %struct.llist_item*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llist_item* (%struct.llist*, %struct.object_id*, %struct.llist_item*)* @llist_insert_sorted_unique to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llist_item* @llist_insert_sorted_unique(%struct.llist* %0, %struct.object_id* %1, %struct.llist_item* %2) #0 {
  %4 = alloca %struct.llist_item*, align 8
  %5 = alloca %struct.llist*, align 8
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca %struct.llist_item*, align 8
  %8 = alloca %struct.llist_item*, align 8
  %9 = alloca %struct.llist_item*, align 8
  %10 = alloca i32, align 4
  store %struct.llist* %0, %struct.llist** %5, align 8
  store %struct.object_id* %1, %struct.object_id** %6, align 8
  store %struct.llist_item* %2, %struct.llist_item** %7, align 8
  store %struct.llist_item* null, %struct.llist_item** %8, align 8
  %11 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %12 = icmp eq %struct.llist_item* %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.llist*, %struct.llist** %5, align 8
  %15 = getelementptr inbounds %struct.llist, %struct.llist* %14, i32 0, i32 0
  %16 = load %struct.llist_item*, %struct.llist_item** %15, align 8
  br label %19

17:                                               ; preds = %3
  %18 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  br label %19

19:                                               ; preds = %17, %13
  %20 = phi %struct.llist_item* [ %16, %13 ], [ %18, %17 ]
  store %struct.llist_item* %20, %struct.llist_item** %9, align 8
  br label %21

21:                                               ; preds = %42, %19
  %22 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %23 = icmp ne %struct.llist_item* %22, null
  br i1 %23, label %24, label %47

24:                                               ; preds = %21
  %25 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %26 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.object_id*, %struct.object_id** %6, align 8
  %29 = call i32 @oidcmp(i32 %27, %struct.object_id* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %24
  %33 = load %struct.llist*, %struct.llist** %5, align 8
  %34 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  %35 = load %struct.object_id*, %struct.object_id** %6, align 8
  %36 = call %struct.llist_item* @llist_insert(%struct.llist* %33, %struct.llist_item* %34, %struct.object_id* %35)
  store %struct.llist_item* %36, %struct.llist_item** %4, align 8
  br label %51

37:                                               ; preds = %24
  %38 = load i32, i32* %10, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %37
  %41 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  store %struct.llist_item* %41, %struct.llist_item** %4, align 8
  br label %51

42:                                               ; preds = %37
  %43 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  store %struct.llist_item* %43, %struct.llist_item** %8, align 8
  %44 = load %struct.llist_item*, %struct.llist_item** %9, align 8
  %45 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %44, i32 0, i32 0
  %46 = load %struct.llist_item*, %struct.llist_item** %45, align 8
  store %struct.llist_item* %46, %struct.llist_item** %9, align 8
  br label %21

47:                                               ; preds = %21
  %48 = load %struct.llist*, %struct.llist** %5, align 8
  %49 = load %struct.object_id*, %struct.object_id** %6, align 8
  %50 = call %struct.llist_item* @llist_insert_back(%struct.llist* %48, %struct.object_id* %49)
  store %struct.llist_item* %50, %struct.llist_item** %4, align 8
  br label %51

51:                                               ; preds = %47, %40, %32
  %52 = load %struct.llist_item*, %struct.llist_item** %4, align 8
  ret %struct.llist_item* %52
}

declare dso_local i32 @oidcmp(i32, %struct.object_id*) #1

declare dso_local %struct.llist_item* @llist_insert(%struct.llist*, %struct.llist_item*, %struct.object_id*) #1

declare dso_local %struct.llist_item* @llist_insert_back(%struct.llist*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
