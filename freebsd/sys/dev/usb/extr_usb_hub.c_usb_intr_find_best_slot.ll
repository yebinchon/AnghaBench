; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_intr_find_best_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_hub.c_usb_intr_find_best_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i64, i64)* @usb_intr_find_best_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @usb_intr_find_best_slot(i64* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 -1, i64* %9, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  store i64 %14, i64* %11, align 8
  br label %15

15:                                               ; preds = %66, %4
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* %7, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %69

19:                                               ; preds = %15
  store i64 0, i64* %10, align 8
  %20 = load i64, i64* %11, align 8
  store i64 %20, i64* %13, align 8
  br label %21

21:                                               ; preds = %43, %19
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %7, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %46

25:                                               ; preds = %21
  %26 = load i64, i64* %8, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i64, i64* %11, align 8
  %29 = sub nsw i64 %27, %28
  %30 = trunc i64 %29 to i32
  %31 = shl i32 1, %30
  %32 = zext i32 %31 to i64
  %33 = and i64 %26, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %25
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %13, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %10, align 8
  %41 = add nsw i64 %40, %39
  store i64 %41, i64* %10, align 8
  br label %42

42:                                               ; preds = %35, %25
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %13, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %13, align 8
  br label %21

46:                                               ; preds = %21
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp sge i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i64, i64* %10, align 8
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %11, align 8
  store i64 %52, i64* %12, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i64, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = sub nsw i64 %55, 1
  %57 = load i64, i64* %11, align 8
  %58 = sub nsw i64 %56, %57
  %59 = trunc i64 %58 to i32
  %60 = shl i32 1, %59
  %61 = zext i32 %60 to i64
  %62 = and i64 %54, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %53
  br label %69

65:                                               ; preds = %53
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %11, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %11, align 8
  br label %15

69:                                               ; preds = %64, %15
  %70 = load i64, i64* %12, align 8
  ret i64 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
