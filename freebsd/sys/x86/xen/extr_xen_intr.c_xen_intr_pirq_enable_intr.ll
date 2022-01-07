; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_pirq_enable_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_pirq_enable_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i64, i32, i64 }
%struct.intsrc = type { i32 }
%struct.evtchn_bind_pirq = type { i64, i32, i32 }
%struct.physdev_irq_status_query = type { i32, i32 }

@xen_intr_pirq_eoi_map_enabled = common dso_local global i32 0, align 4
@PHYSDEVOP_irq_status_query = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"unable to get status of IRQ#%d\00", align 1
@XENIRQSTAT_needs_eoi = common dso_local global i32 0, align 4
@xen_intr_pirq_eoi_map = common dso_local global i32 0, align 4
@BIND_PIRQ__WILL_SHARE = common dso_local global i32 0, align 4
@EVTCHNOP_bind_pirq = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"unable to bind IRQ#%d\00", align 1
@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@xen_intr_port_to_isrc = common dso_local global %struct.xenisrc** null, align 8
@.str.2 = private unnamed_addr constant [55 x i8] c"trying to override an already setup event channel port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intsrc*)* @xen_intr_pirq_enable_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_intr_pirq_enable_intr(%struct.intsrc* %0) #0 {
  %2 = alloca %struct.intsrc*, align 8
  %3 = alloca %struct.xenisrc*, align 8
  %4 = alloca %struct.evtchn_bind_pirq, align 8
  %5 = alloca %struct.physdev_irq_status_query, align 4
  %6 = alloca i32, align 4
  store %struct.intsrc* %0, %struct.intsrc** %2, align 8
  %7 = load %struct.intsrc*, %struct.intsrc** %2, align 8
  %8 = bitcast %struct.intsrc* %7 to %struct.xenisrc*
  store %struct.xenisrc* %8, %struct.xenisrc** %3, align 8
  %9 = load i32, i32* @xen_intr_pirq_eoi_map_enabled, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %38, label %11

11:                                               ; preds = %1
  %12 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %13 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = getelementptr inbounds %struct.physdev_irq_status_query, %struct.physdev_irq_status_query* %5, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* @PHYSDEVOP_irq_status_query, align 4
  %17 = call i32 @HYPERVISOR_physdev_op(i32 %16, %struct.physdev_irq_status_query* %5)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %11
  %21 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %22 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @panic(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %20, %11
  %26 = getelementptr inbounds %struct.physdev_irq_status_query, %struct.physdev_irq_status_query* %5, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @XENIRQSTAT_needs_eoi, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %25
  %32 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %33 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @xen_intr_pirq_eoi_map, align 4
  %36 = call i32 @xen_set_bit(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %31, %25
  br label %38

38:                                               ; preds = %37, %1
  %39 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %40 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds %struct.evtchn_bind_pirq, %struct.evtchn_bind_pirq* %4, i32 0, i32 2
  store i32 %41, i32* %42, align 4
  %43 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %44 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %50

48:                                               ; preds = %38
  %49 = load i32, i32* @BIND_PIRQ__WILL_SHARE, align 4
  br label %50

50:                                               ; preds = %48, %47
  %51 = phi i32 [ 0, %47 ], [ %49, %48 ]
  %52 = getelementptr inbounds %struct.evtchn_bind_pirq, %struct.evtchn_bind_pirq* %4, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = load i32, i32* @EVTCHNOP_bind_pirq, align 4
  %54 = call i32 @HYPERVISOR_event_channel_op(i32 %53, %struct.evtchn_bind_pirq* %4)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %59 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = getelementptr inbounds %struct.evtchn_bind_pirq, %struct.evtchn_bind_pirq* %4, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %66 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %68 = load %struct.xenisrc**, %struct.xenisrc*** @xen_intr_port_to_isrc, align 8
  %69 = getelementptr inbounds %struct.evtchn_bind_pirq, %struct.evtchn_bind_pirq* %4, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.xenisrc*, %struct.xenisrc** %68, i64 %70
  %72 = load %struct.xenisrc*, %struct.xenisrc** %71, align 8
  %73 = icmp eq %struct.xenisrc* %72, null
  %74 = zext i1 %73 to i32
  %75 = call i32 @KASSERT(i32 %74, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0))
  %76 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %77 = load %struct.xenisrc**, %struct.xenisrc*** @xen_intr_port_to_isrc, align 8
  %78 = getelementptr inbounds %struct.evtchn_bind_pirq, %struct.evtchn_bind_pirq* %4, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = getelementptr inbounds %struct.xenisrc*, %struct.xenisrc** %77, i64 %79
  store %struct.xenisrc* %76, %struct.xenisrc** %80, align 8
  %81 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  %82 = load %struct.xenisrc*, %struct.xenisrc** %3, align 8
  %83 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = call i32 @evtchn_unmask_port(i64 %84)
  ret void
}

declare dso_local i32 @HYPERVISOR_physdev_op(i32, %struct.physdev_irq_status_query*) #1

declare dso_local i32 @panic(i8*, i32) #1

declare dso_local i32 @xen_set_bit(i32, i32) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_pirq*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @evtchn_unmask_port(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
