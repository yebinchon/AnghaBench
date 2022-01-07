; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_ampdu_check_bitmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_ampdu_check_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32, i32)* @iwn_ampdu_check_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwn_ampdu_check_bitmap(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp sge i32 %13, 64
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = sub nsw i32 256, %16
  store i32 %17, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %32

18:                                               ; preds = %3
  %19 = load i32, i32* %8, align 4
  %20 = icmp sle i32 %19, -64
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* %8, align 4
  %23 = add nsw i32 256, %22
  store i32 %23, i32* %8, align 4
  br label %31

24:                                               ; preds = %18
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %24
  %28 = load i32, i32* %8, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %24
  br label %31

31:                                               ; preds = %30, %21
  br label %32

32:                                               ; preds = %31, %15
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  %36 = icmp sge i32 %35, 64
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %48

38:                                               ; preds = %32
  %39 = load i64, i64* %5, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = zext i32 %42 to i64
  %44 = shl i64 1, %43
  %45 = and i64 %39, %44
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i32
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %37
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
