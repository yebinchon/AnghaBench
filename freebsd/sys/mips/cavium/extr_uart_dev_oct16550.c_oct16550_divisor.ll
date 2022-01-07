; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_divisor.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/cavium/extr_uart_dev_oct16550.c_oct16550_divisor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @oct16550_divisor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oct16550_divisor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = shl i32 %14, 3
  %16 = sdiv i32 %13, %15
  %17 = add nsw i32 %16, 1
  %18 = ashr i32 %17, 1
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* %7, align 4
  %23 = icmp sge i32 %22, 65536
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %12
  store i32 0, i32* %3, align 4
  br label %46

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 4
  %29 = sdiv i32 %26, %28
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %5, align 4
  %32 = sub nsw i32 %30, %31
  %33 = mul nsw i32 %32, 2000
  %34 = load i32, i32* %5, align 4
  %35 = sdiv i32 %33, %34
  %36 = add nsw i32 %35, 1
  %37 = ashr i32 %36, 1
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp slt i32 %38, -30
  br i1 %39, label %43, label %40

40:                                               ; preds = %25
  %41 = load i32, i32* %8, align 4
  %42 = icmp sgt i32 %41, 30
  br i1 %42, label %43, label %44

43:                                               ; preds = %40, %25
  store i32 0, i32* %3, align 4
  br label %46

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %44, %43, %24, %11
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
