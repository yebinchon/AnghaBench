; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_copy.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist = type { %struct.llist_item*, %struct.llist_item*, i32 }
%struct.llist_item = type { %struct.llist_item*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llist* (%struct.llist*)* @llist_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llist* @llist_copy(%struct.llist* %0) #0 {
  %2 = alloca %struct.llist*, align 8
  %3 = alloca %struct.llist*, align 8
  %4 = alloca %struct.llist*, align 8
  %5 = alloca %struct.llist_item*, align 8
  %6 = alloca %struct.llist_item*, align 8
  %7 = alloca %struct.llist_item*, align 8
  store %struct.llist* %0, %struct.llist** %3, align 8
  %8 = call i32 @llist_init(%struct.llist** %4)
  %9 = load %struct.llist*, %struct.llist** %3, align 8
  %10 = getelementptr inbounds %struct.llist, %struct.llist* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.llist*, %struct.llist** %4, align 8
  %13 = getelementptr inbounds %struct.llist, %struct.llist* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 8
  %14 = icmp eq i32 %11, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load %struct.llist*, %struct.llist** %4, align 8
  store %struct.llist* %16, %struct.llist** %2, align 8
  br label %59

17:                                               ; preds = %1
  %18 = call i8* (...) @llist_item_get()
  %19 = bitcast i8* %18 to %struct.llist_item*
  %20 = load %struct.llist*, %struct.llist** %4, align 8
  %21 = getelementptr inbounds %struct.llist, %struct.llist* %20, i32 0, i32 1
  store %struct.llist_item* %19, %struct.llist_item** %21, align 8
  store %struct.llist_item* %19, %struct.llist_item** %5, align 8
  %22 = load %struct.llist*, %struct.llist** %3, align 8
  %23 = getelementptr inbounds %struct.llist, %struct.llist* %22, i32 0, i32 1
  %24 = load %struct.llist_item*, %struct.llist_item** %23, align 8
  %25 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %28 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load %struct.llist*, %struct.llist** %3, align 8
  %30 = getelementptr inbounds %struct.llist, %struct.llist* %29, i32 0, i32 1
  %31 = load %struct.llist_item*, %struct.llist_item** %30, align 8
  %32 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %31, i32 0, i32 0
  %33 = load %struct.llist_item*, %struct.llist_item** %32, align 8
  store %struct.llist_item* %33, %struct.llist_item** %6, align 8
  br label %34

34:                                               ; preds = %37, %17
  %35 = load %struct.llist_item*, %struct.llist_item** %6, align 8
  %36 = icmp ne %struct.llist_item* %35, null
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  store %struct.llist_item* %38, %struct.llist_item** %7, align 8
  %39 = call i8* (...) @llist_item_get()
  %40 = bitcast i8* %39 to %struct.llist_item*
  store %struct.llist_item* %40, %struct.llist_item** %5, align 8
  %41 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %42 = load %struct.llist_item*, %struct.llist_item** %7, align 8
  %43 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %42, i32 0, i32 0
  store %struct.llist_item* %41, %struct.llist_item** %43, align 8
  %44 = load %struct.llist_item*, %struct.llist_item** %6, align 8
  %45 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %48 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load %struct.llist_item*, %struct.llist_item** %6, align 8
  %50 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %49, i32 0, i32 0
  %51 = load %struct.llist_item*, %struct.llist_item** %50, align 8
  store %struct.llist_item* %51, %struct.llist_item** %6, align 8
  br label %34

52:                                               ; preds = %34
  %53 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %54 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %53, i32 0, i32 0
  store %struct.llist_item* null, %struct.llist_item** %54, align 8
  %55 = load %struct.llist_item*, %struct.llist_item** %5, align 8
  %56 = load %struct.llist*, %struct.llist** %4, align 8
  %57 = getelementptr inbounds %struct.llist, %struct.llist* %56, i32 0, i32 0
  store %struct.llist_item* %55, %struct.llist_item** %57, align 8
  %58 = load %struct.llist*, %struct.llist** %4, align 8
  store %struct.llist* %58, %struct.llist** %2, align 8
  br label %59

59:                                               ; preds = %52, %15
  %60 = load %struct.llist*, %struct.llist** %2, align 8
  ret %struct.llist* %60
}

declare dso_local i32 @llist_init(%struct.llist**) #1

declare dso_local i8* @llist_item_get(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
