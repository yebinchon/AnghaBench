; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_end_screen.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_end_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smart_terminal = common dso_local global i64 0, align 8
@lower_left = common dso_local global i32 0, align 4
@clear_line = common dso_local global i32 0, align 4
@stdout = common dso_local global i32 0, align 4
@terminal_end = common dso_local global i32 0, align 4
@is_a_terminal = common dso_local global i64 0, align 8
@STDOUT_FILENO = common dso_local global i32 0, align 4
@TCSADRAIN = common dso_local global i32 0, align 4
@old_settings = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @end_screen() #0 {
  %1 = load i64, i64* @smart_terminal, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %12

3:                                                ; preds = %0
  %4 = load i32, i32* @lower_left, align 4
  %5 = call i32 @putcap(i32 %4)
  %6 = load i32, i32* @clear_line, align 4
  %7 = call i32 @putcap(i32 %6)
  %8 = load i32, i32* @stdout, align 4
  %9 = call i32 @fflush(i32 %8)
  %10 = load i32, i32* @terminal_end, align 4
  %11 = call i32 @putcap(i32 %10)
  br label %12

12:                                               ; preds = %3, %0
  %13 = load i64, i64* @is_a_terminal, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %12
  %16 = load i32, i32* @STDOUT_FILENO, align 4
  %17 = load i32, i32* @TCSADRAIN, align 4
  %18 = call i32 @tcsetattr(i32 %16, i32 %17, i32* @old_settings)
  br label %19

19:                                               ; preds = %15, %12
  ret void
}

declare dso_local i32 @putcap(i32) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
