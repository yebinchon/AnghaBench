; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/libc/extr__divulong.c__divulong.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/libc/extr__divulong.c__divulong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @_divulong(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i8 32, i8* %6, align 1
  br label %8

8:                                                ; preds = %31, %2
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @MSB_SET(i64 %9)
  store i64 %10, i64* %7, align 8
  %11 = load i64, i64* %3, align 8
  %12 = shl i64 %11, 1
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %5, align 8
  %14 = shl i64 %13, 1
  store i64 %14, i64* %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %8
  %18 = load i64, i64* %5, align 8
  %19 = or i64 %18, 1
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %17, %8
  %21 = load i64, i64* %5, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp uge i64 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* %5, align 8
  %27 = sub i64 %26, %25
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %3, align 8
  %29 = or i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %30

30:                                               ; preds = %24, %20
  br label %31

31:                                               ; preds = %30
  %32 = load i8, i8* %6, align 1
  %33 = add i8 %32, -1
  store i8 %33, i8* %6, align 1
  %34 = icmp ne i8 %33, 0
  br i1 %34, label %8, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @MSB_SET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
