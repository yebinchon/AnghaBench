; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_xact_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_xact_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32 }
%struct.vmbus_xact = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"chxact\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @vmbus_chan_xact_wait(%struct.vmbus_channel* %0, %struct.vmbus_xact* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.vmbus_channel*, align 8
  %6 = alloca %struct.vmbus_xact*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %5, align 8
  store %struct.vmbus_xact* %1, %struct.vmbus_xact** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %4
  %13 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = call i8* @vmbus_xact_wait(%struct.vmbus_xact* %13, i64* %14)
  store i8* %15, i8** %9, align 8
  br label %20

16:                                               ; preds = %4
  %17 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %18 = load i64*, i64** %7, align 8
  %19 = call i8* @vmbus_xact_busywait(%struct.vmbus_xact* %17, i64* %18)
  store i8* %19, i8** %9, align 8
  br label %20

20:                                               ; preds = %16, %12
  %21 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %22 = call i64 @vmbus_chan_is_revoked(%struct.vmbus_channel* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %20
  br label %25

25:                                               ; preds = %37, %24
  %26 = load %struct.vmbus_channel*, %struct.vmbus_channel** %5, align 8
  %27 = call i32 @vmbus_chan_rx_empty(%struct.vmbus_channel* %26)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = call i32 @pause(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %37

35:                                               ; preds = %30
  %36 = call i32 @DELAY(i32 1000)
  br label %37

37:                                               ; preds = %35, %33
  br label %25

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38, %20
  %40 = load i8*, i8** %9, align 8
  ret i8* %40
}

declare dso_local i8* @vmbus_xact_wait(%struct.vmbus_xact*, i64*) #1

declare dso_local i8* @vmbus_xact_busywait(%struct.vmbus_xact*, i64*) #1

declare dso_local i64 @vmbus_chan_is_revoked(%struct.vmbus_channel*) #1

declare dso_local i32 @vmbus_chan_rx_empty(%struct.vmbus_channel*) #1

declare dso_local i32 @pause(i8*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
