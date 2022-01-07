; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_main.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/net80211/stumbler/extr_stumbler.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"Usage: %s <iface>\0A\00", align 1
@stdscr = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SIGINT = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i8**, i8*** %5, align 8
  %10 = getelementptr inbounds i8*, i8** %9, i64 0
  %11 = load i8*, i8** %10, align 8
  %12 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = call i32 @exit(i32 1) #3
  unreachable

14:                                               ; preds = %2
  %15 = call i32 (...) @init_globals()
  %16 = call i32 (...) @initscr()
  %17 = call i32 (...) @cbreak()
  %18 = call i32 (...) @noecho()
  %19 = call i32 (...) @nonl()
  %20 = load i32, i32* @stdscr, align 4
  %21 = load i32, i32* @FALSE, align 4
  %22 = call i32 @intrflush(i32 %20, i32 %21)
  %23 = load i32, i32* @stdscr, align 4
  %24 = load i32, i32* @TRUE, align 4
  %25 = call i32 @keypad(i32 %23, i32 %24)
  %26 = call i32 @curs_set(i32 0)
  %27 = call i32 (...) @clear()
  %28 = call i32 (...) @refresh()
  %29 = load i32, i32* @SIGINT, align 4
  %30 = call i32 @signal(i32 %29, i32 (i32)* @cleanup)
  %31 = load i32, i32* @SIGTERM, align 4
  %32 = call i32 @signal(i32 %31, i32 (i32)* @cleanup)
  %33 = load i8**, i8*** %5, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @own(i8* %35)
  %37 = call i32 @cleanup(i32 0)
  %38 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @printf(i8*, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @init_globals(...) #1

declare dso_local i32 @initscr(...) #1

declare dso_local i32 @cbreak(...) #1

declare dso_local i32 @noecho(...) #1

declare dso_local i32 @nonl(...) #1

declare dso_local i32 @intrflush(i32, i32) #1

declare dso_local i32 @keypad(i32, i32) #1

declare dso_local i32 @curs_set(i32) #1

declare dso_local i32 @clear(...) #1

declare dso_local i32 @refresh(...) #1

declare dso_local i32 @signal(i32, i32 (i32)*) #1

declare dso_local i32 @cleanup(i32) #1

declare dso_local i32 @own(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
