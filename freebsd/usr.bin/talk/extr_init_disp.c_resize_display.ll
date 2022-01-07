; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_resize_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_resize_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64, i32 }
%struct.TYPE_4__ = type { i32, i64, i32 }
%struct.winsize = type { i32, i64 }

@STDIN_FILENO = common dso_local global i32 0, align 4
@TIOCGWINSZ = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@COLS = common dso_local global i64 0, align 8
@my_win = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@TRUE = common dso_local global i32 0, align 4
@his_win = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@line_win = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @resize_display() #0 {
  %1 = alloca %struct.winsize, align 8
  %2 = load i32, i32* @STDIN_FILENO, align 4
  %3 = load i32, i32* @TIOCGWINSZ, align 4
  %4 = call i64 @ioctl(i32 %2, i32 %3, %struct.winsize* %1)
  %5 = icmp slt i64 %4, 0
  br i1 %5, label %16, label %6

6:                                                ; preds = %0
  %7 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @LINES, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @COLS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %0
  br label %67

17:                                               ; preds = %11, %6
  %18 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = getelementptr inbounds %struct.winsize, %struct.winsize* %1, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @resizeterm(i32 %19, i64 %21)
  %23 = load i32, i32* @LINES, align 4
  %24 = sdiv i32 %23, 2
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %25 = load i64, i64* @COLS, align 8
  store i64 %25, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 8
  %26 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 8
  %29 = call i32 @wresize(i32 %26, i32 %27, i64 %28)
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %31 = call i32 @mvwin(i32 %30, i32 0, i32 0)
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %33 = load i32, i32* @TRUE, align 4
  %34 = call i32 @clearok(i32 %32, i32 %33)
  %35 = load i32, i32* @LINES, align 4
  %36 = sdiv i32 %35, 2
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 0), align 8
  %38 = load i64, i64* @COLS, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 1), align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 0), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 1), align 8
  %42 = call i32 @wresize(i32 %39, i32 %40, i64 %41)
  %43 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 8
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %45 = add nsw i32 %44, 1
  %46 = call i32 @mvwin(i32 %43, i32 %45, i32 0)
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 8
  %48 = load i32, i32* @TRUE, align 4
  %49 = call i32 @clearok(i32 %47, i32 %48)
  %50 = load i32, i32* @line_win, align 4
  %51 = load i64, i64* @COLS, align 8
  %52 = call i32 @wresize(i32 %50, i32 1, i64 %51)
  %53 = load i32, i32* @line_win, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %55 = call i32 @mvwin(i32 %53, i32 %54, i32 0)
  %56 = load i32, i32* @line_win, align 4
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %58 = call i32 @wmove(i32 %56, i32 %57, i32 0)
  %59 = load i32, i32* @line_win, align 4
  %60 = call i32 @box(i32 %59, i8 signext 45, i8 signext 45)
  %61 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 8
  %62 = call i32 @wrefresh(i32 %61)
  %63 = load i32, i32* @line_win, align 4
  %64 = call i32 @wrefresh(i32 %63)
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %66 = call i32 @wrefresh(i32 %65)
  br label %67

67:                                               ; preds = %17, %16
  ret void
}

declare dso_local i64 @ioctl(i32, i32, %struct.winsize*) #1

declare dso_local i32 @resizeterm(i32, i64) #1

declare dso_local i32 @wresize(i32, i32, i64) #1

declare dso_local i32 @mvwin(i32, i32, i32) #1

declare dso_local i32 @clearok(i32, i32) #1

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @box(i32, i8 signext, i8 signext) #1

declare dso_local i32 @wrefresh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
