; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_save_kbd_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_save_kbd_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i32 }

@KDGKBSTATE = common dso_local global i32 0, align 4
@ENOIOCTL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@LOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_window*, i32*)* @vt_save_kbd_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_save_kbd_state(%struct.vt_window* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vt_window*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vt_window* %0, %struct.vt_window** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* @KDGKBSTATE, align 4
  %10 = ptrtoint i32* %6 to i32
  %11 = call i32 @kbdd_ioctl(i32* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @ENOIOCTL, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENODEV, align 4
  store i32 %16, i32* %7, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %36

22:                                               ; preds = %17
  %23 = load i32, i32* @LOCK_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %26 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @LOCK_MASK, align 4
  %31 = and i32 %29, %30
  %32 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %33 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %22, %20
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @kbdd_ioctl(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
