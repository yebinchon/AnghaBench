; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_object_entry_from_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_object_entry_from_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }

@progress_state = common dso_local global i32 0, align 4
@nr_seen = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32, i32, i32, %struct.packed_git*, i32)* @add_object_entry_from_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_object_entry_from_bitmap(%struct.object_id* %0, i32 %1, i32 %2, i32 %3, %struct.packed_git* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.object_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.packed_git*, align 8
  %13 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.packed_git* %4, %struct.packed_git** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load i32, i32* @progress_state, align 4
  %15 = load i32, i32* @nr_seen, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @nr_seen, align 4
  %17 = call i32 @display_progress(i32 %14, i32 %16)
  %18 = load %struct.object_id*, %struct.object_id** %8, align 8
  %19 = call i64 @have_duplicate_entry(%struct.object_id* %18, i32 0)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %34

22:                                               ; preds = %6
  %23 = load %struct.object_id*, %struct.object_id** %8, align 8
  %24 = call i32 @want_object_in_pack(%struct.object_id* %23, i32 0, %struct.packed_git** %12, i32* %13)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22
  store i32 0, i32* %7, align 4
  br label %34

27:                                               ; preds = %22
  %28 = load %struct.object_id*, %struct.object_id** %8, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.packed_git*, %struct.packed_git** %12, align 8
  %32 = load i32, i32* %13, align 4
  %33 = call i32 @create_object_entry(%struct.object_id* %28, i32 %29, i32 %30, i32 0, i32 0, %struct.packed_git* %31, i32 %32)
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %27, %26, %21
  %35 = load i32, i32* %7, align 4
  ret i32 %35
}

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i64 @have_duplicate_entry(%struct.object_id*, i32) #1

declare dso_local i32 @want_object_in_pack(%struct.object_id*, i32, %struct.packed_git**, i32*) #1

declare dso_local i32 @create_object_entry(%struct.object_id*, i32, i32, i32, i32, %struct.packed_git*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
