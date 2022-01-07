; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_blank_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fb/extr_machfb.c_machfb_blank_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machfb_softc = type { i32 }

@CRTC_GEN_CNTL = common dso_local global i32 0, align 4
@CRTC_EXT_DISP_EN = common dso_local global i32 0, align 4
@CRTC_EN = common dso_local global i32 0, align 4
@CRTC_HSYNC_DIS = common dso_local global i32 0, align 4
@CRTC_VSYNC_DIS = common dso_local global i32 0, align 4
@CRTC_DISPLAY_DIS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @machfb_blank_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @machfb_blank_display(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.machfb_softc*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32*, i32** %3, align 8
  %8 = bitcast i32* %7 to %struct.machfb_softc*
  store %struct.machfb_softc* %8, %struct.machfb_softc** %5, align 8
  %9 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %10 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %11 = call i32 @regr(%struct.machfb_softc* %9, i32 %10)
  %12 = load i32, i32* @CRTC_EXT_DISP_EN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* @CRTC_EN, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @CRTC_HSYNC_DIS, align 4
  %17 = load i32, i32* @CRTC_VSYNC_DIS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @CRTC_DISPLAY_DIS, align 4
  %20 = or i32 %18, %19
  %21 = xor i32 %20, -1
  %22 = and i32 %15, %21
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %45 [
    i32 130, label %24
    i32 131, label %25
    i32 129, label %33
    i32 128, label %39
  ]

24:                                               ; preds = %2
  br label %45

25:                                               ; preds = %2
  %26 = load i32, i32* @CRTC_HSYNC_DIS, align 4
  %27 = load i32, i32* @CRTC_VSYNC_DIS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @CRTC_DISPLAY_DIS, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %6, align 4
  br label %45

33:                                               ; preds = %2
  %34 = load i32, i32* @CRTC_HSYNC_DIS, align 4
  %35 = load i32, i32* @CRTC_DISPLAY_DIS, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %45

39:                                               ; preds = %2
  %40 = load i32, i32* @CRTC_VSYNC_DIS, align 4
  %41 = load i32, i32* @CRTC_DISPLAY_DIS, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %6, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %2, %39, %33, %25, %24
  %46 = load %struct.machfb_softc*, %struct.machfb_softc** %5, align 8
  %47 = load i32, i32* @CRTC_GEN_CNTL, align 4
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @regw(%struct.machfb_softc* %46, i32 %47, i32 %48)
  ret i32 0
}

declare dso_local i32 @regr(%struct.machfb_softc*, i32) #1

declare dso_local i32 @regw(%struct.machfb_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
