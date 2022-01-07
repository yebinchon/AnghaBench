; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_rem_sublist.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_rem_sublist.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i64, i32, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"invalid subchan_cnt %d\00", align 1
@VMBUS_CHAN_ST_ONSUBL_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"channel is not on the sublist\00", align 1
@ch_sublink = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*, %struct.vmbus_channel*)* @vmbus_chan_rem_sublist to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_chan_rem_sublist(%struct.vmbus_channel* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  %5 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %6 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %5, i32 0, i32 3
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %11, 0
  %13 = zext i1 %12 to i32
  %14 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %15 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @KASSERT(i32 %13, i8* %17)
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %20 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %20, align 8
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %24 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %23, i32 0, i32 2
  %25 = load i32, i32* @VMBUS_CHAN_ST_ONSUBL_SHIFT, align 4
  %26 = call i64 @atomic_testandclear_int(i32* %24, i32 %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = call i32 @panic(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %2
  %31 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %32 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %31, i32 0, i32 1
  %33 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %34 = load i32, i32* @ch_sublink, align 4
  %35 = call i32 @TAILQ_REMOVE(i32* %32, %struct.vmbus_channel* %33, i32 %34)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_testandclear_int(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vmbus_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
