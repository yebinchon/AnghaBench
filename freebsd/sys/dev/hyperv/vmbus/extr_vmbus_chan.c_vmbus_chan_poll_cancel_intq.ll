; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_poll_cancel_intq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_poll_cancel_intq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i64, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel*)* @vmbus_chan_poll_cancel_intq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_chan_poll_cancel_intq(%struct.vmbus_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %4 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %5 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

9:                                                ; preds = %1
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %10, i32 0, i32 3
  %12 = call i32 @callout_drain(i32* %11)
  %13 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %14 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  %15 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %16 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %19 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %18, i32 0, i32 1
  %20 = call i32 @taskqueue_cancel(i32 %17, i32* %19, i32* null)
  store i32 1, i32* %2, align 4
  br label %21

21:                                               ; preds = %9, %8
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_cancel(i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
