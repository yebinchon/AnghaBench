; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_alloc_and_bind_local_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_alloc_and_bind_local_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i32 }
%struct.evtchn_alloc_unbound = type { i32, i32, i32 }

@DOMID_SELF = common dso_local global i32 0, align 4
@EVTCHNOP_alloc_unbound = common dso_local global i32 0, align 4
@EVTCHN_TYPE_PORT = common dso_local global i32 0, align 4
@EVTCHNOP_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EVTCHNOP_close failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_intr_alloc_and_bind_local_port(i32 %0, i32 %1, i32 %2, i32 %3, i8* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca %struct.xenisrc*, align 8
  %17 = alloca %struct.evtchn_alloc_unbound, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.evtchn_alloc_unbound, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  %20 = load i32, i32* @DOMID_SELF, align 4
  %21 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %17, i32 0, i32 2
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* %10, align 4
  %23 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %17, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* @EVTCHNOP_alloc_unbound, align 4
  %25 = call i32 @HYPERVISOR_event_channel_op(i32 %24, %struct.evtchn_alloc_unbound* %17)
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* %18, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* %18, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %61

31:                                               ; preds = %7
  %32 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %17, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @EVTCHN_TYPE_PORT, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @device_get_nameunit(i32 %35)
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = load i8*, i8** %13, align 8
  %40 = load i32, i32* %14, align 4
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @xen_intr_bind_isrc(%struct.xenisrc** %16, i32 %33, i32 %34, i32 %36, i32 %37, i32 %38, i8* %39, i32 %40, i32* %41)
  store i32 %42, i32* %18, align 4
  %43 = load i32, i32* %18, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %58

45:                                               ; preds = %31
  %46 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %19, i32 0, i32 0
  %47 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %17, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %46, align 4
  %49 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %19, i32 0, i32 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds %struct.evtchn_alloc_unbound, %struct.evtchn_alloc_unbound* %19, i32 0, i32 2
  store i32 0, i32* %50, align 4
  %51 = load i32, i32* @EVTCHNOP_close, align 4
  %52 = call i32 @HYPERVISOR_event_channel_op(i32 %51, %struct.evtchn_alloc_unbound* %19)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %45
  %57 = load i32, i32* %18, align 4
  store i32 %57, i32* %8, align 4
  br label %61

58:                                               ; preds = %31
  %59 = load %struct.xenisrc*, %struct.xenisrc** %16, align 8
  %60 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %59, i32 0, i32 0
  store i32 1, i32* %60, align 4
  store i32 0, i32* %8, align 4
  br label %61

61:                                               ; preds = %58, %56, %28
  %62 = load i32, i32* %8, align 4
  ret i32 %62
}

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_alloc_unbound*) #1

declare dso_local i32 @xen_intr_bind_isrc(%struct.xenisrc**, i32, i32, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
