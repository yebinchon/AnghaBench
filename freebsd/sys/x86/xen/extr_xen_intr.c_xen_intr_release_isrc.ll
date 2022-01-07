; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_release_isrc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_release_isrc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i64, i64, i32*, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.evtchn_close = type { i64 }

@xen_intr_isrc_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Release called, but xenisrc still in use\00", align 1
@EVTCHNOP_close = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"EVTCHNOP_close failed\00", align 1
@xen_intr_port_to_isrc = common dso_local global i32** null, align 8
@EVTCHN_TYPE_UNBOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xenisrc*)* @xen_intr_release_isrc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xen_intr_release_isrc(%struct.xenisrc* %0) #0 {
  %2 = alloca %struct.xenisrc*, align 8
  %3 = alloca %struct.evtchn_close, align 8
  store %struct.xenisrc* %0, %struct.xenisrc** %2, align 8
  %4 = call i32 @mtx_lock(i32* @xen_intr_isrc_lock)
  %5 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %6 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %5, i32 0, i32 5
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %13 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @evtchn_mask_port(i64 %14)
  %16 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %17 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @evtchn_clear_port(i64 %18)
  %20 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %21 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %24 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @evtchn_cpu_mask_port(i64 %22, i64 %25)
  %27 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %28 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @evtchn_cpu_unmask_port(i32 0, i64 %29)
  %31 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %32 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %1
  %36 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %37 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @is_valid_evtchn(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %35
  %42 = getelementptr inbounds %struct.evtchn_close, %struct.evtchn_close* %3, i32 0, i32 0
  %43 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %44 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  store i64 %45, i64* %42, align 8
  %46 = load i32, i32* @EVTCHNOP_close, align 4
  %47 = call i64 @HYPERVISOR_event_channel_op(i32 %46, %struct.evtchn_close* %3)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %51

51:                                               ; preds = %49, %41
  br label %52

52:                                               ; preds = %51, %35, %1
  %53 = load i32**, i32*** @xen_intr_port_to_isrc, align 8
  %54 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %55 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds i32*, i32** %53, i64 %56
  store i32* null, i32** %57, align 8
  %58 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %59 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %58, i32 0, i32 4
  store i64 0, i64* %59, align 8
  %60 = load i32, i32* @EVTCHN_TYPE_UNBOUND, align 4
  %61 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %62 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 8
  %63 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %64 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.xenisrc*, %struct.xenisrc** %2, align 8
  %66 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %65, i32 0, i32 2
  store i32* null, i32** %66, align 8
  %67 = call i32 @mtx_unlock(i32* @xen_intr_isrc_lock)
  ret i32 0
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @evtchn_mask_port(i64) #1

declare dso_local i32 @evtchn_clear_port(i64) #1

declare dso_local i32 @evtchn_cpu_mask_port(i64, i64) #1

declare dso_local i32 @evtchn_cpu_unmask_port(i32, i64) #1

declare dso_local i64 @is_valid_evtchn(i64) #1

declare dso_local i64 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_close*) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
