; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_StartTimer.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_StartTimer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ttydevice = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, %struct.physical*, i32, i32 }

@SECTICKS = common dso_local global i32 0, align 4
@tty_Timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"tty CD\00", align 1
@LogDEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"%s: Using tty_Timeout [%p]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*)* @tty_StartTimer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_StartTimer(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca %struct.ttydevice*, align 8
  store %struct.physical* %0, %struct.physical** %2, align 8
  %4 = load %struct.physical*, %struct.physical** %2, align 8
  %5 = getelementptr inbounds %struct.physical, %struct.physical* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call %struct.ttydevice* @device2tty(i32 %6)
  store %struct.ttydevice* %7, %struct.ttydevice** %3, align 8
  %8 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %9 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %8, i32 0, i32 0
  %10 = call i32 @timer_Stop(%struct.TYPE_5__* %9)
  %11 = load i32, i32* @SECTICKS, align 4
  %12 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %13 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @tty_Timeout, align 4
  %16 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %17 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 2
  store i32 %15, i32* %18, align 8
  %19 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %20 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %21, align 8
  %22 = load %struct.physical*, %struct.physical** %2, align 8
  %23 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %24 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store %struct.physical* %22, %struct.physical** %25, align 8
  %26 = load i32, i32* @LogDEBUG, align 4
  %27 = load %struct.physical*, %struct.physical** %2, align 8
  %28 = getelementptr inbounds %struct.physical, %struct.physical* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @tty_Timeout, align 4
  %32 = call i32 @log_Printf(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %31)
  %33 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %34 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %33, i32 0, i32 0
  %35 = call i32 @timer_Start(%struct.TYPE_5__* %34)
  ret void
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i32 @timer_Stop(%struct.TYPE_5__*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32, i32) #1

declare dso_local i32 @timer_Start(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
