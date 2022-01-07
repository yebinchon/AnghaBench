; ModuleID = '/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_main.c'
source_filename = "/home/carl/AnghaBench/gb-studio/buildTools/win32-x64/gbdk/examples/gb/dscan/extr_dscan.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DISPLAY_OFF = common dso_local global i32 0, align 4
@J_A = common dso_local global i32 0, align 4
@k_right = common dso_local global i32 0, align 4
@J_B = common dso_local global i32 0, align 4
@k_left = common dso_local global i32 0, align 4
@DISPLAY_ON = common dso_local global i32 0, align 4
@pw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @main() #0 {
  %1 = call i32 (...) @disable_interrupts()
  %2 = load i32, i32* @DISPLAY_OFF, align 4
  %3 = call i32 (...) @init_screen()
  %4 = call i32 (...) @init_score()
  %5 = call i32 (...) @init_player()
  %6 = call i32 (...) @init_tama()
  %7 = call i32 (...) @init_enemy()
  %8 = call i32 (...) @init_kirai()
  %9 = call i32 (...) @show_gover()
  %10 = load i32, i32* @J_A, align 4
  store i32 %10, i32* @k_right, align 4
  %11 = load i32, i32* @J_B, align 4
  store i32 %11, i32* @k_left, align 4
  %12 = load i32, i32* @DISPLAY_ON, align 4
  %13 = call i32 (...) @enable_interrupts()
  br label %14

14:                                               ; preds = %0, %14
  %15 = load i32, i32* @pw, align 4
  %16 = call i32 @delay(i32 %15)
  %17 = call i32 (...) @player()
  %18 = call i32 (...) @bombs()
  %19 = call i32 (...) @enemys()
  %20 = call i32 (...) @kirai()
  br label %14
}

declare dso_local i32 @disable_interrupts(...) #1

declare dso_local i32 @init_screen(...) #1

declare dso_local i32 @init_score(...) #1

declare dso_local i32 @init_player(...) #1

declare dso_local i32 @init_tama(...) #1

declare dso_local i32 @init_enemy(...) #1

declare dso_local i32 @init_kirai(...) #1

declare dso_local i32 @show_gover(...) #1

declare dso_local i32 @enable_interrupts(...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i32 @player(...) #1

declare dso_local i32 @bombs(...) #1

declare dso_local i32 @enemys(...) #1

declare dso_local i32 @kirai(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
