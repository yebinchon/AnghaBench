; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_icmp.c_labelicmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_icmp.c_labelicmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@wnd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"ICMP Input\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ICMP Output\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"total messages\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"with bad code\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"errors generated\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"with bad length\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"suppressed - original too short\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"with bad checksum\00", align 1
@.str.8 = private unnamed_addr constant [31 x i8] c"suppressed - original was ICMP\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"with insufficient data\00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"responses sent\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"suppressed - multicast echo\00", align 1
@.str.12 = private unnamed_addr constant [30 x i8] c"suppressed - multicast tstamp\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"Input Histogram\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"Output Histogram\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"echo response\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"echo request\00", align 1
@.str.17 = private unnamed_addr constant [24 x i8] c"destination unreachable\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"redirect\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"time-to-live exceeded\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"parameter problem\00", align 1
@.str.21 = private unnamed_addr constant [21 x i8] c"router advertisement\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"router solicitation\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labelicmp() #0 {
  %1 = load i32, i32* @wnd, align 4
  %2 = call i32 @wmove(i32 %1, i32 0, i32 0)
  %3 = load i32, i32* @wnd, align 4
  %4 = call i32 @wclrtoeol(i32 %3)
  %5 = load i32, i32* @wnd, align 4
  %6 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %5, i32 0, i32 10, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @wnd, align 4
  %8 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %7, i32 0, i32 45, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @wnd, align 4
  %10 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %9, i32 1, i32 10, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %11 = load i32, i32* @wnd, align 4
  %12 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %11, i32 1, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32, i32* @wnd, align 4
  %14 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %13, i32 2, i32 10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* @wnd, align 4
  %16 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %15, i32 2, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %17 = load i32, i32* @wnd, align 4
  %18 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %17, i32 3, i32 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0))
  %19 = load i32, i32* @wnd, align 4
  %20 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %19, i32 3, i32 45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  %21 = load i32, i32* @wnd, align 4
  %22 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %21, i32 4, i32 10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  %23 = load i32, i32* @wnd, align 4
  %24 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %23, i32 4, i32 45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  %25 = load i32, i32* @wnd, align 4
  %26 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %25, i32 5, i32 10, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %27 = load i32, i32* @wnd, align 4
  %28 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %27, i32 5, i32 45, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.10, i64 0, i64 0))
  %29 = load i32, i32* @wnd, align 4
  %30 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %29, i32 6, i32 45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %31 = load i32, i32* @wnd, align 4
  %32 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %31, i32 7, i32 45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.12, i64 0, i64 0))
  %33 = load i32, i32* @wnd, align 4
  %34 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %33, i32 9, i32 10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %35 = load i32, i32* @wnd, align 4
  %36 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %35, i32 9, i32 45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0))
  %37 = load i32, i32* @wnd, align 4
  %38 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %37, i32 10, i32 10, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %39 = load i32, i32* @wnd, align 4
  %40 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %39, i32 10, i32 45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.15, i64 0, i64 0))
  %41 = load i32, i32* @wnd, align 4
  %42 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %41, i32 11, i32 10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %43 = load i32, i32* @wnd, align 4
  %44 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %43, i32 11, i32 45, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0))
  %45 = load i32, i32* @wnd, align 4
  %46 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %45, i32 12, i32 10, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %47 = load i32, i32* @wnd, align 4
  %48 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %47, i32 12, i32 45, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.17, i64 0, i64 0))
  %49 = load i32, i32* @wnd, align 4
  %50 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %49, i32 13, i32 10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %51 = load i32, i32* @wnd, align 4
  %52 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %51, i32 13, i32 45, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.18, i64 0, i64 0))
  %53 = load i32, i32* @wnd, align 4
  %54 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %53, i32 14, i32 10, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %55 = load i32, i32* @wnd, align 4
  %56 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %55, i32 14, i32 45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  %57 = load i32, i32* @wnd, align 4
  %58 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %57, i32 15, i32 10, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %59 = load i32, i32* @wnd, align 4
  %60 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %59, i32 15, i32 45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.20, i64 0, i64 0))
  %61 = load i32, i32* @wnd, align 4
  %62 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %61, i32 16, i32 10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0))
  %63 = load i32, i32* @wnd, align 4
  %64 = call i32 (i32, i32, i32, i8*, ...) bitcast (i32 (...)* @mvwprintw to i32 (i32, i32, i32, i8*, ...)*)(i32 %63, i32 16, i32 45, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i64 0, i64 0))
  ret void
}

declare dso_local i32 @wmove(i32, i32, i32) #1

declare dso_local i32 @wclrtoeol(i32) #1

declare dso_local i32 @mvwprintw(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
