; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_get_keycode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/gadget/extr_g_keyboard.c_g_keyboard_get_keycode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_keyboard_softc = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_keyboard_softc*, i32)* @g_keyboard_get_keycode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_keyboard_get_keycode(%struct.g_keyboard_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.g_keyboard_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.g_keyboard_softc* %0, %struct.g_keyboard_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %9 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = srem i32 %16, %15
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %14, %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp sge i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %24 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load %struct.g_keyboard_softc*, %struct.g_keyboard_softc** %4, align 8
  %29 = getelementptr inbounds %struct.g_keyboard_softc, %struct.g_keyboard_softc* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %6, align 4
  br label %36

35:                                               ; preds = %21, %18
  store i32 97, i32* %6, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %6, align 4
  %38 = icmp sge i32 %37, 97
  br i1 %38, label %39, label %46

39:                                               ; preds = %36
  %40 = load i32, i32* %6, align 4
  %41 = icmp sle i32 %40, 122
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  %44 = sub nsw i32 %43, 97
  %45 = add nsw i32 %44, 4
  store i32 %45, i32* %3, align 4
  br label %47

46:                                               ; preds = %39, %36
  store i32 4, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %42
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
