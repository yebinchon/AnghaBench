; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_cngrab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_cngrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.vt_window* }
%struct.vt_window = type { i32, i32, i32, %struct.vt_device* }
%struct.vt_device = type { i32 }

@cold = common dso_local global i32 0, align 4
@K_XLATE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.terminal*)* @vtterm_cngrab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtterm_cngrab(%struct.terminal* %0) #0 {
  %2 = alloca %struct.terminal*, align 8
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.vt_window*, align 8
  %5 = alloca i32*, align 8
  store %struct.terminal* %0, %struct.terminal** %2, align 8
  %6 = load %struct.terminal*, %struct.terminal** %2, align 8
  %7 = getelementptr inbounds %struct.terminal, %struct.terminal* %6, i32 0, i32 0
  %8 = load %struct.vt_window*, %struct.vt_window** %7, align 8
  store %struct.vt_window* %8, %struct.vt_window** %4, align 8
  %9 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %10 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %9, i32 0, i32 3
  %11 = load %struct.vt_device*, %struct.vt_device** %10, align 8
  store %struct.vt_device* %11, %struct.vt_device** %3, align 8
  %12 = load i32, i32* @cold, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %16 = call i32 @vt_window_switch(%struct.vt_window* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %19 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @kbd_get_keyboard(i32 %20)
  store i32* %21, i32** %5, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %49

25:                                               ; preds = %17
  %26 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %27 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = icmp sgt i32 %28, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %49

32:                                               ; preds = %25
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @kbdd_enable(i32* %33)
  %35 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %36 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %39 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @K_XLATE, align 4
  %41 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %42 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @vt_update_kbd_mode(%struct.vt_window* %43, i32* %44)
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* @TRUE, align 4
  %48 = call i32 @kbdd_poll(i32* %46, i32 %47)
  br label %49

49:                                               ; preds = %32, %31, %24
  ret void
}

declare dso_local i32 @vt_window_switch(%struct.vt_window*) #1

declare dso_local i32* @kbd_get_keyboard(i32) #1

declare dso_local i32 @kbdd_enable(i32*) #1

declare dso_local i32 @vt_update_kbd_mode(%struct.vt_window*, i32*) #1

declare dso_local i32 @kbdd_poll(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
