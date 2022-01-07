; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_set_orphan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_set_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, %struct.vmbus_xact_ctx* }
%struct.vmbus_xact_ctx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vmbus_chan_set_orphan(%struct.vmbus_channel* %0, %struct.vmbus_xact_ctx* %1) #0 {
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_xact_ctx*, align 8
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  store %struct.vmbus_xact_ctx* %1, %struct.vmbus_xact_ctx** %4, align 8
  %5 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %6 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %5, i32 0, i32 0
  %7 = call i32 @sx_xlock(i32* %6)
  %8 = load %struct.vmbus_xact_ctx*, %struct.vmbus_xact_ctx** %4, align 8
  %9 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %10 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %9, i32 0, i32 1
  store %struct.vmbus_xact_ctx* %8, %struct.vmbus_xact_ctx** %10, align 8
  %11 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %12 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %11, i32 0, i32 0
  %13 = call i32 @sx_xunlock(i32* %12)
  ret void
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
