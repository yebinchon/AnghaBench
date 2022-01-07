; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_MT2032_OptimizeVCO.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bktr/extr_bktr_tuner.c_MT2032_OptimizeVCO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @MT2032_OptimizeVCO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MT2032_OptimizeVCO(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call i32 @MT2032_GetRegister(i32 15)
  %11 = and i32 %10, 7
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  store i32 %15, i32* %4, align 4
  br label %53

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = icmp eq i32 %17, 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %16
  %22 = load i32, i32* %8, align 4
  %23 = icmp eq i32 %22, 2
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %24
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %4, align 4
  br label %53

29:                                               ; preds = %24
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %29
  br label %42

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %4, align 4
  br label %53

41:                                               ; preds = %36
  br label %42

42:                                               ; preds = %41, %32
  %43 = call i32 @MT2032_GetRegister(i32 1)
  %44 = and i32 %43, 7
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 %46, 4
  %48 = or i32 %45, %47
  %49 = call i32 @MT2032_SetRegister(i32 1, i32 %48)
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @MT2032_CheckLOLock(i32 %50)
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %42, %39, %27, %19, %14
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @MT2032_GetRegister(i32) #1

declare dso_local i32 @MT2032_SetRegister(i32, i32) #1

declare dso_local i32 @MT2032_CheckLOLock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
