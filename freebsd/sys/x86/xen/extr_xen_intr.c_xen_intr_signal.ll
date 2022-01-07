; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_signal.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i64, i32 }
%struct.evtchn_send = type { i32 }

@EVTCHN_TYPE_PORT = common dso_local global i64 0, align 8
@EVTCHN_TYPE_IPI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"evtchn_signal on something other than a local port\00", align 1
@EVTCHNOP_send = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xen_intr_signal(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xenisrc*, align 8
  %4 = alloca %struct.evtchn_send, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.xenisrc* @xen_intr_isrc(i32 %5)
  store %struct.xenisrc* %6, %struct.xenisrc** %3, align 8
  %7 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %8 = icmp ne %struct.xenisrc* %7, null
  br i1 %8, label %9, label %31

9:                                                ; preds = %1
  %10 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %11 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EVTCHN_TYPE_PORT, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %17 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EVTCHN_TYPE_IPI, align 8
  %20 = icmp eq i64 %18, %19
  br label %21

21:                                               ; preds = %15, %9
  %22 = phi i1 [ true, %9 ], [ %20, %15 ]
  %23 = zext i1 %22 to i32
  %24 = call i32 @KASSERT(i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %25 = getelementptr inbounds %struct.evtchn_send, %struct.evtchn_send* %4, i32 0, i32 0
  %26 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %27 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %25, align 4
  %29 = load i32, i32* @EVTCHNOP_send, align 4
  %30 = call i32 @HYPERVISOR_event_channel_op(i32 %29, %struct.evtchn_send* %4)
  br label %31

31:                                               ; preds = %21, %1
  ret void
}

declare dso_local %struct.xenisrc* @xen_intr_isrc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_send*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
