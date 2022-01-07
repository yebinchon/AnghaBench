; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_bind_virq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_bind_virq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i64, i32, i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.evtchn_bind_virq = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EVTCHNOP_bind_virq = common dso_local global i32 0, align 4
@EVTCHN_TYPE_VIRQ = common dso_local global i32 0, align 4
@EVTCHNOP_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EVTCHNOP_close failed\00", align 1
@cpu_apic_ids = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_intr_bind_virq(i32 %0, i64 %1, i64 %2, i32 %3, i32 %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.xenisrc*, align 8
  %20 = alloca %struct.evtchn_bind_virq, align 8
  %21 = alloca i32, align 4
  %22 = alloca %struct.evtchn_bind_virq, align 8
  store i32 %0, i32* %10, align 4
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %23 = load i64, i64* %12, align 8
  %24 = call %struct.TYPE_4__* @pcpu_find(i64 %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %20, i32 0, i32 0
  %28 = load i64, i64* %11, align 8
  store i64 %28, i64* %27, align 8
  %29 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %20, i32 0, i32 1
  %30 = load i32, i32* %18, align 4
  store i32 %30, i32* %29, align 8
  %31 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %20, i32 0, i32 2
  store i32 0, i32* %31, align 4
  store %struct.xenisrc* null, %struct.xenisrc** %19, align 8
  %32 = load i32, i32* @EVTCHNOP_bind_virq, align 4
  %33 = call i32 @HYPERVISOR_event_channel_op(i32 %32, %struct.evtchn_bind_virq* %20)
  store i32 %33, i32* %21, align 4
  %34 = load i32, i32* %21, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %8
  %37 = load i32, i32* %21, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %9, align 4
  br label %75

39:                                               ; preds = %8
  %40 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %20, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EVTCHN_TYPE_VIRQ, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @device_get_nameunit(i32 %43)
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %14, align 4
  %47 = load i8*, i8** %15, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32*, i32** %17, align 8
  %50 = call i32 @xen_intr_bind_isrc(%struct.xenisrc** %19, i32 %41, i32 %42, i32 %44, i32 %45, i32 %46, i8* %47, i32 %48, i32* %49)
  store i32 %50, i32* %21, align 4
  %51 = load i32, i32* %21, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %69

53:                                               ; preds = %39
  %54 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %22, i32 0, i32 0
  store i64 0, i64* %54, align 8
  %55 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %22, i32 0, i32 1
  store i32 0, i32* %55, align 8
  %56 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %22, i32 0, i32 2
  %57 = getelementptr inbounds %struct.evtchn_bind_virq, %struct.evtchn_bind_virq* %20, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %56, align 4
  %59 = load i32*, i32** %17, align 8
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @xen_intr_unbind(i32 %60)
  %62 = load i32, i32* @EVTCHNOP_close, align 4
  %63 = call i32 @HYPERVISOR_event_channel_op(i32 %62, %struct.evtchn_bind_virq* %22)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %67

67:                                               ; preds = %65, %53
  %68 = load i32, i32* %21, align 4
  store i32 %68, i32* %9, align 4
  br label %75

69:                                               ; preds = %39
  %70 = load %struct.xenisrc*, %struct.xenisrc** %19, align 8
  %71 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %70, i32 0, i32 1
  store i32 1, i32* %71, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.xenisrc*, %struct.xenisrc** %19, align 8
  %74 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %73, i32 0, i32 2
  store i64 %72, i64* %74, align 8
  store i32 0, i32* %9, align 4
  br label %75

75:                                               ; preds = %69, %67, %36
  %76 = load i32, i32* %9, align 4
  ret i32 %76
}

declare dso_local %struct.TYPE_4__* @pcpu_find(i64) #1

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_virq*) #1

declare dso_local i32 @xen_intr_bind_isrc(%struct.xenisrc**, i32, i32, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

declare dso_local i32 @xen_intr_unbind(i32) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
