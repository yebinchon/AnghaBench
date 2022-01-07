; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_get_pci_bar_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_cl_init.c_tw_cl_get_pci_bar_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TW_OSL_ESUCCESS = common dso_local global i32 0, align 4
@TW_OSL_ENOTTY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_cl_get_pci_bar_info(i32 %0, i32 %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %12 = load i32, i32* @TW_OSL_ESUCCESS, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %6, align 4
  switch i32 %13, label %44 [
    i32 131, label %14
    i32 128, label %29
    i32 130, label %29
    i32 129, label %29
  ]

14:                                               ; preds = %5
  %15 = load i32, i32* %7, align 4
  switch i32 %15, label %28 [
    i32 134, label %16
    i32 133, label %20
    i32 132, label %24
  ]

16:                                               ; preds = %14
  %17 = load i32*, i32** %8, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32*, i32** %9, align 8
  store i32 0, i32* %18, align 4
  %19 = load i32*, i32** %10, align 8
  store i32 4, i32* %19, align 4
  br label %28

20:                                               ; preds = %14
  %21 = load i32*, i32** %8, align 8
  store i32 1, i32* %21, align 4
  %22 = load i32*, i32** %9, align 8
  store i32 4, i32* %22, align 4
  %23 = load i32*, i32** %10, align 8
  store i32 8, i32* %23, align 4
  br label %28

24:                                               ; preds = %14
  %25 = load i32*, i32** %8, align 8
  store i32 2, i32* %25, align 4
  %26 = load i32*, i32** %9, align 8
  store i32 12, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  store i32 8, i32* %27, align 4
  br label %28

28:                                               ; preds = %14, %24, %20, %16
  br label %46

29:                                               ; preds = %5, %5, %5
  %30 = load i32, i32* %7, align 4
  switch i32 %30, label %43 [
    i32 134, label %31
    i32 133, label %35
    i32 132, label %39
  ]

31:                                               ; preds = %29
  %32 = load i32*, i32** %8, align 8
  store i32 2, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  store i32 16, i32* %33, align 4
  %34 = load i32*, i32** %10, align 8
  store i32 4, i32* %34, align 4
  br label %43

35:                                               ; preds = %29
  %36 = load i32*, i32** %8, align 8
  store i32 1, i32* %36, align 4
  %37 = load i32*, i32** %9, align 8
  store i32 8, i32* %37, align 4
  %38 = load i32*, i32** %10, align 8
  store i32 8, i32* %38, align 4
  br label %43

39:                                               ; preds = %29
  %40 = load i32*, i32** %8, align 8
  store i32 0, i32* %40, align 4
  %41 = load i32*, i32** %9, align 8
  store i32 0, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 8, i32* %42, align 4
  br label %43

43:                                               ; preds = %29, %39, %35, %31
  br label %46

44:                                               ; preds = %5
  %45 = load i32, i32* @TW_OSL_ENOTTY, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %43, %28
  %47 = load i32, i32* %11, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
