; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/colorbar/extr_colorbar.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/colorbar/extr_colorbar.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@bar_p = common dso_local global i32* null, align 8
@bar_c = common dso_local global i32 0, align 4
@VBK_REG = common dso_local global i32 0, align 4
@bar_mWidth = common dso_local global i32 0, align 4
@bar_mHeight = common dso_local global i32 0, align 4
@bar_a = common dso_local global i32 0, align 4
@bar_m = common dso_local global i32 0, align 4
@SHOW_BKG = common dso_local global i32 0, align 4
@DISPLAY_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %2 = load i32*, i32** @bar_p, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = call i32 @set_bkg_palette(i32 7, i32 1, i32* %3)
  %5 = load i32*, i32** @bar_p, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 4
  %7 = call i32 @set_bkg_palette(i32 6, i32 1, i32* %6)
  %8 = load i32*, i32** @bar_p, align 8
  %9 = getelementptr inbounds i32, i32* %8, i64 8
  %10 = call i32 @set_bkg_palette(i32 5, i32 1, i32* %9)
  %11 = load i32*, i32** @bar_p, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 12
  %13 = call i32 @set_bkg_palette(i32 4, i32 1, i32* %12)
  %14 = load i32*, i32** @bar_p, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 16
  %16 = call i32 @set_bkg_palette(i32 3, i32 1, i32* %15)
  %17 = load i32*, i32** @bar_p, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 20
  %19 = call i32 @set_bkg_palette(i32 2, i32 1, i32* %18)
  %20 = load i32*, i32** @bar_p, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 24
  %22 = call i32 @set_bkg_palette(i32 1, i32 1, i32* %21)
  %23 = load i32*, i32** @bar_p, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 28
  %25 = call i32 @set_bkg_palette(i32 0, i32 1, i32* %24)
  %26 = load i32, i32* @bar_c, align 4
  %27 = call i32 @set_bkg_data(i32 0, i32 32, i32 %26)
  store i32 1, i32* @VBK_REG, align 4
  %28 = load i32, i32* @bar_mWidth, align 4
  %29 = load i32, i32* @bar_mHeight, align 4
  %30 = load i32, i32* @bar_a, align 4
  %31 = call i32 @set_bkg_tiles(i32 0, i32 0, i32 %28, i32 %29, i32 %30)
  store i32 0, i32* @VBK_REG, align 4
  %32 = load i32, i32* @bar_mWidth, align 4
  %33 = load i32, i32* @bar_mHeight, align 4
  %34 = load i32, i32* @bar_m, align 4
  %35 = call i32 @set_bkg_tiles(i32 0, i32 0, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @SHOW_BKG, align 4
  %37 = call i32 (...) @enable_interrupts()
  %38 = load i32, i32* @DISPLAY_ON, align 4
  ret i32 0
}

declare dso_local i32 @set_bkg_palette(i32, i32, i32*) #1

declare dso_local i32 @set_bkg_data(i32, i32, i32) #1

declare dso_local i32 @set_bkg_tiles(i32, i32, i32, i32, i32) #1

declare dso_local i32 @enable_interrupts(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
