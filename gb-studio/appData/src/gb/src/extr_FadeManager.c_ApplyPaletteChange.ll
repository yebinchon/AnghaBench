; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_FadeManager.c_ApplyPaletteChange.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_FadeManager.c_ApplyPaletteChange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@obj_fade_vals = common dso_local global i32* null, align 8
@OBP0_REG = common dso_local global i32 0, align 4
@bgp_fade_vals = common dso_local global i32* null, align 8
@BGP_REG = common dso_local global i32 0, align 4
@CGB_TYPE = common dso_local global i64 0, align 8
@_cpu = common dso_local global i64 0, align 8
@custom_bg_pal = common dso_local global i32 0, align 4
@custom_bg_pal_fade_step1 = common dso_local global i32 0, align 4
@custom_bg_pal_fade_step2 = common dso_local global i32 0, align 4
@custom_bg_pal_fade_step3 = common dso_local global i32 0, align 4
@custom_bg_pal_fade_step4 = common dso_local global i32 0, align 4
@custom_spr1_pal = common dso_local global i32 0, align 4
@custom_spr1_pal_fade_step1 = common dso_local global i32 0, align 4
@custom_spr1_pal_fade_step2 = common dso_local global i32 0, align 4
@custom_spr1_pal_fade_step3 = common dso_local global i32 0, align 4
@custom_spr1_pal_fade_step4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ApplyPaletteChange(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32*, i32** @obj_fade_vals, align 8
  %4 = load i32, i32* %2, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, i32* %3, i64 %5
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* @OBP0_REG, align 4
  %8 = load i32*, i32** @bgp_fade_vals, align 8
  %9 = load i32, i32* %2, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds i32, i32* %8, i64 %10
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* @BGP_REG, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
