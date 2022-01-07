; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_filter_pci_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlxgb/extr_qla_misc.c_qla_filter_pci_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Q8_INVALID_ADDRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @qla_filter_pci_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla_filter_pci_addr(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @Q8_INVALID_ADDRESS, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %52, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 1122368
  br i1 %11, label %52, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = icmp eq i32 %13, 1122376
  br i1 %14, label %52, label %15

15:                                               ; preds = %12
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, -61441
  %18 = icmp eq i32 %17, 1114308
  br i1 %18, label %52, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = and i32 %20, -61441
  %22 = icmp eq i32 %21, 1114312
  br i1 %22, label %52, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, 267386880
  %26 = icmp eq i32 %25, 2097152
  br i1 %26, label %52, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %5, align 4
  %29 = icmp eq i32 %28, 35660284
  br i1 %29, label %52, label %30

30:                                               ; preds = %27
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 53477404
  br i1 %32, label %52, label %33

33:                                               ; preds = %30
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 53477412
  br i1 %35, label %52, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %5, align 4
  %38 = icmp eq i32 %37, 53477544
  br i1 %38, label %52, label %39

39:                                               ; preds = %36
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 53477576
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* %5, align 4
  %44 = icmp eq i32 %43, 53477564
  br i1 %44, label %52, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %5, align 4
  %47 = and i32 %46, 267386880
  %48 = icmp eq i32 %47, 60817408
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp eq i32 %50, 61866012
  br i1 %51, label %52, label %54

52:                                               ; preds = %49, %45, %42, %39, %36, %33, %30, %27, %23, %19, %15, %12, %9, %2
  %53 = load i32, i32* @Q8_INVALID_ADDRESS, align 4
  store i32 %53, i32* %3, align 4
  br label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %5, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %52
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
