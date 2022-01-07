; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_item_get.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_item_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_item = type { %struct.llist_item* }

@free_nodes = common dso_local global %struct.llist_item* null, align 8
@BLKSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llist_item* ()* @llist_item_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llist_item* @llist_item_get() #0 {
  %1 = alloca %struct.llist_item*, align 8
  %2 = alloca i32, align 4
  %3 = load %struct.llist_item*, %struct.llist_item** @free_nodes, align 8
  %4 = icmp ne %struct.llist_item* %3, null
  br i1 %4, label %5, label %10

5:                                                ; preds = %0
  %6 = load %struct.llist_item*, %struct.llist_item** @free_nodes, align 8
  store %struct.llist_item* %6, %struct.llist_item** %1, align 8
  %7 = load %struct.llist_item*, %struct.llist_item** @free_nodes, align 8
  %8 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %7, i32 0, i32 0
  %9 = load %struct.llist_item*, %struct.llist_item** %8, align 8
  store %struct.llist_item* %9, %struct.llist_item** @free_nodes, align 8
  br label %28

10:                                               ; preds = %0
  store i32 1, i32* %2, align 4
  %11 = load %struct.llist_item*, %struct.llist_item** %1, align 8
  %12 = load i32, i32* @BLKSIZE, align 4
  %13 = call i32 @ALLOC_ARRAY(%struct.llist_item* %11, i32 %12)
  br label %14

14:                                               ; preds = %24, %10
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @BLKSIZE, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %14
  %19 = load %struct.llist_item*, %struct.llist_item** %1, align 8
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.llist_item, %struct.llist_item* %19, i64 %21
  %23 = call i32 @llist_item_put(%struct.llist_item* %22)
  br label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %2, align 4
  br label %14

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %27, %5
  %29 = load %struct.llist_item*, %struct.llist_item** %1, align 8
  ret %struct.llist_item* %29
}

declare dso_local i32 @ALLOC_ARRAY(%struct.llist_item*, i32) #1

declare dso_local i32 @llist_item_put(%struct.llist_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
