; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_poll_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_poll_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, i32 }
%struct.vmbus_chan_pollarg = type { i64, %struct.vmbus_channel* }
%struct.task = type { i32 }

@VMBUS_CHAN_FLAG_BATCHREAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"enable polling on non-batch chan%u\00", align 1
@VMBUS_CHAN_POLLHZ_MIN = common dso_local global i64 0, align 8
@VMBUS_CHAN_POLLHZ_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid pollhz %u\00", align 1
@vmbus_chan_pollcfg_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_chan_poll_enable(%struct.vmbus_channel* %0, i64 %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.vmbus_chan_pollarg, align 8
  %6 = alloca %struct.task, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %8 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @VMBUS_CHAN_FLAG_BATCHREAD, align 4
  %11 = and i32 %9, %10
  %12 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %13 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %11, i8* %16)
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @VMBUS_CHAN_POLLHZ_MIN, align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load i64, i64* %4, align 8
  %23 = load i64, i64* @VMBUS_CHAN_POLLHZ_MAX, align 8
  %24 = icmp sle i64 %22, %23
  br label %25

25:                                               ; preds = %21, %2
  %26 = phi i1 [ false, %2 ], [ %24, %21 ]
  %27 = zext i1 %26 to i32
  %28 = load i64, i64* %4, align 8
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %27, i8* %29)
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %32 = getelementptr inbounds %struct.vmbus_chan_pollarg, %struct.vmbus_chan_pollarg* %5, i32 0, i32 1
  store %struct.vmbus_channel* %31, %struct.vmbus_channel** %32, align 8
  %33 = load i64, i64* %4, align 8
  %34 = getelementptr inbounds %struct.vmbus_chan_pollarg, %struct.vmbus_chan_pollarg* %5, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load i32, i32* @vmbus_chan_pollcfg_task, align 4
  %36 = call i32 @TASK_INIT(%struct.task* %6, i32 0, i32 %35, %struct.vmbus_chan_pollarg* %5)
  %37 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %38 = call i32 @vmbus_chan_run_task(%struct.vmbus_channel* %37, %struct.task* %6)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @TASK_INIT(%struct.task*, i32, i32, %struct.vmbus_chan_pollarg*) #1

declare dso_local i32 @vmbus_chan_run_task(%struct.vmbus_channel*, %struct.task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
