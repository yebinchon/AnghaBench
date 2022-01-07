; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_clear_eol.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/top/extr_screen.c_clear_eol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@smart_terminal = common dso_local global i64 0, align 8
@overstrike = common dso_local global i32 0, align 4
@clear_line = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clear_eol(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i64, i64* @smart_terminal, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %26

6:                                                ; preds = %1
  %7 = load i32, i32* @overstrike, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* %3, align 4
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load i64, i64* @clear_line, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @clear_line, align 8
  %17 = call i32 @putcap(i64 %16)
  store i32 0, i32* %2, align 4
  br label %27

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %23, %18
  %20 = load i32, i32* %3, align 4
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %3, align 4
  %22 = icmp sgt i32 %20, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 @putchar(i8 signext 32)
  br label %19

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %27

26:                                               ; preds = %9, %6, %1
  store i32 -1, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %25, %15
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @putcap(i64) #1

declare dso_local i32 @putchar(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
