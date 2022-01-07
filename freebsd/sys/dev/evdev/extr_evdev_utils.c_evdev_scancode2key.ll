; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_utils.c_evdev_scancode2key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/evdev/extr_evdev_utils.c_evdev_scancode2key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@evdev_at_set1_scancodes = common dso_local global i32* null, align 8
@NONE = common dso_local global i32 0, align 4
@KEY_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @evdev_scancode2key(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** @evdev_at_set1_scancodes, align 8
  %8 = load i32, i32* %5, align 4
  %9 = and i32 %8, 127
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %7, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %59 [
    i32 0, label %15
    i32 224, label %22
    i32 225, label %31
    i32 29, label %41
    i32 157, label %41
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %21 [
    i32 224, label %17
    i32 225, label %17
  ]

17:                                               ; preds = %15, %15
  %18 = load i32, i32* %5, align 4
  %19 = load i32*, i32** %4, align 8
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* @NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %61

21:                                               ; preds = %15
  br label %59

22:                                               ; preds = %2
  %23 = load i32*, i32** %4, align 8
  store i32 0, i32* %23, align 4
  %24 = load i32*, i32** @evdev_at_set1_scancodes, align 8
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 127
  %27 = add nsw i32 128, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %6, align 4
  br label %59

31:                                               ; preds = %2
  %32 = load i32*, i32** %4, align 8
  store i32 0, i32* %32, align 4
  %33 = load i32, i32* %5, align 4
  %34 = and i32 %33, 127
  %35 = icmp eq i32 %34, 29
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load i32*, i32** %4, align 8
  store i32 %37, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %31
  %40 = load i32, i32* @NONE, align 4
  store i32 %40, i32* %3, align 4
  br label %61

41:                                               ; preds = %2, %2
  %42 = load i32*, i32** %4, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %5, align 4
  %45 = xor i32 %43, %44
  %46 = and i32 %45, 128
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = load i32, i32* @NONE, align 4
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %41
  %51 = load i32*, i32** %4, align 8
  store i32 0, i32* %51, align 4
  %52 = load i32, i32* %5, align 4
  %53 = and i32 %52, 127
  %54 = icmp ne i32 %53, 69
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* @NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %61

57:                                               ; preds = %50
  %58 = load i32, i32* @KEY_PAUSE, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %2, %57, %22, %21
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %55, %48, %39, %17
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
