; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_cnungrab.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vtterm_cnungrab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.terminal = type { %struct.vt_window* }
%struct.vt_window = type { i64, i32, i32, %struct.vt_device* }
%struct.vt_device = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.terminal*)* @vtterm_cnungrab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vtterm_cnungrab(%struct.terminal* %0) #0 {
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
  %12 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %13 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32* @kbd_get_keyboard(i32 %14)
  store i32* %15, i32** %5, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %40

19:                                               ; preds = %1
  %20 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %21 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %40

26:                                               ; preds = %19
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @FALSE, align 4
  %29 = call i32 @kbdd_poll(i32* %27, i32 %28)
  %30 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %31 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %34 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = call i32 @vt_update_kbd_mode(%struct.vt_window* %35, i32* %36)
  %38 = load i32*, i32** %5, align 8
  %39 = call i32 @kbdd_disable(i32* %38)
  br label %40

40:                                               ; preds = %26, %25, %18
  ret void
}

declare dso_local i32* @kbd_get_keyboard(i32) #1

declare dso_local i32 @kbdd_poll(i32*, i32) #1

declare dso_local i32 @vt_update_kbd_mode(%struct.vt_window*, i32*) #1

declare dso_local i32 @kbdd_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
