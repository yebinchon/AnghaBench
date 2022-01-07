; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_object_list_from_bitmap.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_get_object_list_from_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rev_info = type { i32 }

@bitmap_git = common dso_local global i32 0, align 4
@reuse_packfile = common dso_local global i32 0, align 4
@reuse_packfile_objects = common dso_local global i64 0, align 8
@reuse_packfile_offset = common dso_local global i32 0, align 4
@nr_result = common dso_local global i32 0, align 4
@progress_state = common dso_local global i32 0, align 4
@add_object_entry_from_bitmap = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rev_info*)* @get_object_list_from_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_object_list_from_bitmap(%struct.rev_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rev_info*, align 8
  store %struct.rev_info* %0, %struct.rev_info** %3, align 8
  %4 = load %struct.rev_info*, %struct.rev_info** %3, align 8
  %5 = call i32 @prepare_bitmap_walk(%struct.rev_info* %4)
  store i32 %5, i32* @bitmap_git, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %29

8:                                                ; preds = %1
  %9 = call i64 (...) @pack_options_allow_reuse()
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* @bitmap_git, align 4
  %13 = call i32 @reuse_partial_packfile_from_bitmap(i32 %12, i32* @reuse_packfile, i64* @reuse_packfile_objects, i32* @reuse_packfile_offset)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load i64, i64* @reuse_packfile_objects, align 8
  %17 = call i32 @assert(i64 %16)
  %18 = load i64, i64* @reuse_packfile_objects, align 8
  %19 = load i32, i32* @nr_result, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %20, %18
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @nr_result, align 4
  %23 = load i32, i32* @progress_state, align 4
  %24 = load i32, i32* @nr_result, align 4
  %25 = call i32 @display_progress(i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %15, %11, %8
  %27 = load i32, i32* @bitmap_git, align 4
  %28 = call i32 @traverse_bitmap_commit_list(i32 %27, i32* @add_object_entry_from_bitmap)
  store i32 0, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %7
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @prepare_bitmap_walk(%struct.rev_info*) #1

declare dso_local i64 @pack_options_allow_reuse(...) #1

declare dso_local i32 @reuse_partial_packfile_from_bitmap(i32, i32*, i64*, i32*) #1

declare dso_local i32 @assert(i64) #1

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i32 @traverse_bitmap_commit_list(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
