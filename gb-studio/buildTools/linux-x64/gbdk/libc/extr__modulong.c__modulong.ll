; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/libc/extr__modulong.c__modulong.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/libc/extr__modulong.c__modulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_modulong(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8, align 1
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i8 0, i8* %5, align 1
  br label %6

6:                                                ; preds = %20, %2
  %7 = load i64, i64* %4, align 8
  %8 = call i32 @MSB_SET(i64 %7)
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  br i1 %10, label %11, label %23

11:                                               ; preds = %6
  %12 = load i64, i64* %4, align 8
  %13 = shl i64 %12, 1
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* %3, align 8
  %16 = icmp ugt i64 %14, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = lshr i64 %18, 1
  store i64 %19, i64* %4, align 8
  br label %23

20:                                               ; preds = %11
  %21 = load i8, i8* %5, align 1
  %22 = add i8 %21, 1
  store i8 %22, i8* %5, align 1
  br label %6

23:                                               ; preds = %17, %6
  br label %24

24:                                               ; preds = %35, %23
  %25 = load i64, i64* %3, align 8
  %26 = load i64, i64* %4, align 8
  %27 = icmp uge i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %3, align 8
  %31 = sub i64 %30, %29
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i64, i64* %4, align 8
  %34 = lshr i64 %33, 1
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load i8, i8* %5, align 1
  %37 = add i8 %36, -1
  store i8 %37, i8* %5, align 1
  %38 = icmp ne i8 %36, 0
  br i1 %38, label %24, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i32 @MSB_SET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
