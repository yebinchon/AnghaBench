; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_pirq_disable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_pirq_disable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intsrc = type { i32 }
%struct.xenisrc = type { i64, i32 }
%struct.evtchn_close = type { i64 }

@EVTCHNOP_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"unable to close event channel %d IRQ#%d\00", align 1
@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@xen_intr_port_to_isrc = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*)* @xen_intr_pirq_disable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_intr_pirq_disable_intr(%struct.intsrc* %0) #0 {
  %2 = alloca %struct.intsrc*, align 8
  %3 = alloca %struct.xenisrc*, align 8
  %4 = alloca %struct.evtchn_close, align 8
  %5 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %2, align 8
  %6 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %7 = bitcast %struct.intsrc* %6 to %struct.xenisrc*
  store %struct.xenisrc* %7, %struct.xenisrc** %3, align 8
  %8 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %9 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @evtchn_mask_port(i64 %10)
  %12 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %13 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds %struct.evtchn_close, %struct.evtchn_close* %4, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* @EVTCHNOP_close, align 4
  %17 = call i32 @HYPERVISOR_event_channel_op(i32 %16, %struct.evtchn_close* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %1
  %21 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %22 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %25 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %1
  %29 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %30 = load i32**, i32*** @xen_intr_port_to_isrc, align 8
  %31 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %32 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds i32*, i32** %30, i64 %33
  store i32* null, i32** %34, align 8
  %35 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %36 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %37 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %36, i32 0, i32 0
  store i64 0, i64* %37, align 8
  ret void
}

declare dso_local i32 @evtchn_mask_port(i64) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_close*) #1

declare dso_local i32 @panic(i8*, i64, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
