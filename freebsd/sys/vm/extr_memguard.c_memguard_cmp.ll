; ModuleID = '/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/vm/extr_memguard.c_memguard_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memguard_minsize = common dso_local global i64 0, align 8
@memguard_minsize_reject = common dso_local global i32 0, align 4
@memguard_options = common dso_local global i32 0, align 4
@MG_GUARD_ALLLARGE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@memguard_frequency = common dso_local global i32 0, align 4
@memguard_frequency_hits = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @memguard_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @memguard_cmp(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* @memguard_minsize, align 8
  %6 = icmp ult i64 %4, %5
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load i32, i32* @memguard_minsize_reject, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @memguard_minsize_reject, align 4
  store i32 0, i32* %2, align 4
  br label %32

10:                                               ; preds = %1
  %11 = load i32, i32* @memguard_options, align 4
  %12 = load i32, i32* @MG_GUARD_ALLLARGE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load i64, i64* %3, align 8
  %17 = load i64, i64* @PAGE_SIZE, align 8
  %18 = icmp uge i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %15
  store i32 1, i32* %2, align 4
  br label %32

20:                                               ; preds = %15, %10
  %21 = load i32, i32* @memguard_frequency, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  %24 = call i32 (...) @random()
  %25 = srem i32 %24, 100000
  %26 = load i32, i32* @memguard_frequency, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @memguard_frequency_hits, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* @memguard_frequency_hits, align 4
  store i32 1, i32* %2, align 4
  br label %32

31:                                               ; preds = %23, %20
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %19, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
