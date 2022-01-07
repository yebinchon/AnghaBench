; ModuleID = '/home/carl/AnghaBench/freebsd/sys/teken/demo/extr_teken_demo.c_redraw_border.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/teken/demo/extr_teken_demo.c_redraw_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NROWS = common dso_local global i32 0, align 4
@NCOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @redraw_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @redraw_border() #0 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  br label %2

2:                                                ; preds = %10, %0
  %3 = load i32, i32* %1, align 4
  %4 = load i32, i32* @NROWS, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = load i32, i32* %1, align 4
  %8 = load i32, i32* @NCOLS, align 4
  %9 = call i32 @mvaddch(i32 %7, i32 %8, i8 signext 124)
  br label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %1, align 4
  %12 = add i32 %11, 1
  store i32 %12, i32* %1, align 4
  br label %2

13:                                               ; preds = %2
  store i32 0, i32* %1, align 4
  br label %14

14:                                               ; preds = %22, %13
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @NCOLS, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %14
  %19 = load i32, i32* @NROWS, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @mvaddch(i32 %19, i32 %20, i8 signext 45)
  br label %22

22:                                               ; preds = %18
  %23 = load i32, i32* %1, align 4
  %24 = add i32 %23, 1
  store i32 %24, i32* %1, align 4
  br label %14

25:                                               ; preds = %14
  %26 = load i32, i32* @NROWS, align 4
  %27 = load i32, i32* @NCOLS, align 4
  %28 = call i32 @mvaddch(i32 %26, i32 %27, i8 signext 43)
  ret void
}

declare dso_local i32 @mvaddch(i32, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
