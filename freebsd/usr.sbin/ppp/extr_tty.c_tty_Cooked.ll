; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Cooked.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_Cooked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ttydevice = type { i32 }

@TCIOFLUSH = common dso_local global i32 0, align 4
@TCSAFLUSH = common dso_local global i32 0, align 4
@LogWARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"%s: tcsetattr: Unable to restore device settings\0A\00", align 1
@F_GETFL = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.physical*)* @tty_Cooked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_Cooked(%struct.physical* %0) #0 {
  %2 = alloca %struct.physical*, align 8
  %3 = alloca %struct.ttydevice*, align 8
  %4 = alloca i32, align 4
  store %struct.physical* %0, %struct.physical** %2, align 8
  %5 = load %struct.physical*, %struct.physical** %2, align 8
  %6 = getelementptr inbounds %struct.physical, %struct.physical* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ttydevice* @device2tty(i32 %7)
  store %struct.ttydevice* %8, %struct.ttydevice** %3, align 8
  %9 = load %struct.physical*, %struct.physical** %2, align 8
  %10 = call i32 @tty_Offline(%struct.physical* %9)
  %11 = load %struct.physical*, %struct.physical** %2, align 8
  %12 = getelementptr inbounds %struct.physical, %struct.physical* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @TCIOFLUSH, align 4
  %15 = call i32 @tcflush(i32 %13, i32 %14)
  %16 = load %struct.physical*, %struct.physical** %2, align 8
  %17 = call i32 @physical_IsSync(%struct.physical* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %35, label %19

19:                                               ; preds = %1
  %20 = load %struct.physical*, %struct.physical** %2, align 8
  %21 = getelementptr inbounds %struct.physical, %struct.physical* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @TCSAFLUSH, align 4
  %24 = load %struct.ttydevice*, %struct.ttydevice** %3, align 8
  %25 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %24, i32 0, i32 0
  %26 = call i32 @tcsetattr(i32 %22, i32 %23, i32* %25)
  %27 = icmp eq i32 %26, -1
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load i32, i32* @LogWARN, align 4
  %30 = load %struct.physical*, %struct.physical** %2, align 8
  %31 = getelementptr inbounds %struct.physical, %struct.physical* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @log_Printf(i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %28, %19, %1
  %36 = load %struct.physical*, %struct.physical** %2, align 8
  %37 = call i32 @UnloadLineDiscipline(%struct.physical* %36)
  %38 = load %struct.physical*, %struct.physical** %2, align 8
  %39 = getelementptr inbounds %struct.physical, %struct.physical* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @F_GETFL, align 4
  %42 = call i32 @fcntl(i32 %40, i32 %41, i32 0)
  store i32 %42, i32* %4, align 4
  %43 = icmp ne i32 %42, -1
  br i1 %43, label %44, label %54

44:                                               ; preds = %35
  %45 = load %struct.physical*, %struct.physical** %2, align 8
  %46 = getelementptr inbounds %struct.physical, %struct.physical* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @F_SETFL, align 4
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @O_NONBLOCK, align 4
  %51 = xor i32 %50, -1
  %52 = and i32 %49, %51
  %53 = call i32 @fcntl(i32 %47, i32 %48, i32 %52)
  br label %54

54:                                               ; preds = %44, %35
  ret void
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i32 @tty_Offline(%struct.physical*) #1

declare dso_local i32 @tcflush(i32, i32) #1

declare dso_local i32 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @tcsetattr(i32, i32, i32*) #1

declare dso_local i32 @log_Printf(i32, i8*, i32) #1

declare dso_local i32 @UnloadLineDiscipline(%struct.physical*) #1

declare dso_local i32 @fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
