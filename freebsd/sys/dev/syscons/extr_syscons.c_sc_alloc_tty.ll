; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_alloc_tty.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/syscons/extr_syscons.c_sc_alloc_tty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty = type { i32 }
%struct.sc_ttysoftc = type { i32, i32* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@sc_ttydevsw = common dso_local global i32 0, align 4
@Giant = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"v%r\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty* (i32, i32)* @sc_alloc_tty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty* @sc_alloc_tty(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.sc_ttysoftc*, align 8
  %6 = alloca %struct.tty*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @M_DEVBUF, align 4
  %8 = load i32, i32* @M_WAITOK, align 4
  %9 = call %struct.sc_ttysoftc* @malloc(i32 16, i32 %7, i32 %8)
  store %struct.sc_ttysoftc* %9, %struct.sc_ttysoftc** %5, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.sc_ttysoftc*, %struct.sc_ttysoftc** %5, align 8
  %12 = getelementptr inbounds %struct.sc_ttysoftc, %struct.sc_ttysoftc* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.sc_ttysoftc*, %struct.sc_ttysoftc** %5, align 8
  %14 = getelementptr inbounds %struct.sc_ttysoftc, %struct.sc_ttysoftc* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.sc_ttysoftc*, %struct.sc_ttysoftc** %5, align 8
  %16 = call %struct.tty* @tty_alloc_mutex(i32* @sc_ttydevsw, %struct.sc_ttysoftc* %15, i32* @Giant)
  store %struct.tty* %16, %struct.tty** %6, align 8
  %17 = load %struct.tty*, %struct.tty** %6, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @tty_makedev(%struct.tty* %17, i32* null, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.tty*, %struct.tty** %6, align 8
  ret %struct.tty* %20
}

declare dso_local %struct.sc_ttysoftc* @malloc(i32, i32, i32) #1

declare dso_local %struct.tty* @tty_alloc_mutex(i32*, %struct.sc_ttysoftc*, i32*) #1

declare dso_local i32 @tty_makedev(%struct.tty*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
