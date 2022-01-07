; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_divisor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/uart/extr_uart_dev_sab82532.c_sab82532_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @sab82532_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sab82532_divisor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %76

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 3
  %19 = sdiv i32 %16, %18
  %20 = add nsw i32 %19, 1
  %21 = ashr i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp slt i32 %22, 2
  br i1 %23, label %27, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %8, align 4
  %26 = icmp sge i32 %25, 1048576
  br i1 %26, label %27, label %28

27:                                               ; preds = %24, %15
  store i32 0, i32* %3, align 4
  br label %76

28:                                               ; preds = %24
  store i32 1, i32* %10, align 4
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 15
  br i1 %31, label %32, label %75

32:                                               ; preds = %29
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %10, align 4
  %35 = shl i32 1, %34
  %36 = sdiv i32 %33, %35
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  %41 = icmp sgt i32 %40, 63
  br i1 %41, label %42, label %43

42:                                               ; preds = %39, %32
  br label %72

43:                                               ; preds = %39
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* %10, align 4
  %46 = shl i32 1, %45
  %47 = mul nsw i32 %44, %46
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = shl i32 %49, 4
  %51 = sdiv i32 %48, %50
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %5, align 4
  %54 = sub nsw i32 %52, %53
  %55 = mul nsw i32 %54, 2000
  %56 = load i32, i32* %5, align 4
  %57 = sdiv i32 %55, %56
  %58 = add nsw i32 %57, 1
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, -30
  br i1 %61, label %65, label %62

62:                                               ; preds = %43
  %63 = load i32, i32* %9, align 4
  %64 = icmp sgt i32 %63, 30
  br i1 %64, label %65, label %66

65:                                               ; preds = %62, %43
  br label %72

66:                                               ; preds = %62
  %67 = load i32, i32* %11, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* %10, align 4
  %70 = shl i32 %69, 6
  %71 = or i32 %68, %70
  store i32 %71, i32* %3, align 4
  br label %76

72:                                               ; preds = %65, %42
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %29

75:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %75, %66, %27, %14
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
