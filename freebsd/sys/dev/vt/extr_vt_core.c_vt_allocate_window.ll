; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_allocate_window.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vt/extr_vt_core.c_vt_allocate_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vt_window = type { i32, i32, %struct.TYPE_2__, %struct.terminal*, i32, i32, %struct.vt_device* }
%struct.TYPE_2__ = type { %struct.terminal* }
%struct.terminal = type { i32 }
%struct.vt_device = type { i32, %struct.vt_window** }
%struct.winsize = type { i32 }

@M_VT = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@K_XLATE = common dso_local global i32 0, align 4
@VDF_TEXTMODE = common dso_local global i32 0, align 4
@vt_font_default = common dso_local global i32 0, align 4
@vt_termclass = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vt_window* (%struct.vt_device*, i32)* @vt_allocate_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vt_window* @vt_allocate_window(%struct.vt_device* %0, i32 %1) #0 {
  %3 = alloca %struct.vt_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vt_window*, align 8
  %6 = alloca %struct.terminal*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.winsize, align 4
  store %struct.vt_device* %0, %struct.vt_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @M_VT, align 4
  %10 = load i32, i32* @M_WAITOK, align 4
  %11 = load i32, i32* @M_ZERO, align 4
  %12 = or i32 %10, %11
  %13 = call %struct.vt_window* @malloc(i32 40, i32 %9, i32 %12)
  store %struct.vt_window* %13, %struct.vt_window** %5, align 8
  %14 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %15 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %16 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %15, i32 0, i32 6
  store %struct.vt_device* %14, %struct.vt_device** %16, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %19 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @K_XLATE, align 4
  %21 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %22 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %24 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @VDF_TEXTMODE, align 4
  %27 = and i32 %25, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %2
  %30 = call i32 @vtfont_ref(i32* @vt_font_default)
  %31 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %32 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %31, i32 0, i32 4
  store i32 %30, i32* %32, align 8
  %33 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %34 = call i32 @vt_compute_drawable_area(%struct.vt_window* %33)
  br label %35

35:                                               ; preds = %29, %2
  %36 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %37 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %38 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @vt_termsize(%struct.vt_device* %36, i32 %39, i32* %7)
  %41 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %42 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %43 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @vt_winsize(%struct.vt_device* %41, i32 %44, %struct.winsize* %8)
  %46 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %47 = call %struct.terminal* @terminal_alloc(i32* @vt_termclass, %struct.vt_window* %46)
  %48 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %49 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %48, i32 0, i32 3
  store %struct.terminal* %47, %struct.terminal** %49, align 8
  store %struct.terminal* %47, %struct.terminal** %6, align 8
  %50 = load %struct.terminal*, %struct.terminal** %6, align 8
  %51 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %52 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store %struct.terminal* %50, %struct.terminal** %53, align 8
  %54 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %55 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %54, i32 0, i32 2
  %56 = call i32 @vtbuf_init(%struct.TYPE_2__* %55, i32* %7)
  %57 = load %struct.terminal*, %struct.terminal** %6, align 8
  %58 = call i32 @terminal_set_winsize(%struct.terminal* %57, %struct.winsize* %8)
  %59 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %60 = load %struct.vt_device*, %struct.vt_device** %3, align 8
  %61 = getelementptr inbounds %struct.vt_device, %struct.vt_device* %60, i32 0, i32 1
  %62 = load %struct.vt_window**, %struct.vt_window*** %61, align 8
  %63 = load i32, i32* %4, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.vt_window*, %struct.vt_window** %62, i64 %64
  store %struct.vt_window* %59, %struct.vt_window** %65, align 8
  %66 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  %67 = getelementptr inbounds %struct.vt_window, %struct.vt_window* %66, i32 0, i32 1
  %68 = call i32 @callout_init(i32* %67, i32 0)
  %69 = load %struct.vt_window*, %struct.vt_window** %5, align 8
  ret %struct.vt_window* %69
}

declare dso_local %struct.vt_window* @malloc(i32, i32, i32) #1

declare dso_local i32 @vtfont_ref(i32*) #1

declare dso_local i32 @vt_compute_drawable_area(%struct.vt_window*) #1

declare dso_local i32 @vt_termsize(%struct.vt_device*, i32, i32*) #1

declare dso_local i32 @vt_winsize(%struct.vt_device*, i32, %struct.winsize*) #1

declare dso_local %struct.terminal* @terminal_alloc(i32*, %struct.vt_window*) #1

declare dso_local i32 @vtbuf_init(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @terminal_set_winsize(%struct.terminal*, %struct.winsize*) #1

declare dso_local i32 @callout_init(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
