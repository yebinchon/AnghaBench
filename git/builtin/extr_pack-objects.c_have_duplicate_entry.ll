; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_have_duplicate_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_have_duplicate_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.object_entry = type { i32 }

@to_pack = common dso_local global i32 0, align 4
@nr_result = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32)* @have_duplicate_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @have_duplicate_entry(%struct.object_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_entry*, align 8
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.object_id*, %struct.object_id** %4, align 8
  %8 = call %struct.object_entry* @packlist_find(i32* @to_pack, %struct.object_id* %7)
  store %struct.object_entry* %8, %struct.object_entry** %6, align 8
  %9 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %10 = icmp ne %struct.object_entry* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %12
  %16 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %17 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @nr_result, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* @nr_result, align 4
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.object_entry*, %struct.object_entry** %6, align 8
  %25 = getelementptr inbounds %struct.object_entry, %struct.object_entry* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %12
  store i32 1, i32* %3, align 4
  br label %27

27:                                               ; preds = %26, %11
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.object_entry* @packlist_find(i32*, %struct.object_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
