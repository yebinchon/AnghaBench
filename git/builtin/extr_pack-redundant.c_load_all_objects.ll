; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_load_all_objects.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_load_all_objects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pack_list = type { %struct.pack_list*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.llist_item* }
%struct.llist_item = type { %struct.llist_item*, i32 }

@local_packs = common dso_local global %struct.pack_list* null, align 8
@all_objects = common dso_local global i32 0, align 4
@altodb_packs = common dso_local global %struct.pack_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @load_all_objects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_all_objects() #0 {
  %1 = alloca %struct.pack_list*, align 8
  %2 = alloca %struct.llist_item*, align 8
  %3 = alloca %struct.llist_item*, align 8
  %4 = load %struct.pack_list*, %struct.pack_list** @local_packs, align 8
  store %struct.pack_list* %4, %struct.pack_list** %1, align 8
  %5 = call i32 @llist_init(i32* @all_objects)
  br label %6

6:                                                ; preds = %28, %0
  %7 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %8 = icmp ne %struct.pack_list* %7, null
  br i1 %8, label %9, label %32

9:                                                ; preds = %6
  store %struct.llist_item* null, %struct.llist_item** %2, align 8
  %10 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %11 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.llist_item*, %struct.llist_item** %13, align 8
  store %struct.llist_item* %14, %struct.llist_item** %3, align 8
  br label %15

15:                                               ; preds = %18, %9
  %16 = load %struct.llist_item*, %struct.llist_item** %3, align 8
  %17 = icmp ne %struct.llist_item* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %15
  %19 = load i32, i32* @all_objects, align 4
  %20 = load %struct.llist_item*, %struct.llist_item** %3, align 8
  %21 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.llist_item*, %struct.llist_item** %2, align 8
  %24 = call %struct.llist_item* @llist_insert_sorted_unique(i32 %19, i32 %22, %struct.llist_item* %23)
  store %struct.llist_item* %24, %struct.llist_item** %2, align 8
  %25 = load %struct.llist_item*, %struct.llist_item** %3, align 8
  %26 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %25, i32 0, i32 0
  %27 = load %struct.llist_item*, %struct.llist_item** %26, align 8
  store %struct.llist_item* %27, %struct.llist_item** %3, align 8
  br label %15

28:                                               ; preds = %15
  %29 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %30 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %29, i32 0, i32 0
  %31 = load %struct.pack_list*, %struct.pack_list** %30, align 8
  store %struct.pack_list* %31, %struct.pack_list** %1, align 8
  br label %6

32:                                               ; preds = %6
  %33 = load %struct.pack_list*, %struct.pack_list** @altodb_packs, align 8
  store %struct.pack_list* %33, %struct.pack_list** %1, align 8
  br label %34

34:                                               ; preds = %37, %32
  %35 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %36 = icmp ne %struct.pack_list* %35, null
  br i1 %36, label %37, label %46

37:                                               ; preds = %34
  %38 = load i32, i32* @all_objects, align 4
  %39 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %40 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = call i32 @llist_sorted_difference_inplace(i32 %38, %struct.TYPE_2__* %41)
  %43 = load %struct.pack_list*, %struct.pack_list** %1, align 8
  %44 = getelementptr inbounds %struct.pack_list, %struct.pack_list* %43, i32 0, i32 0
  %45 = load %struct.pack_list*, %struct.pack_list** %44, align 8
  store %struct.pack_list* %45, %struct.pack_list** %1, align 8
  br label %34

46:                                               ; preds = %34
  ret void
}

declare dso_local i32 @llist_init(i32*) #1

declare dso_local %struct.llist_item* @llist_insert_sorted_unique(i32, i32, %struct.llist_item*) #1

declare dso_local i32 @llist_sorted_difference_inplace(i32, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
