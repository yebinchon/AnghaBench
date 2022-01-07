; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_FadeManager.c_FadeIn.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_FadeManager.c_FadeIn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fade_frame = common dso_local global i64 0, align 8
@FADE_IN = common dso_local global i32 0, align 4
@fade_direction = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@fade_running = common dso_local global i32 0, align 4
@fade_timer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @FadeIn() #0 {
  store i64 0, i64* @fade_frame, align 8
  %1 = load i32, i32* @FADE_IN, align 4
  store i32 %1, i32* @fade_direction, align 4
  %2 = load i32, i32* @TRUE, align 4
  store i32 %2, i32* @fade_running, align 4
  store i64 0, i64* @fade_timer, align 8
  %3 = load i64, i64* @fade_timer, align 8
  %4 = call i32 @ApplyPaletteChange(i64 %3)
  ret void
}

declare dso_local i32 @ApplyPaletteChange(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
