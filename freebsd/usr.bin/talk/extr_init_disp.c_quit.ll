; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_quit.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/talk/extr_init_disp.c_quit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@curses_initialized = common dso_local global i64 0, align 8
@his_win = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@invitation_waiting = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @quit() #0 {
  %1 = load i64, i64* @curses_initialized, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %13

3:                                                ; preds = %0
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @his_win, i32 0, i32 0), align 8
  %5 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @his_win, i32 0, i32 1), align 8
  %6 = sub nsw i64 %5, 1
  %7 = call i32 @wmove(i32 %4, i64 %6, i32 0)
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @his_win, i32 0, i32 0), align 8
  %9 = call i32 @wclrtoeol(i32 %8)
  %10 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @his_win, i32 0, i32 0), align 8
  %11 = call i32 @wrefresh(i32 %10)
  %12 = call i32 (...) @endwin()
  br label %13

13:                                               ; preds = %3, %0
  %14 = load i64, i64* @invitation_waiting, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %13
  %17 = call i32 (...) @send_delete()
  br label %18

18:                                               ; preds = %16, %13
  %19 = call i32 @exit(i32 0) #3
  unreachable
}

declare dso_local i32 @wmove(i32, i64, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @wrefresh(i32) #1

declare dso_local i32 @endwin(...) #1

declare dso_local i32 @send_delete(...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
