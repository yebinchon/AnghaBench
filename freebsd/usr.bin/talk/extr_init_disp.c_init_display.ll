; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_init_display.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }
%struct.TYPE_4__ = type { i32, i8*, i8* }
%struct.sigaction = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"Terminal type unset or lacking necessary features.\00", align 1
@SIGTSTP = common dso_local global i32 0, align 4
@SIGALRM = common dso_local global i32 0, align 4
@curses_initialized = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@sig_sent = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4
@SIGWINCH = common dso_local global i32 0, align 4
@sig_winch = common dso_local global i32 0, align 4
@LINES = common dso_local global i32 0, align 4
@my_win = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@COLS = common dso_local global i8* null, align 8
@TRUE = common dso_local global i32 0, align 4
@his_win = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@line_win = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"No connection yet\00", align 1
@current_state = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_display() #0 {
  %1 = alloca %struct.sigaction, align 4
  %2 = call i32* (...) @initscr()
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = call i32 @errx(i32 1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %6

6:                                                ; preds = %4, %0
  %7 = load i32, i32* @SIGTSTP, align 4
  %8 = call i32 @sigaction(i32 %7, %struct.sigaction* null, %struct.sigaction* %1)
  %9 = getelementptr inbounds %struct.sigaction, %struct.sigaction* %1, i32 0, i32 0
  %10 = load i32, i32* @SIGALRM, align 4
  %11 = call i32 @sigaddset(i32* %9, i32 %10)
  %12 = load i32, i32* @SIGTSTP, align 4
  %13 = call i32 @sigaction(i32 %12, %struct.sigaction* %1, %struct.sigaction* null)
  store i32 1, i32* @curses_initialized, align 4
  %14 = call i32 (...) @clear()
  %15 = call i32 (...) @refresh()
  %16 = call i32 (...) @noecho()
  %17 = call i32 (...) @crmode()
  %18 = load i32, i32* @SIGINT, align 4
  %19 = load i32, i32* @sig_sent, align 4
  %20 = call i32 @signal(i32 %18, i32 %19)
  %21 = load i32, i32* @SIGPIPE, align 4
  %22 = load i32, i32* @sig_sent, align 4
  %23 = call i32 @signal(i32 %21, i32 %22)
  %24 = load i32, i32* @SIGWINCH, align 4
  %25 = load i32, i32* @sig_winch, align 4
  %26 = call i32 @signal(i32 %24, i32 %25)
  %27 = load i32, i32* @LINES, align 4
  %28 = sdiv i32 %27, 2
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %29 = load i8*, i8** @COLS, align 8
  store i8* %29, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %31 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 1), align 8
  %32 = call i8* @newwin(i32 %30, i8* %31, i32 0, i32 0)
  store i8* %32, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %33 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %34 = load i32, i32* @TRUE, align 4
  %35 = call i32 @idlok(i8* %33, i32 %34)
  %36 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %37 = load i32, i32* @TRUE, align 4
  %38 = call i32 @scrollok(i8* %36, i32 %37)
  %39 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %40 = call i32 @wclear(i8* %39)
  %41 = load i32, i32* @LINES, align 4
  %42 = sdiv i32 %41, 2
  %43 = sub nsw i32 %42, 1
  store i32 %43, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 0), align 8
  %44 = load i8*, i8** @COLS, align 8
  store i8* %44, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 1), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 0), align 8
  %46 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 1), align 8
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %48 = add nsw i32 %47, 1
  %49 = call i8* @newwin(i32 %45, i8* %46, i32 %48, i32 0)
  store i8* %49, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 8
  %50 = load i8*, i8** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 2), align 8
  %51 = load i32, i32* @TRUE, align 4
  %52 = call i32 @idlok(i8* %50, i32 %51)
  %53 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 8
  %54 = load i32, i32* @TRUE, align 4
  %55 = call i32 @scrollok(i8* %53, i32 %54)
  %56 = load i8*, i8** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @his_win, i32 0, i32 2), align 8
  %57 = call i32 @wclear(i8* %56)
  %58 = load i8*, i8** @COLS, align 8
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @my_win, i32 0, i32 0), align 8
  %60 = call i8* @newwin(i32 1, i8* %58, i32 %59, i32 0)
  store i8* %60, i8** @line_win, align 8
  %61 = load i8*, i8** @line_win, align 8
  %62 = call i32 @box(i8* %61, i8 signext 45, i8 signext 45)
  %63 = load i8*, i8** @line_win, align 8
  %64 = call i32 @wrefresh(i8* %63)
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i8** @current_state, align 8
  ret void
}

declare dso_local i32* @initscr(...) #1

declare dso_local i32 @errx(i32, i8*) #1

declare dso_local i32 @sigaction(i32, %struct.sigaction*, %struct.sigaction*) #1

declare dso_local i32 @sigaddset(i32*, i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @crmode(...) #1

declare dso_local i32 @signal(i32, i32) #1

declare dso_local i8* @newwin(i32, i8*, i32, i32) #1

declare dso_local i32 @idlok(i8*, i32) #1

declare dso_local i32 @scrollok(i8*, i32) #1

declare dso_local i32 @wclear(i8*) #1

declare dso_local i32 @box(i8*, i8 signext, i8 signext) #1

declare dso_local i32 @wrefresh(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
