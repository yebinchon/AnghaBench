; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_i8254_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_i8254_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@i8254_freq = common dso_local global i64 0, align 8
@i8254_max_count = common dso_local global i32 0, align 4
@kdb_active = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i8254_delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = call i32 (...) @getit()
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %2, align 4
  %9 = sub nsw i32 %8, 0
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %2, align 4
  %11 = icmp sle i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %31

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp slt i32 %14, 256
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = mul nsw i32 %17, 39099
  %19 = add nsw i32 %18, 32768
  %20 = sub nsw i32 %19, 1
  %21 = ashr i32 %20, 15
  store i32 %21, i32* %6, align 4
  br label %30

22:                                               ; preds = %13
  %23 = load i32, i32* %2, align 4
  %24 = sext i32 %23 to i64
  %25 = load i64, i64* @i8254_freq, align 8
  %26 = mul nsw i64 %24, %25
  %27 = add nsw i64 %26, 999999
  %28 = sdiv i64 %27, 1000000
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %22, %16
  br label %31

31:                                               ; preds = %30, %12
  br label %32

32:                                               ; preds = %51, %31
  %33 = load i32, i32* %6, align 4
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %55

35:                                               ; preds = %32
  %36 = call i32 (...) @getit()
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* %5, align 4
  %39 = sub nsw i32 %37, %38
  store i32 %39, i32* %3, align 4
  %40 = load i32, i32* %5, align 4
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load i32, i32* @i8254_max_count, align 4
  %45 = load i32, i32* %3, align 4
  %46 = add nsw i32 %45, %44
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %43
  br label %51

51:                                               ; preds = %50, %35
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %6, align 4
  %54 = sub nsw i32 %53, %52
  store i32 %54, i32* %6, align 4
  br label %32

55:                                               ; preds = %32
  ret void
}

declare dso_local i32 @getit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
