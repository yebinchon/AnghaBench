; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_init_bkg.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/linux-x64/gbdk/examples/gb/gb-dtmf/extr_gb-dtmf.c_init_bkg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@frame_lcd = common dso_local global i32 0, align 4
@break_btn = common dso_local global i32 0, align 4
@press_btn = common dso_local global i32 0, align 4
@dtmf_tile = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_bkg() #0 {
  %1 = load i32, i32* @frame_lcd, align 4
  %2 = call i32 @set_bkg_data(i32 0, i32 9, i32 %1)
  %3 = load i32, i32* @break_btn, align 4
  %4 = call i32 @set_bkg_data(i32 9, i32 9, i32 %3)
  %5 = load i32, i32* @press_btn, align 4
  %6 = call i32 @set_bkg_data(i32 18, i32 9, i32 %5)
  %7 = load i32, i32* @dtmf_tile, align 4
  %8 = call i32 @set_bkg_tiles(i32 0, i32 0, i32 20, i32 18, i32 %7)
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
