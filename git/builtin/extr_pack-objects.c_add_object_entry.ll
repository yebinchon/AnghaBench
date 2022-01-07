; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_object_entry.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_pack-objects.c_add_object_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.object_id = type { i32 }
%struct.packed_git = type { i32 }

@progress_state = common dso_local global i32 0, align 4
@nr_seen = common dso_local global i32 0, align 4
@write_bitmap_index = common dso_local global i64 0, align 8
@WRITE_BITMAP_QUIET = common dso_local global i64 0, align 8
@no_closure_warning = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32, i8*, i32)* @add_object_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_object_entry(%struct.object_id* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.object_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.packed_git*, align 8
  %11 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.packed_git* null, %struct.packed_git** %10, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* @progress_state, align 4
  %13 = load i32, i32* @nr_seen, align 4
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* @nr_seen, align 4
  %15 = call i32 @display_progress(i32 %12, i32 %14)
  %16 = load %struct.object_id*, %struct.object_id** %6, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call i64 @have_duplicate_entry(%struct.object_id* %16, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %57

21:                                               ; preds = %4
  %22 = load %struct.object_id*, %struct.object_id** %6, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @want_object_in_pack(%struct.object_id* %22, i32 %23, %struct.packed_git** %10, i32* %11)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %39, label %26

26:                                               ; preds = %21
  %27 = load i64, i64* @write_bitmap_index, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = load i64, i64* @write_bitmap_index, align 8
  %31 = load i64, i64* @WRITE_BITMAP_QUIET, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i32, i32* @no_closure_warning, align 4
  %35 = call i32 @_(i32 %34)
  %36 = call i32 @warning(i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  store i64 0, i64* @write_bitmap_index, align 8
  br label %38

38:                                               ; preds = %37, %26
  store i32 0, i32* %5, align 4
  br label %57

39:                                               ; preds = %21
  %40 = load %struct.object_id*, %struct.object_id** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i8*, i8** %8, align 8
  %43 = call i32 @pack_name_hash(i8* %42)
  %44 = load i32, i32* %9, align 4
  %45 = load i8*, i8** %8, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load i8*, i8** %8, align 8
  %49 = call i64 @no_try_delta(i8* %48)
  %50 = icmp ne i64 %49, 0
  br label %51

51:                                               ; preds = %47, %39
  %52 = phi i1 [ false, %39 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = load %struct.packed_git*, %struct.packed_git** %10, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @create_object_entry(%struct.object_id* %40, i32 %41, i32 %43, i32 %44, i32 %53, %struct.packed_git* %54, i32 %55)
  store i32 1, i32* %5, align 4
  br label %57

57:                                               ; preds = %51, %38, %20
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i32 @display_progress(i32, i32) #1

declare dso_local i64 @have_duplicate_entry(%struct.object_id*, i32) #1

declare dso_local i32 @want_object_in_pack(%struct.object_id*, i32, %struct.packed_git**, i32*) #1

declare dso_local i32 @warning(i32) #1

declare dso_local i32 @_(i32) #1

declare dso_local i32 @create_object_entry(%struct.object_id*, i32, i32, i32, i32, %struct.packed_git*, i32) #1

declare dso_local i32 @pack_name_hash(i8*) #1

declare dso_local i64 @no_try_delta(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
