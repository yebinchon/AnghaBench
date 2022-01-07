; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i64, i32, i32, i32 }

@.str = private unnamed_addr constant [26 x i8] c"chan%u: invalid refcnt %d\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"chan%u detached\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_channel*)* @vmbus_chan_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_chan_detach(%struct.vmbus_channel* %0) #0 {
  %2 = alloca %struct.vmbus_channel*, align 8
  %3 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %2, align 8
  %4 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %5 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp sgt i64 %6, 0
  %8 = zext i1 %7 to i32
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %13 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = call i32 @KASSERT(i32 %8, i8* %15)
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = call i32 @atomic_fetchadd_int(i64* %18, i32 -1)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %38

22:                                               ; preds = %1
  %23 = load i64, i64* @bootverbose, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %27 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %28 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @vmbus_chan_printf(%struct.vmbus_channel* %26, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %25, %22
  %32 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %33 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %2, align 8
  %36 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %35, i32 0, i32 1
  %37 = call i32 @taskqueue_enqueue(i32 %34, i32* %36)
  br label %38

38:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @atomic_fetchadd_int(i64*, i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i32) #1

declare dso_local i32 @taskqueue_enqueue(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
