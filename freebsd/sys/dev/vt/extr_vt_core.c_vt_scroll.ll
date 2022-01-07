; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_scroll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_scroll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@VWF_SCROLL = common dso_local global i32 0, align 4
@VDF_INVALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vt_window*, i32, i32)* @vt_scroll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_scroll(%struct.vt_window* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vt_window*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vt_window* %0, %struct.vt_window** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %10 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @VWF_SCROLL, align 4
  %13 = and i32 %11, %12
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %18 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %21 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @vt_termsize(%struct.TYPE_2__* %19, i32 %22, i32* %8)
  %24 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %25 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %24, i32 0, i32 2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @vthistory_seek(i32* %25, i32 %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %16
  %32 = load i32, i32* @VDF_INVALID, align 4
  %33 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %34 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %31, %16
  %40 = load %struct.vt_window*, %struct.vt_window** %4, align 8
  %41 = call i32 @vt_resume_flush_timer(%struct.vt_window* %40, i32 0)
  br label %42

42:                                               ; preds = %39, %15
  ret void
}

declare dso_local i32 @vt_termsize(%struct.TYPE_2__*, i32, i32*) #1

declare dso_local i32 @vthistory_seek(i32*, i32, i32) #1

declare dso_local i32 @vt_resume_flush_timer(%struct.vt_window*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
