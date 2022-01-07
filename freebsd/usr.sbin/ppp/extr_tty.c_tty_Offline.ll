; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Offline.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Offline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i64, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttydevice = type { i32, i32 }
%struct.termios = type { i32 }

@TIOCM_DTR = common dso_local global i32 0, align 4
@B0 = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Unable to set physical to speed 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*)* @tty_Offline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_Offline(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca %struct.ttydevice*, align 8
  %4 = alloca %struct.termios, align 4
  store %struct.physical* %0, %struct.physical** %2, align 8
  %5 = load %struct.physical*, %struct.physical** %2, align 8
  %6 = getelementptr inbounds %struct.physical, %struct.physical* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ttydevice* @device2tty(i32 %7)
  store %struct.ttydevice* %8, %struct.ttydevice** %3, align 8
  %9 = load %struct.physical*, %struct.physical** %2, align 8
  %10 = getelementptr inbounds %struct.physical, %struct.physical* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %50

13:                                               ; preds = %1
  %14 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %15 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %14, i32 0, i32 1
  %16 = call i32 @timer_Stop(i32* %15)
  %17 = load i32, i32* @TIOCM_DTR, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %20 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %24 = call i64 @Online(%struct.ttydevice* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %13
  %27 = load %struct.physical*, %struct.physical** %2, align 8
  %28 = getelementptr inbounds %struct.physical, %struct.physical* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @tcgetattr(i64 %29, %struct.termios* %4)
  %31 = load i32, i32* @B0, align 4
  %32 = call i32 @cfsetspeed(%struct.termios* %4, i32 %31)
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %41, label %34

34:                                               ; preds = %26
  %35 = load %struct.physical*, %struct.physical** %2, align 8
  %36 = getelementptr inbounds %struct.physical, %struct.physical* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @TCSANOW, align 4
  %39 = call i32 @tcsetattr(i64 %37, i32 %38, %struct.termios* %4)
  %40 = icmp eq i32 %39, -1
  br i1 %40, label %41, label %48

41:                                               ; preds = %34, %26
  %42 = load i32, i32* @LogWARN, align 4
  %43 = load %struct.physical*, %struct.physical** %2, align 8
  %44 = getelementptr inbounds %struct.physical, %struct.physical* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @log_Printf(i32 %42, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %41, %34
  br label %49

49:                                               ; preds = %48, %13
  br label %50

50:                                               ; preds = %49, %1
  ret void
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i32 @timer_Stop(i32*) #1

declare dso_local i64 @Online(%struct.ttydevice*) #1

declare dso_local i32 @tcgetattr(i64, %struct.termios*) #1

declare dso_local i32 @cfsetspeed(%struct.termios*, i32) #1

declare dso_local i32 @tcsetattr(i64, i32, %struct.termios*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
