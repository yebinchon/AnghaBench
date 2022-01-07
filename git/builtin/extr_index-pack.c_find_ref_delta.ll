; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_ref_delta.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_index-pack.c_find_ref_delta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ref_delta_entry = type { i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.object_id = type { i32 }

@nr_ref_deltas = common dso_local global i32 0, align 4
@ref_deltas = common dso_local global %struct.ref_delta_entry* null, align 8
@objects = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.object_id*, i32)* @find_ref_delta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_ref_delta(%struct.object_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.object_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ref_delta_entry*, align 8
  %10 = alloca i32, align 4
  store %struct.object_id* %0, %struct.object_id** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %11 = load i32, i32* @nr_ref_deltas, align 4
  store i32 %11, i32* %7, align 4
  br label %12

12:                                               ; preds = %48, %46, %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %51

16:                                               ; preds = %12
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %6, align 4
  %20 = sub nsw i32 %18, %19
  %21 = sdiv i32 %20, 2
  %22 = add nsw i32 %17, %21
  store i32 %22, i32* %8, align 4
  %23 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** @ref_deltas, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %23, i64 %25
  store %struct.ref_delta_entry* %26, %struct.ref_delta_entry** %9, align 8
  %27 = load %struct.object_id*, %struct.object_id** %4, align 8
  %28 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %9, align 8
  %29 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %28, i32 0, i32 1
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @objects, align 8
  %32 = load %struct.ref_delta_entry*, %struct.ref_delta_entry** %9, align 8
  %33 = getelementptr inbounds %struct.ref_delta_entry, %struct.ref_delta_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @compare_ref_delta_bases(%struct.object_id* %27, i32* %29, i32 %30, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %16
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %55

43:                                               ; preds = %16
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %7, align 4
  br label %12

48:                                               ; preds = %43
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %12

51:                                               ; preds = %12
  %52 = load i32, i32* %6, align 4
  %53 = sub nsw i32 0, %52
  %54 = sub nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %41
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @compare_ref_delta_bases(%struct.object_id*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
