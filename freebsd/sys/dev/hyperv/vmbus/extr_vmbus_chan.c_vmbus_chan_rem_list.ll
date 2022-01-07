; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_rem_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_rem_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i32, i32 }
%struct.vmbus_channel = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@VMBUS_CHAN_ST_ONLIST_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"channel is not on the list\00", align 1
@ch_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_softc*, %struct.vmbus_channel*)* @vmbus_chan_rem_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_chan_rem_list(%struct.vmbus_softc* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  %5 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %6 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %5, i32 0, i32 1
  %7 = load i32, i32* @MA_OWNED, align 4
  %8 = call i32 @mtx_assert(i32* %6, i32 %7)
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 0
  %11 = load i32, i32* @VMBUS_CHAN_ST_ONLIST_SHIFT, align 4
  %12 = call i64 @atomic_testandclear_int(i32* %10, i32 %11)
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = call i32 @panic(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %14, %2
  %17 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %17, i32 0, i32 0
  %19 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %20 = load i32, i32* @ch_link, align 4
  %21 = call i32 @TAILQ_REMOVE(i32* %18, %struct.vmbus_channel* %19, i32 %20)
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @atomic_testandclear_int(i32*, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.vmbus_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
