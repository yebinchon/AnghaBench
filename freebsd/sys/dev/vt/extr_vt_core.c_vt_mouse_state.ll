; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_mouse_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_mouse_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_device = type { %struct.vt_window* }
%struct.vt_window = type { i32 }

@main_vd = common dso_local global %struct.vt_device* null, align 8
@VWF_MOUSE_HIDE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vt_mouse_state(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca %struct.vt_window*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.vt_device*, %struct.vt_device** @main_vd, align 8
  store %struct.vt_device* %5, %struct.vt_device** %3, align 8
  %6 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %7 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %6, i32 0, i32 0
  %8 = load %struct.vt_window*, %struct.vt_window** %7, align 8
  store %struct.vt_window* %8, %struct.vt_window** %4, align 8
  %9 = load i32, i32* %2, align 4
  switch i32 %9, label %23 [
    i32 129, label %10
    i32 128, label %16
  ]

10:                                               ; preds = %1
  %11 = load i32, i32* @VWF_MOUSE_HIDE, align 4
  %12 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %13 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  br label %23

16:                                               ; preds = %1
  %17 = load i32, i32* @VWF_MOUSE_HIDE, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %20 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  br label %23

23:                                               ; preds = %1, %16, %10
  %24 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %25 = call i32 @vt_mark_mouse_position_as_dirty(%struct.vt_device* %24, i32 0)
  %26 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %27 = call i32 @vt_resume_flush_timer(%struct.vt_window* %26, i32 0)
  ret void
}

declare dso_local i32 @vt_mark_mouse_position_as_dirty(%struct.vt_device*, i32) #1

declare dso_local i32 @vt_resume_flush_timer(%struct.vt_window*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
