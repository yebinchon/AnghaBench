; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_run_sort.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_radixsort.c_run_sort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sort_list_item = type { i32 }
%struct.sort_level = type { i64, i64, %struct.sort_list_item** }

@MT_SORT_THRESHOLD = common dso_local global i64 0, align 8
@PTHREAD_MUTEX_ADAPTIVE_NP = common dso_local global i32 0, align 4
@g_ls_cond = common dso_local global i32 0, align 4
@g_ls_mutex = common dso_local global i32 0, align 4
@mtsem = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@sort_left = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sort_list_item**, i64)* @run_sort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @run_sort(%struct.sort_list_item** %0, i64 %1) #0 {
  %3 = alloca %struct.sort_list_item**, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.sort_level*, align 8
  store %struct.sort_list_item** %0, %struct.sort_list_item*** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = call %struct.sort_level* @sort_malloc(i32 24)
  store %struct.sort_level* %6, %struct.sort_level** %5, align 8
  %7 = load %struct.sort_level*, %struct.sort_level** %5, align 8
  %8 = call i32 @memset(%struct.sort_level* %7, i32 0, i32 24)
  %9 = load %struct.sort_list_item**, %struct.sort_list_item*** %3, align 8
  %10 = load %struct.sort_level*, %struct.sort_level** %5, align 8
  %11 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %10, i32 0, i32 2
  store %struct.sort_list_item** %9, %struct.sort_list_item*** %11, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load %struct.sort_level*, %struct.sort_level** %5, align 8
  %14 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load i64, i64* %4, align 8
  %16 = load %struct.sort_level*, %struct.sort_level** %5, align 8
  %17 = getelementptr inbounds %struct.sort_level, %struct.sort_level* %16, i32 0, i32 1
  store i64 %15, i64* %17, align 8
  %18 = load %struct.sort_level*, %struct.sort_level** %5, align 8
  %19 = call i32 @run_top_sort_level(%struct.sort_level* %18)
  %20 = load %struct.sort_level*, %struct.sort_level** %5, align 8
  %21 = call i32 @free_sort_level(%struct.sort_level* %20)
  ret void
}

declare dso_local %struct.sort_level* @sort_malloc(i32) #1

declare dso_local i32 @memset(%struct.sort_level*, i32, i32) #1

declare dso_local i32 @run_top_sort_level(%struct.sort_level*) #1

declare dso_local i32 @free_sort_level(%struct.sort_level*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
