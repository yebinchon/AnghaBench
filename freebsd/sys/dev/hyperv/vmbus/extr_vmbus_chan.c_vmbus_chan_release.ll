; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_channel = type { i32, %struct.vmbus_softc* }
%struct.vmbus_softc = type { i32 }
%struct.vmbus_chanmsg_chfree = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_msghc = type { i32 }

@.str = private unnamed_addr constant [46 x i8] c"can not get msg hypercall for chfree(chan%u)\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@VMBUS_CHANMSG_TYPE_CHFREE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"chfree(chan%u) msg hypercall exec failed: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [14 x i8] c"chan%u freed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_channel*)* @vmbus_chan_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_chan_release(%struct.vmbus_channel* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vmbus_channel*, align 8
  %4 = alloca %struct.vmbus_softc*, align 8
  %5 = alloca %struct.vmbus_chanmsg_chfree*, align 8
  %6 = alloca %struct.vmbus_msghc*, align 8
  %7 = alloca i32, align 4
  store %struct.vmbus_channel* %0, %struct.vmbus_channel** %3, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 1
  %10 = load %struct.vmbus_softc*, %struct.vmbus_softc** %9, align 8
  store %struct.vmbus_softc* %10, %struct.vmbus_softc** %4, align 8
  %11 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %12 = call %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc* %11, i32 8)
  store %struct.vmbus_msghc* %12, %struct.vmbus_msghc** %6, align 8
  %13 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %6, align 8
  %14 = icmp eq %struct.vmbus_msghc* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %17 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %18 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load i32, i32* @ENXIO, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %1
  %23 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %6, align 8
  %24 = call %struct.vmbus_chanmsg_chfree* @vmbus_msghc_dataptr(%struct.vmbus_msghc* %23)
  store %struct.vmbus_chanmsg_chfree* %24, %struct.vmbus_chanmsg_chfree** %5, align 8
  %25 = load i32, i32* @VMBUS_CHANMSG_TYPE_CHFREE, align 4
  %26 = load %struct.vmbus_chanmsg_chfree*, %struct.vmbus_chanmsg_chfree** %5, align 8
  %27 = getelementptr inbounds %struct.vmbus_chanmsg_chfree, %struct.vmbus_chanmsg_chfree* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %30 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vmbus_chanmsg_chfree*, %struct.vmbus_chanmsg_chfree** %5, align 8
  %33 = getelementptr inbounds %struct.vmbus_chanmsg_chfree, %struct.vmbus_chanmsg_chfree* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %6, align 8
  %35 = call i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %37 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %6, align 8
  %38 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %36, %struct.vmbus_msghc* %37)
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %22
  %42 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %43 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %44 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46)
  br label %58

48:                                               ; preds = %22
  %49 = load i64, i64* @bootverbose, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %53 = load %struct.vmbus_channel*, %struct.vmbus_channel** %3, align 8
  %54 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.vmbus_channel*, i8*, i32, ...) @vmbus_chan_printf(%struct.vmbus_channel* %52, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %55)
  br label %57

57:                                               ; preds = %51, %48
  br label %58

58:                                               ; preds = %57, %41
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %15
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc*, i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i32, ...) #1

declare dso_local %struct.vmbus_chanmsg_chfree* @vmbus_msghc_dataptr(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_exec_noresult(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_put(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
