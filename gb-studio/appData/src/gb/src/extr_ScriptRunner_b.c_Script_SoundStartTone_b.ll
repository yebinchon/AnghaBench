; ModuleID = '/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_SoundStartTone_b.c'
source_filename = "/home/carl/AnghaBench/gb-studio/appData/src/gb/src/extr_ScriptRunner_b.c_Script_SoundStartTone_b.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@script_cmd_args = common dso_local global i32* null, align 8
@NR52_REG = common dso_local global i32 0, align 4
@NR10_REG = common dso_local global i32 0, align 4
@NR11_REG = common dso_local global i32 0, align 4
@NR12_REG = common dso_local global i32 0, align 4
@NR13_REG = common dso_local global i32 0, align 4
@NR14_REG = common dso_local global i32 0, align 4
@NR50_REG = common dso_local global i32 0, align 4
@NR51_REG = common dso_local global i32 0, align 4
@script_cmd_args_len = common dso_local global i64 0, align 8
@script_ptr = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@script_continue = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Script_SoundStartTone_b() #0 {
  %1 = alloca i32, align 4
  %2 = load i32*, i32** @script_cmd_args, align 8
  %3 = getelementptr inbounds i32, i32* %2, i64 0
  %4 = load i32, i32* %3, align 4
  %5 = mul nsw i32 %4, 256
  %6 = load i32*, i32** @script_cmd_args, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 1
  %8 = load i32, i32* %7, align 4
  %9 = add nsw i32 %5, %8
  store i32 %9, i32* %1, align 4
  store i32 128, i32* @NR52_REG, align 4
  store i32 0, i32* @NR10_REG, align 4
  store i32 1, i32* @NR11_REG, align 4
  store i32 240, i32* @NR12_REG, align 4
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* @NR13_REG, align 4
  %12 = load i32, i32* %1, align 4
  %13 = and i32 %12, 1792
  %14 = ashr i32 %13, 8
  %15 = or i32 128, %14
  store i32 %15, i32* @NR14_REG, align 4
  store i32 119, i32* @NR50_REG, align 4
  %16 = load i32, i32* @NR51_REG, align 4
  %17 = or i32 %16, 17
  store i32 %17, i32* @NR51_REG, align 4
  %18 = load i64, i64* @script_cmd_args_len, align 8
  %19 = add nsw i64 1, %18
  %20 = load i32, i32* @script_ptr, align 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %21, %19
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* @script_ptr, align 4
  %24 = load i32, i32* @TRUE, align 4
  store i32 %24, i32* @script_continue, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
