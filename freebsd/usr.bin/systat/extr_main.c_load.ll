; ModuleID = '/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_load.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.bin/systat/extr_main.c_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@avenrun = common dso_local global i32* null, align 8
@CMDLINE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%4.1f %4.1f %4.1f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @load() #0 {
  %1 = load i32*, i32** @avenrun, align 8
  %2 = load i32*, i32** @avenrun, align 8
  %3 = call i32 @nitems(i32* %2)
  %4 = call i32 @getloadavg(i32* %1, i32 %3)
  %5 = load i32, i32* @CMDLINE, align 4
  %6 = load i32*, i32** @avenrun, align 8
  %7 = getelementptr inbounds i32, i32* %6, i64 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32*, i32** @avenrun, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32*, i32** @avenrun, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @mvprintw(i32 %5, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14)
  %16 = call i32 (...) @clrtoeol()
  ret void
}

declare dso_local i32 @getloadavg(i32*, i32) #1

declare dso_local i32 @nitems(i32*) #1

declare dso_local i32 @mvprintw(i32, i32, i8*, i32, i32, i32) #1

declare dso_local i32 @clrtoeol(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
