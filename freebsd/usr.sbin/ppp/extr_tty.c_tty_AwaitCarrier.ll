; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_AwaitCarrier.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/ppp/extr_tty.c_tty_AwaitCarrier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.physical = type { i32 }
%struct.ttydevice = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@CD_NOTREQUIRED = common dso_local global i64 0, align 8
@CARRIER_OK = common dso_local global i32 0, align 4
@TIMER_STOPPED = common dso_local global i64 0, align 8
@CARRIER_PENDING = common dso_local global i32 0, align 4
@CARRIER_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.physical*)* @tty_AwaitCarrier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tty_AwaitCarrier(%struct.physical* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.physical*, align 8
  %4 = alloca %struct.ttydevice*, align 8
  store %struct.physical* %0, %struct.physical** %3, align 8
  %5 = load %struct.physical*, %struct.physical** %3, align 8
  %6 = getelementptr inbounds %struct.physical, %struct.physical* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ttydevice* @device2tty(i32 %7)
  store %struct.ttydevice* %8, %struct.ttydevice** %4, align 8
  %9 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %10 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CD_NOTREQUIRED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.physical*, %struct.physical** %3, align 8
  %18 = call i64 @physical_IsSync(%struct.physical* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @CARRIER_OK, align 4
  store i32 %21, i32* %2, align 4
  br label %51

22:                                               ; preds = %16
  %23 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %24 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp eq i32 %25, -1
  br i1 %26, label %27, label %41

27:                                               ; preds = %22
  %28 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %29 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @TIMER_STOPPED, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %36 = getelementptr inbounds %struct.ttydevice, %struct.ttydevice* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.physical*, %struct.physical** %3, align 8
  %38 = call i32 @tty_StartTimer(%struct.physical* %37)
  br label %39

39:                                               ; preds = %34, %27
  %40 = load i32, i32* @CARRIER_PENDING, align 4
  store i32 %40, i32* %2, align 4
  br label %51

41:                                               ; preds = %22
  %42 = load %struct.ttydevice*, %struct.ttydevice** %4, align 8
  %43 = call i64 @Online(%struct.ttydevice* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %41
  %46 = load i32, i32* @CARRIER_OK, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @CARRIER_LOST, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = phi i32 [ %46, %45 ], [ %48, %47 ]
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %49, %39, %20
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.ttydevice* @device2tty(i32) #1

declare dso_local i64 @physical_IsSync(%struct.physical*) #1

declare dso_local i32 @tty_StartTimer(%struct.physical*) #1

declare dso_local i64 @Online(%struct.ttydevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
