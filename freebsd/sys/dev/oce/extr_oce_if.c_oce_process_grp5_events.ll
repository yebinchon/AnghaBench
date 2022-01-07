; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_process_grp5_events.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_process_grp5_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.oce_mq_cqe = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.oce_async_event_grp5_pvid_state = type { i32, i32 }
%struct.oce_async_evt_grp5_os2bmc = type { i32 }

@VLAN_VID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, %struct.oce_mq_cqe*)* @oce_process_grp5_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_process_grp5_events(%struct.TYPE_8__* %0, %struct.oce_mq_cqe* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca %struct.oce_mq_cqe*, align 8
  %5 = alloca %struct.oce_async_event_grp5_pvid_state*, align 8
  %6 = alloca %struct.oce_async_evt_grp5_os2bmc*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store %struct.oce_mq_cqe* %1, %struct.oce_mq_cqe** %4, align 8
  %7 = load %struct.oce_mq_cqe*, %struct.oce_mq_cqe** %4, align 8
  %8 = getelementptr inbounds %struct.oce_mq_cqe, %struct.oce_mq_cqe* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %37 [
    i32 128, label %12
    i32 129, label %31
  ]

12:                                               ; preds = %2
  %13 = load %struct.oce_mq_cqe*, %struct.oce_mq_cqe** %4, align 8
  %14 = bitcast %struct.oce_mq_cqe* %13 to %struct.oce_async_event_grp5_pvid_state*
  store %struct.oce_async_event_grp5_pvid_state* %14, %struct.oce_async_event_grp5_pvid_state** %5, align 8
  %15 = load %struct.oce_async_event_grp5_pvid_state*, %struct.oce_async_event_grp5_pvid_state** %5, align 8
  %16 = getelementptr inbounds %struct.oce_async_event_grp5_pvid_state, %struct.oce_async_event_grp5_pvid_state* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %12
  %20 = load %struct.oce_async_event_grp5_pvid_state*, %struct.oce_async_event_grp5_pvid_state** %5, align 8
  %21 = getelementptr inbounds %struct.oce_async_event_grp5_pvid_state, %struct.oce_async_event_grp5_pvid_state* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @VLAN_VID_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %30

27:                                               ; preds = %12
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i32 0, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %19
  br label %38

31:                                               ; preds = %2
  %32 = load %struct.oce_mq_cqe*, %struct.oce_mq_cqe** %4, align 8
  %33 = bitcast %struct.oce_mq_cqe* %32 to %struct.oce_async_evt_grp5_os2bmc*
  store %struct.oce_async_evt_grp5_os2bmc* %33, %struct.oce_async_evt_grp5_os2bmc** %6, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %35 = load %struct.oce_async_evt_grp5_os2bmc*, %struct.oce_async_evt_grp5_os2bmc** %6, align 8
  %36 = call i32 @oce_async_grp5_osbmc_process(%struct.TYPE_8__* %34, %struct.oce_async_evt_grp5_os2bmc* %35)
  br label %38

37:                                               ; preds = %2
  br label %38

38:                                               ; preds = %37, %31, %30
  ret void
}

declare dso_local i32 @oce_async_grp5_osbmc_process(%struct.TYPE_8__*, %struct.oce_async_evt_grp5_os2bmc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
