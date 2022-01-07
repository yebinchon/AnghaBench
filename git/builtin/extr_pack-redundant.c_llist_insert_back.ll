; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_insert_back.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-redundant.c_llist_insert_back.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.llist_item = type { i32 }
%struct.llist = type { i32 }
%struct.object_id = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.llist_item* (%struct.llist*, %struct.object_id*)* @llist_insert_back to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.llist_item* @llist_insert_back(%struct.llist* %0, %struct.object_id* %1) #0 {
  %3 = alloca %struct.llist*, align 8
  %4 = alloca %struct.object_id*, align 8
  store %struct.llist* %0, %struct.llist** %3, align 8
  store %struct.object_id* %1, %struct.object_id** %4, align 8
  %5 = load %struct.llist*, %struct.llist** %3, align 8
  %6 = load %struct.llist*, %struct.llist** %3, align 8
  %7 = getelementptr inbounds %struct.llist, %struct.llist* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.object_id*, %struct.object_id** %4, align 8
  %10 = call %struct.llist_item* @llist_insert(%struct.llist* %5, i32 %8, %struct.object_id* %9)
  ret %struct.llist_item* %10
}

declare dso_local %struct.llist_item* @llist_insert(%struct.llist*, i32, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
