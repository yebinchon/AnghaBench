; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_late_window_switch.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_late_window_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { %struct.vt_window* }

@VT_PROCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vt_window*)* @vt_late_window_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt_late_window_switch(%struct.vt_window* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vt_window*, align 8
  %4 = alloca %struct.vt_window*, align 8
  %5 = alloca i32, align 4
  store %struct.vt_window* %0, %struct.vt_window** %3, align 8
  %6 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %7 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %6, i32 0, i32 2
  %8 = call i32 @callout_stop(i32* %7)
  %9 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %10 = call i32 @vt_window_switch(%struct.vt_window* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %15 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.vt_window*, %struct.vt_window** %17, align 8
  store %struct.vt_window* %18, %struct.vt_window** %4, align 8
  %19 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %20 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @VT_PROCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %13
  %26 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %27 = call i32 @vt_window_postswitch(%struct.vt_window* %26)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %42

30:                                               ; preds = %1
  %31 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %32 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @VT_PROCESS, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.vt_window*, %struct.vt_window** %3, align 8
  %39 = call i32 @vt_window_postswitch(%struct.vt_window* %38)
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %28
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @vt_window_switch(%struct.vt_window*) #1

declare dso_local i32 @vt_window_postswitch(%struct.vt_window*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
