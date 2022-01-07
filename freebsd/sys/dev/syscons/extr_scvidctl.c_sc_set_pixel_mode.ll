; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvidctl.c_sc_set_pixel_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_scvidctl.c_sc_set_pixel_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_20__*, i32*, i32*, i32*, %struct.TYPE_19__*, i32 }
%struct.TYPE_20__ = type { i32, %struct.TYPE_22__*, %struct.TYPE_23__*, i32*, i32*, i32* }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_19__ = type { i32 (%struct.TYPE_22__*, i32*)* }
%struct.tty = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@FONT_14 = common dso_local global i32 0, align 4
@FONT_16 = common dso_local global i32 0, align 4
@FONT_8 = common dso_local global i32 0, align 4
@GRAPHICS_MODE = common dso_local global i32 0, align 4
@MOUSE_HIDDEN = common dso_local global i32 0, align 4
@MOUSE_VISIBLE = common dso_local global i32 0, align 4
@PIXEL_MODE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@UNKNOWN_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sc_set_pixel_mode(%struct.TYPE_22__* %0, %struct.tty* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.tty*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %7, align 8
  store %struct.tty* %1, %struct.tty** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load i32, i32* @ENODEV, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
