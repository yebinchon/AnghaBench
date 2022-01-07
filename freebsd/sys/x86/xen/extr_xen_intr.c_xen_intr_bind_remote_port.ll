; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_bind_remote_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/xen/extr_xen_intr.c_xen_intr_bind_remote_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenisrc = type { i32 }
%struct.evtchn_bind_interdomain = type { i32, i32, i8*, i8* }

@EVTCHNOP_bind_interdomain = common dso_local global i32 0, align 4
@EVTCHN_TYPE_PORT = common dso_local global i32 0, align 4
@EVTCHNOP_close = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"EVTCHNOP_close failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_intr_bind_remote_port(i32 %0, i8* %1, i8* %2, i32 %3, i32 %4, i8* %5, i32 %6, i32* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.xenisrc*, align 8
  %19 = alloca %struct.evtchn_bind_interdomain, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.evtchn_bind_interdomain, align 8
  store i32 %0, i32* %10, align 4
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %19, i32 0, i32 3
  store i8* %22, i8** %23, align 8
  %24 = load i8*, i8** %12, align 8
  %25 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %19, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load i32, i32* @EVTCHNOP_bind_interdomain, align 4
  %27 = call i32 @HYPERVISOR_event_channel_op(i32 %26, %struct.evtchn_bind_interdomain* %19)
  store i32 %27, i32* %20, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %8
  %31 = load i32, i32* %20, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %9, align 4
  br label %62

33:                                               ; preds = %8
  %34 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %19, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @EVTCHN_TYPE_PORT, align 4
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @device_get_nameunit(i32 %37)
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i8*, i8** %15, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load i32*, i32** %17, align 8
  %44 = call i32 @xen_intr_bind_isrc(%struct.xenisrc** %18, i32 %35, i32 %36, i32 %38, i32 %39, i32 %40, i8* %41, i32 %42, i32* %43)
  store i32 %44, i32* %20, align 4
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %33
  %48 = bitcast %struct.evtchn_bind_interdomain* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %48, i8 0, i64 24, i1 false)
  %49 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %21, i32 0, i32 0
  %50 = getelementptr inbounds %struct.evtchn_bind_interdomain, %struct.evtchn_bind_interdomain* %19, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @EVTCHNOP_close, align 4
  %53 = call i32 @HYPERVISOR_event_channel_op(i32 %52, %struct.evtchn_bind_interdomain* %21)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = call i32 @panic(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %55, %47
  %58 = load i32, i32* %20, align 4
  store i32 %58, i32* %9, align 4
  br label %62

59:                                               ; preds = %33
  %60 = load %struct.xenisrc*, %struct.xenisrc** %18, align 8
  %61 = getelementptr inbounds %struct.xenisrc, %struct.xenisrc* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  store i32 0, i32* %9, align 4
  br label %62

62:                                               ; preds = %59, %57, %30
  %63 = load i32, i32* %9, align 4
  ret i32 %63
}

declare dso_local i32 @HYPERVISOR_event_channel_op(i32, %struct.evtchn_bind_interdomain*) #1

declare dso_local i32 @xen_intr_bind_isrc(%struct.xenisrc**, i32, i32, i32, i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @device_get_nameunit(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
