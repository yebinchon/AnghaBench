; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_hw_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/sort/extr_sort.c_set_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_SC_PHYS_PAGES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"sysconf pages\00", align 1
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"sysconf psize\00", align 1
@free_memory = common dso_local global i32 0, align 4
@available_free_memory = common dso_local global i32 0, align 4
@_SC_NPROCESSORS_ONLN = common dso_local global i32 0, align 4
@ncpu = common dso_local global i32 0, align 4
@nthreads = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hw_params() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = load i32, i32* @_SC_PHYS_PAGES, align 4
  %4 = call i64 @sysconf(i32 %3)
  store i64 %4, i64* %1, align 8
  %5 = load i64, i64* %1, align 8
  %6 = icmp slt i64 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i64 1, i64* %1, align 8
  br label %9

9:                                                ; preds = %7, %0
  %10 = load i32, i32* @_SC_PAGESIZE, align 4
  %11 = call i64 @sysconf(i32 %10)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp slt i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = call i32 @perror(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  store i64 4096, i64* %2, align 8
  br label %16

16:                                               ; preds = %14, %9
  %17 = load i64, i64* %1, align 8
  %18 = load i64, i64* %2, align 8
  %19 = mul i64 %17, %18
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* @free_memory, align 4
  %21 = load i32, i32* @free_memory, align 4
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* @available_free_memory, align 4
  %23 = load i32, i32* @available_free_memory, align 4
  %24 = icmp slt i32 %23, 1024
  br i1 %24, label %25, label %26

25:                                               ; preds = %16
  store i32 1024, i32* @available_free_memory, align 4
  br label %26

26:                                               ; preds = %25, %16
  ret void
}

declare dso_local i64 @sysconf(i32) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
