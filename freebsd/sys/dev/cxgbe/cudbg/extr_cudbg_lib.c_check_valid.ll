; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_check_valid.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_check_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @check_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_valid(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %12 [
    i32 130, label %9
    i32 128, label %10
    i32 129, label %11
  ]

9:                                                ; preds = %2
  store i32 176, i32* %7, align 4
  br label %12

10:                                               ; preds = %2
  store i32 141, i32* %7, align 4
  br label %12

11:                                               ; preds = %2
  store i32 89, i32* %7, align 4
  br label %12

12:                                               ; preds = %2, %11, %10, %9
  %13 = load i32, i32* %7, align 4
  %14 = sdiv i32 %13, 32
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = srem i32 %15, 32
  store i32 %16, i32* %6, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %6, align 4
  %23 = shl i32 1, %22
  %24 = and i32 %21, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
