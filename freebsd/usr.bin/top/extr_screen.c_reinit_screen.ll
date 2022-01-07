; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_reinit_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_reinit_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_a_terminal = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@new_settings = common dso_local global i32 0, align 4
@smart_terminal = common dso_local global i64 0, align 8
@terminal_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reinit_screen() #0 {
  %1 = load i64, i64* @is_a_terminal, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @STDOUT_FILENO, align 4
  %5 = load i32, i32* @TCSADRAIN, align 4
  %6 = call i32 @tcsetattr(i32 %4, i32 %5, i32* @new_settings)
  br label %7

7:                                                ; preds = %3, %0
  %8 = load i64, i64* @smart_terminal, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %7
  %11 = load i32, i32* @terminal_init, align 4
  %12 = call i32 @putcap(i32 %11)
  br label %13

13:                                               ; preds = %10, %7
  ret void
}

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @putcap(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
