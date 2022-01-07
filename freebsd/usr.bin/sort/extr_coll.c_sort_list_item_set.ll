; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_sort_list_item_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_coll.c_sort_list_item_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_list_item = type { %struct.bwstring*, i32 }
%struct.bwstring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sort_list_item_set(%struct.sort_list_item* %0, %struct.bwstring* %1) #0 {
  %3 = alloca %struct.sort_list_item*, align 8
  %4 = alloca %struct.bwstring*, align 8
  store %struct.sort_list_item* %0, %struct.sort_list_item** %3, align 8
  store %struct.bwstring* %1, %struct.bwstring** %4, align 8
  %5 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %6 = icmp ne %struct.sort_list_item* %5, null
  br i1 %6, label %7, label %39

7:                                                ; preds = %2
  %8 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %9 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %8, i32 0, i32 0
  %10 = load %struct.bwstring*, %struct.bwstring** %9, align 8
  %11 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %12 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %11, i32 0, i32 1
  %13 = call i32 @clean_keys_array(%struct.bwstring* %10, i32* %12)
  %14 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %15 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %14, i32 0, i32 0
  %16 = load %struct.bwstring*, %struct.bwstring** %15, align 8
  %17 = icmp ne %struct.bwstring* %16, null
  br i1 %17, label %18, label %33

18:                                               ; preds = %7
  %19 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %20 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %19, i32 0, i32 0
  %21 = load %struct.bwstring*, %struct.bwstring** %20, align 8
  %22 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %23 = icmp eq %struct.bwstring* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %39

25:                                               ; preds = %18
  %26 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %27 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %26, i32 0, i32 0
  %28 = load %struct.bwstring*, %struct.bwstring** %27, align 8
  %29 = call i32 @bwsfree(%struct.bwstring* %28)
  %30 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %31 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %30, i32 0, i32 0
  store %struct.bwstring* null, %struct.bwstring** %31, align 8
  br label %32

32:                                               ; preds = %25
  br label %33

33:                                               ; preds = %32, %7
  %34 = load %struct.bwstring*, %struct.bwstring** %4, align 8
  %35 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %36 = getelementptr inbounds %struct.sort_list_item, %struct.sort_list_item* %35, i32 0, i32 0
  store %struct.bwstring* %34, %struct.bwstring** %36, align 8
  %37 = load %struct.sort_list_item*, %struct.sort_list_item** %3, align 8
  %38 = call i32 @sort_list_item_make_key(%struct.sort_list_item* %37)
  br label %39

39:                                               ; preds = %24, %33, %2
  ret void
}

declare dso_local i32 @clean_keys_array(%struct.bwstring*, i32*) #1

declare dso_local i32 @bwsfree(%struct.bwstring*) #1

declare dso_local i32 @sort_list_item_make_key(%struct.sort_list_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
