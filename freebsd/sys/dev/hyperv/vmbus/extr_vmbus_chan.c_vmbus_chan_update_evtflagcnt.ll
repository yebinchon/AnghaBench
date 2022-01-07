; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_update_evtflagcnt.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus_chan.c_vmbus_chan_update_evtflagcnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { i32 }
%struct.vmbus_channel = type { i32, i32 }

@VMBUS_EVTFLAG_LEN = common dso_local global i32 0, align 4
@event_flags_cnt = common dso_local global i32 0, align 4
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"chan%u update cpu%d flag_cnt to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmbus_softc*, %struct.vmbus_channel*)* @vmbus_chan_update_evtflagcnt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmbus_chan_update_evtflagcnt(%struct.vmbus_softc* %0, %struct.vmbus_channel* %1) #0 {
  %3 = alloca %struct.vmbus_softc*, align 8
  %4 = alloca %struct.vmbus_channel*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %3, align 8
  store %struct.vmbus_channel* %1, %struct.vmbus_channel** %4, align 8
  %8 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %9 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VMBUS_EVTFLAG_LEN, align 4
  %12 = sdiv i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* %6, align 4
  %14 = load %struct.vmbus_softc*, %struct.vmbus_softc** %3, align 8
  %15 = load i32, i32* @event_flags_cnt, align 4
  %16 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %17 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32* @VMBUS_PCPU_PTR(%struct.vmbus_softc* %14, i32 %15, i32 %18)
  store i32* %19, i32** %5, align 8
  br label %20

20:                                               ; preds = %47, %2
  %21 = load i32*, i32** %5, align 8
  %22 = load volatile i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp sge i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %48

27:                                               ; preds = %20
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i64 @atomic_cmpset_int(i32* %28, i32 %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %27
  %34 = load i64, i64* @bootverbose, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %33
  %37 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %38 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %39 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.vmbus_channel*, %struct.vmbus_channel** %4, align 8
  %42 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @vmbus_chan_printf(%struct.vmbus_channel* %37, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %44)
  br label %46

46:                                               ; preds = %36, %33
  br label %48

47:                                               ; preds = %27
  br label %20

48:                                               ; preds = %46, %26
  ret void
}

declare dso_local i32* @VMBUS_PCPU_PTR(%struct.vmbus_softc*, i32, i32) #1

declare dso_local i64 @atomic_cmpset_int(i32*, i32, i32) #1

declare dso_local i32 @vmbus_chan_printf(%struct.vmbus_channel*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
