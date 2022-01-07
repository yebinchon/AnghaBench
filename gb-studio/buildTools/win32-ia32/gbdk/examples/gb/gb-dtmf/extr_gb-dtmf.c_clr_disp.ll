; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_clr_disp.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-ia32/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_clr_disp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OFFSET = common dso_local global i32 0, align 4
@dtmf_lcd = common dso_local global i32 0, align 4
@LCD_X = common dso_local global i32 0, align 4
@LCD_Y = common dso_local global i32 0, align 4
@LCD_WIDTH = common dso_local global i32 0, align 4
@LCD_HIGHT = common dso_local global i32 0, align 4
@init_disp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clr_disp() #0 {
  %1 = load i32, i32* @OFFSET, align 4
  %2 = load i32, i32* @dtmf_lcd, align 4
  %3 = call i32 @set_bkg_data(i32 %1, i32 50, i32 %2)
  %4 = load i32, i32* @LCD_X, align 4
  %5 = load i32, i32* @LCD_Y, align 4
  %6 = load i32, i32* @LCD_WIDTH, align 4
  %7 = load i32, i32* @LCD_HIGHT, align 4
  %8 = load i32, i32* @init_disp, align 4
  %9 = call i32 @set_bkg_tiles(i32 %4, i32 %5, i32 %6, i32 %7, i32 %8)
  ret void
}

declare dso_local i32 @set_bkg_data(i32, i32, i32) #1

declare dso_local i32 @set_bkg_tiles(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
