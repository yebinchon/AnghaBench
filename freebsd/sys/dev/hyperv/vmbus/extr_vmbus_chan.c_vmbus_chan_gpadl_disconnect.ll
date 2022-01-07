; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_gpadl_disconnect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_gpadl_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, %struct.vmbus_softc* }
%struct.vmbus_softc = type { i32 }
%struct.vmbus_msghc = type { i32 }
%struct.vmbus_chanmsg_gpadl_disconn = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"GPADL is zero\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"can not get msg hypercall for gpadl_disconn(chan%u)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@VMBUS_CHANMSG_TYPE_GPADL_DISCONN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [61 x i8] c"gpadl_disconn(revoked chan%u) msg hypercall exec failed: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [53 x i8] c"gpadl_disconn(chan%u) msg hypercall exec failed: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vmbus_chan_gpadl_disconnect(%struct.vmbus_channel* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmbus_softc*, align 8
  %7 = alloca %struct.vmbus_msghc*, align 8
  %8 = alloca %struct.vmbus_chanmsg_gpadl_disconn*, align 8
  %9 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %11 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %10, i32 0, i32 1
  %12 = load %struct.vmbus_softc*, %struct.vmbus_softc** %11, align 8
  store %struct.vmbus_softc* %12, %struct.vmbus_softc** %6, align 8
  %13 = load i64, i64* %5, align 8
  %14 = icmp ne i64 %13, 0
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vmbus_softc*, %struct.vmbus_softc** %6, align 8
  %18 = call %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc* %17, i32 16)
  store %struct.vmbus_msghc* %18, %struct.vmbus_msghc** %7, align 8
  %19 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %7, align 8
  %20 = icmp eq %struct.vmbus_msghc* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %24 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %22, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @EBUSY, align 4
  store i32 %27, i32* %3, align 4
  br label %77

28:                                               ; preds = %2
  %29 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %7, align 8
  %30 = call %struct.vmbus_chanmsg_gpadl_disconn* @vmbus_msghc_dataptr(%struct.vmbus_msghc* %29)
  store %struct.vmbus_chanmsg_gpadl_disconn* %30, %struct.vmbus_chanmsg_gpadl_disconn** %8, align 8
  %31 = load i32, i32* @VMBUS_CHANMSG_TYPE_GPADL_DISCONN, align 4
  %32 = load %struct.vmbus_chanmsg_gpadl_disconn*, %struct.vmbus_chanmsg_gpadl_disconn** %8, align 8
  %33 = getelementptr inbounds %struct.vmbus_chanmsg_gpadl_disconn, %struct.vmbus_chanmsg_gpadl_disconn* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %31, i32* %34, align 4
  %35 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %36 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.vmbus_chanmsg_gpadl_disconn*, %struct.vmbus_chanmsg_gpadl_disconn** %8, align 8
  %39 = getelementptr inbounds %struct.vmbus_chanmsg_gpadl_disconn, %struct.vmbus_chanmsg_gpadl_disconn* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.vmbus_chanmsg_gpadl_disconn*, %struct.vmbus_chanmsg_gpadl_disconn** %8, align 8
  %42 = getelementptr inbounds %struct.vmbus_chanmsg_gpadl_disconn, %struct.vmbus_chanmsg_gpadl_disconn* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.vmbus_softc*, %struct.vmbus_softc** %6, align 8
  %44 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %7, align 8
  %45 = call i32 @vmbus_msghc_exec(%struct.vmbus_softc* %43, %struct.vmbus_msghc* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %70

48:                                               ; preds = %28
  %49 = load %struct.vmbus_softc*, %struct.vmbus_softc** %6, align 8
  %50 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %7, align 8
  %51 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %49, %struct.vmbus_msghc* %50)
  %52 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %53 = call i64 @vmbus_chan_wait_revoke(%struct.vmbus_channel* %52, i32 1)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %48
  %56 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %57 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %58 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %56, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60)
  store i32 0, i32* %3, align 4
  br label %77

62:                                               ; preds = %48
  %63 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %64 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %65 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %63, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* %9, align 4
  store i32 %69, i32* %3, align 4
  br label %77

70:                                               ; preds = %28
  %71 = load %struct.vmbus_softc*, %struct.vmbus_softc** %6, align 8
  %72 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %7, align 8
  %73 = call i32 @vmbus_msghc_wait_result(%struct.vmbus_softc* %71, %struct.vmbus_msghc* %72)
  %74 = load %struct.vmbus_softc*, %struct.vmbus_softc** %6, align 8
  %75 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %7, align 8
  %76 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %74, %struct.vmbus_msghc* %75)
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %62, %55, %21
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc*, i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i32, ...) #1

declare dso_local %struct.vmbus_chanmsg_gpadl_disconn* @vmbus_msghc_dataptr(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_exec(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_put(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local i64 @vmbus_chan_wait_revoke(%struct.vmbus_channel*, i32) #1

declare dso_local i32 @vmbus_msghc_wait_result(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
