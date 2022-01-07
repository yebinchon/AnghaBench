; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_type_zone_allocated.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_type_zone_allocated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malloc_type = type { %struct.malloc_type_internal* }
%struct.malloc_type_internal = type { i64*, i32 }
%struct.malloc_type_stats = type { i64, i32, i32 }

@DTMALLOC_PROBE_MALLOC = common dso_local global i64 0, align 8
@dtrace_malloc_enabled = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.malloc_type*, i64, i32)* @malloc_type_zone_allocated to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @malloc_type_zone_allocated(%struct.malloc_type* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.malloc_type*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.malloc_type_internal*, align 8
  %8 = alloca %struct.malloc_type_stats*, align 8
  store %struct.malloc_type* %0, %struct.malloc_type** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 (...) @critical_enter()
  %10 = load %struct.malloc_type*, %struct.malloc_type** %4, align 8
  %11 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %10, i32 0, i32 0
  %12 = load %struct.malloc_type_internal*, %struct.malloc_type_internal** %11, align 8
  store %struct.malloc_type_internal* %12, %struct.malloc_type_internal** %7, align 8
  %13 = load %struct.malloc_type_internal*, %struct.malloc_type_internal** %7, align 8
  %14 = getelementptr inbounds %struct.malloc_type_internal, %struct.malloc_type_internal* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.malloc_type_stats* @zpcpu_get(i32 %15)
  store %struct.malloc_type_stats* %16, %struct.malloc_type_stats** %8, align 8
  %17 = load i64, i64* %5, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %22 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %26 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %19, %3
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, -1
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  %33 = load i32, i32* %6, align 4
  %34 = shl i32 1, %33
  %35 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %8, align 8
  %36 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %39

39:                                               ; preds = %32, %29
  %40 = call i32 (...) @critical_exit()
  ret void
}

declare dso_local i32 @critical_enter(...) #1

declare dso_local %struct.malloc_type_stats* @zpcpu_get(i32) #1

declare dso_local i32 @critical_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
