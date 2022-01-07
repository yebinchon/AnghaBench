; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_fudge.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_fudge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.vm_map = type { i32 }

@vm_memguard_divisor = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vm.memguard.divisor\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@vm_cnt = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@memguard_physlimit = common dso_local global i32 0, align 4
@memguard_mapsize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @memguard_fudge(i64 %0, %struct.vm_map* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.vm_map*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store %struct.vm_map* %1, %struct.vm_map** %4, align 8
  store i32 10, i32* @vm_memguard_divisor, align 4
  %7 = call i32 @TUNABLE_INT_FETCH(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* @vm_memguard_divisor)
  %8 = load %struct.vm_map*, %struct.vm_map** %4, align 8
  %9 = call i32 @vm_map_max(%struct.vm_map* %8)
  %10 = load %struct.vm_map*, %struct.vm_map** %4, align 8
  %11 = call i32 @vm_map_min(%struct.vm_map* %10)
  %12 = sub nsw i32 %9, %11
  %13 = load i32, i32* @PAGE_SIZE, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* @vm_memguard_divisor, align 4
  %16 = icmp sle i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @vm_memguard_divisor, align 4
  %20 = sdiv i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17, %2
  store i32 10, i32* @vm_memguard_divisor, align 4
  br label %23

23:                                               ; preds = %22, %17
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @vm_cnt, i32 0, i32 0), align 4
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @vm_memguard_divisor, align 4
  %27 = sdiv i32 %25, %26
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  store i32 %29, i32* @memguard_physlimit, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @vm_memguard_divisor, align 4
  %32 = sdiv i32 %30, %31
  %33 = call i32 @round_page(i32 %32)
  store i32 %33, i32* @memguard_mapsize, align 4
  %34 = load i32, i32* @memguard_mapsize, align 4
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = mul nsw i32 2, %35
  %37 = sdiv i32 %34, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %23
  %41 = load i32, i32* %5, align 4
  %42 = mul nsw i32 %41, 2
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = mul nsw i32 %42, %43
  store i32 %44, i32* @memguard_mapsize, align 4
  br label %45

45:                                               ; preds = %40, %23
  %46 = load i64, i64* %3, align 8
  %47 = load i32, i32* @memguard_mapsize, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %46, %48
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = icmp ugt i64 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %45
  store i32 0, i32* @memguard_mapsize, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i64, i64* %3, align 8
  %56 = load i32, i32* @memguard_mapsize, align 4
  %57 = sext i32 %56 to i64
  %58 = add i64 %55, %57
  ret i64 %58
}

declare dso_local i32 @TUNABLE_INT_FETCH(i8*, i32*) #1

declare dso_local i32 @vm_map_max(%struct.vm_map*) #1

declare dso_local i32 @vm_map_min(%struct.vm_map*) #1

declare dso_local i32 @round_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
