; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/watch/extr_watch.c_setup_scr.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/watch/extr_watch.c_setup_scr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gbuf = common dso_local global i8* null, align 8
@opt_interactive = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TERM\00", align 1
@tbuf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"cl\00", align 1
@clear_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @setup_scr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_scr() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = load i8*, i8** @gbuf, align 8
  store i8* %3, i8** %1, align 8
  %4 = load i32, i32* @opt_interactive, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  br label %24

7:                                                ; preds = %0
  %8 = call i8* @getenv(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %8, i8** %2, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %7
  %11 = load i32, i32* @tbuf, align 4
  %12 = load i8*, i8** %2, align 8
  %13 = call i32 @tgetent(i32 %11, i8* %12)
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = call i64 @tgetstr(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %1)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32 1, i32* @clear_ok, align 4
  br label %19

19:                                               ; preds = %18, %15
  br label %20

20:                                               ; preds = %19, %10
  br label %21

21:                                               ; preds = %20, %7
  %22 = call i32 (...) @set_tty()
  %23 = call i32 (...) @clear()
  br label %24

24:                                               ; preds = %21, %6
  ret void
}

declare dso_local i8* @getenv(i8*) #1

declare dso_local i32 @tgetent(i32, i8*) #1

declare dso_local i64 @tgetstr(i8*, i8**) #1

declare dso_local i32 @set_tty(...) #1

declare dso_local i32 @clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
