; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_type_freed.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_malloc.c_malloc_type_freed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.malloc_type = type { %struct.malloc_type_internal* }
%struct.malloc_type_internal = type { i64*, i32 }
%struct.malloc_type_stats = type { i64, i32 }

@DTMALLOC_PROBE_FREE = common dso_local global i64 0, align 8
@dtrace_malloc_enabled = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @malloc_type_freed(%struct.malloc_type* %0, i64 %1) #0 {
  %3 = alloca %struct.malloc_type*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.malloc_type_internal*, align 8
  %6 = alloca %struct.malloc_type_stats*, align 8
  store %struct.malloc_type* %0, %struct.malloc_type** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 (...) @critical_enter()
  %8 = load %struct.malloc_type*, %struct.malloc_type** %3, align 8
  %9 = getelementptr inbounds %struct.malloc_type, %struct.malloc_type* %8, i32 0, i32 0
  %10 = load %struct.malloc_type_internal*, %struct.malloc_type_internal** %9, align 8
  store %struct.malloc_type_internal* %10, %struct.malloc_type_internal** %5, align 8
  %11 = load %struct.malloc_type_internal*, %struct.malloc_type_internal** %5, align 8
  %12 = getelementptr inbounds %struct.malloc_type_internal, %struct.malloc_type_internal* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.malloc_type_stats* @zpcpu_get(i32 %13)
  store %struct.malloc_type_stats* %14, %struct.malloc_type_stats** %6, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %6, align 8
  %17 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add i64 %18, %15
  store i64 %19, i64* %17, align 8
  %20 = load %struct.malloc_type_stats*, %struct.malloc_type_stats** %6, align 8
  %21 = getelementptr inbounds %struct.malloc_type_stats, %struct.malloc_type_stats* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 8
  %24 = call i32 (...) @critical_exit()
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
