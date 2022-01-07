; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_ProbeGeneratorFrequency.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ce/extr_tau32-ddk.c_TAU32_ProbeGeneratorFrequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @TAU32_ProbeGeneratorFrequency(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %5, align 8
  %7 = load i64, i64* %2, align 8
  %8 = lshr i64 %7, 32
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = trunc i64 %9 to i32
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %14

13:                                               ; preds = %1
  store i64 2048000, i64* %6, align 8
  br label %28

14:                                               ; preds = %12
  %15 = load i64, i64* %6, align 8
  %16 = icmp ult i64 %15, 2043000
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %19

18:                                               ; preds = %14
  store i64 2043000, i64* %6, align 8
  br label %27

19:                                               ; preds = %17
  %20 = load i64, i64* %6, align 8
  %21 = icmp uge i64 %20, 2053000
  br i1 %21, label %23, label %22

22:                                               ; preds = %19
  br label %24

23:                                               ; preds = %19
  store i64 2053000, i64* %6, align 8
  br label %26

24:                                               ; preds = %22
  %25 = load i64, i64* %2, align 8
  store i64 %25, i64* %5, align 8
  br label %26

26:                                               ; preds = %24, %23
  br label %27

27:                                               ; preds = %26, %18
  br label %28

28:                                               ; preds = %27, %13
  %29 = load i64, i64* %6, align 8
  %30 = shl i64 %29, 32
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %30, %31
  store i64 %32, i64* %2, align 8
  %33 = load i64, i64* %2, align 8
  %34 = add i64 %33, 4096000
  store i64 %34, i64* %2, align 8
  %35 = load i64, i64* %2, align 8
  %36 = lshr i64 %35, 16
  store i64 %36, i64* %2, align 8
  %37 = load i64, i64* %2, align 8
  %38 = call { i64, i64 } asm "divl $3", "={ax}|{ax},={dx}|{dx},A|A,r|m,~{cc},~{dirflag},~{fpsr},~{flags}"(i64 %37, i32 125) #2, !srcloc !2
  %39 = extractvalue { i64, i64 } %38, 0
  %40 = extractvalue { i64, i64 } %38, 1
  store i64 %39, i64* %3, align 8
  store i64 %40, i64* %4, align 8
  %41 = load i64, i64* %3, align 8
  %42 = call i64 @kD2ag4(i64 %41, i32 8192000)
  ret i64 %42
}

declare dso_local i64 @kD2ag4(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 732}
