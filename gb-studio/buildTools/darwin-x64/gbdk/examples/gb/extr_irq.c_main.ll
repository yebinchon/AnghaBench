; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_irq.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/darwin-x64/gbdk/examples/gb/extr_irq.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tim_cnt = common dso_local global i64 0, align 8
@vbl_cnt = common dso_local global i64 0, align 8
@vbl = common dso_local global i32 0, align 4
@tim = common dso_local global i32 0, align 4
@TMA_REG = common dso_local global i32 0, align 4
@TAC_REG = common dso_local global i32 0, align 4
@VBL_IFLAG = common dso_local global i32 0, align 4
@TIM_IFLAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = call i32 (...) @disable_interrupts()
  store i64 0, i64* @tim_cnt, align 8
  store i64 0, i64* @vbl_cnt, align 8
  %2 = load i32, i32* @vbl, align 4
  %3 = call i32 @add_VBL(i32 %2)
  %4 = load i32, i32* @tim, align 4
  %5 = call i32 @add_TIM(i32 %4)
  %6 = call i32 (...) @enable_interrupts()
  store i32 0, i32* @TMA_REG, align 4
  store i32 4, i32* @TAC_REG, align 4
  %7 = load i32, i32* @VBL_IFLAG, align 4
  %8 = load i32, i32* @TIM_IFLAG, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @set_interrupts(i32 %9)
  br label %11

11:                                               ; preds = %0, %11
  %12 = call i32 (...) @print_counter()
  %13 = call i32 @delay(i64 1000)
  br label %11
}

declare dso_local i32 @disable_interrupts(...) #1

declare dso_local i32 @add_VBL(i32) #1

declare dso_local i32 @add_TIM(i32) #1

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @set_interrupts(i32) #1

declare dso_local i32 @print_counter(...) #1

declare dso_local i32 @delay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
