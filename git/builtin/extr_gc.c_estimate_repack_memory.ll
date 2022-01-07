; ModuleID = '/home/carl/AnghaBench/git/builtin/extr_gc.c_estimate_repack_memory.c'
source_filename = "/home/carl/AnghaBench/git/builtin/extr_gc.c_estimate_repack_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.packed_git = type { i64, i64 }

@delta_base_cache_limit = common dso_local global i64 0, align 8
@max_delta_cache_size = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.packed_git*)* @estimate_repack_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @estimate_repack_memory(%struct.packed_git* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.packed_git*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.packed_git* %0, %struct.packed_git** %3, align 8
  %7 = call i64 (...) @approximate_object_count()
  store i64 %7, i64* %4, align 8
  %8 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %9 = icmp ne %struct.packed_git* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %10, %1
  store i64 0, i64* %2, align 8
  br label %51

14:                                               ; preds = %10
  %15 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %16 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.packed_git*, %struct.packed_git** %3, align 8
  %19 = getelementptr inbounds %struct.packed_git, %struct.packed_git* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = add i64 %17, %20
  store i64 %21, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = mul i64 4, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* %4, align 8
  %25 = mul i64 4, %24
  %26 = udiv i64 %25, 2
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %4, align 8
  %30 = mul i64 4, %29
  %31 = udiv i64 %30, 2
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %4, align 8
  %35 = mul i64 8, %34
  %36 = load i64, i64* %6, align 8
  %37 = add i64 %36, %35
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %4, align 8
  %39 = mul i64 4, %38
  %40 = load i64, i64* %6, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %6, align 8
  %42 = load i64, i64* @delta_base_cache_limit, align 8
  %43 = load i64, i64* %6, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %6, align 8
  %45 = load i64, i64* @max_delta_cache_size, align 8
  %46 = load i64, i64* %6, align 8
  %47 = add i64 %46, %45
  store i64 %47, i64* %6, align 8
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = add i64 %48, %49
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %14, %13
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

declare dso_local i64 @approximate_object_count(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
