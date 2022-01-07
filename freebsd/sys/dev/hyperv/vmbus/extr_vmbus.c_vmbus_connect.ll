; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_connect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/vmbus/extr_vmbus.c_vmbus_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmbus_softc = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.vmbus_chanmsg_connect = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.vmbus_message = type { i64 }
%struct.vmbus_msghc = type { i32 }
%struct.vmbus_chanmsg_connect_resp = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@VMBUS_CHANMSG_TYPE_CONNECT = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vmbus_softc*, i32)* @vmbus_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmbus_connect(%struct.vmbus_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmbus_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vmbus_chanmsg_connect*, align 8
  %7 = alloca %struct.vmbus_message*, align 8
  %8 = alloca %struct.vmbus_msghc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vmbus_softc* %0, %struct.vmbus_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %12 = call %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc* %11, i32 20)
  store %struct.vmbus_msghc* %12, %struct.vmbus_msghc** %8, align 8
  %13 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %8, align 8
  %14 = icmp eq %struct.vmbus_msghc* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @ENXIO, align 4
  store i32 %16, i32* %3, align 4
  br label %75

17:                                               ; preds = %2
  %18 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %8, align 8
  %19 = call %struct.vmbus_chanmsg_connect* @vmbus_msghc_dataptr(%struct.vmbus_msghc* %18)
  store %struct.vmbus_chanmsg_connect* %19, %struct.vmbus_chanmsg_connect** %6, align 8
  %20 = load i32, i32* @VMBUS_CHANMSG_TYPE_CONNECT, align 4
  %21 = load %struct.vmbus_chanmsg_connect*, %struct.vmbus_chanmsg_connect** %6, align 8
  %22 = getelementptr inbounds %struct.vmbus_chanmsg_connect, %struct.vmbus_chanmsg_connect* %21, i32 0, i32 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.vmbus_chanmsg_connect*, %struct.vmbus_chanmsg_connect** %6, align 8
  %26 = getelementptr inbounds %struct.vmbus_chanmsg_connect, %struct.vmbus_chanmsg_connect* %25, i32 0, i32 3
  store i32 %24, i32* %26, align 4
  %27 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %28 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.vmbus_chanmsg_connect*, %struct.vmbus_chanmsg_connect** %6, align 8
  %32 = getelementptr inbounds %struct.vmbus_chanmsg_connect, %struct.vmbus_chanmsg_connect* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %34 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vmbus_chanmsg_connect*, %struct.vmbus_chanmsg_connect** %6, align 8
  %38 = getelementptr inbounds %struct.vmbus_chanmsg_connect, %struct.vmbus_chanmsg_connect* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %40 = getelementptr inbounds %struct.vmbus_softc, %struct.vmbus_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.vmbus_chanmsg_connect*, %struct.vmbus_chanmsg_connect** %6, align 8
  %44 = getelementptr inbounds %struct.vmbus_chanmsg_connect, %struct.vmbus_chanmsg_connect* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %46 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %8, align 8
  %47 = call i32 @vmbus_msghc_exec(%struct.vmbus_softc* %45, %struct.vmbus_msghc* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %17
  %51 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %52 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %8, align 8
  %53 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %51, %struct.vmbus_msghc* %52)
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %3, align 4
  br label %75

55:                                               ; preds = %17
  %56 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %57 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %8, align 8
  %58 = call %struct.vmbus_message* @vmbus_msghc_wait_result(%struct.vmbus_softc* %56, %struct.vmbus_msghc* %57)
  store %struct.vmbus_message* %58, %struct.vmbus_message** %7, align 8
  %59 = load %struct.vmbus_message*, %struct.vmbus_message** %7, align 8
  %60 = getelementptr inbounds %struct.vmbus_message, %struct.vmbus_message* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.vmbus_chanmsg_connect_resp*
  %63 = getelementptr inbounds %struct.vmbus_chanmsg_connect_resp, %struct.vmbus_chanmsg_connect_resp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %10, align 4
  %65 = load %struct.vmbus_softc*, %struct.vmbus_softc** %4, align 8
  %66 = load %struct.vmbus_msghc*, %struct.vmbus_msghc** %8, align 8
  %67 = call i32 @vmbus_msghc_put(%struct.vmbus_softc* %65, %struct.vmbus_msghc* %66)
  %68 = load i32, i32* %10, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %55
  br label %73

71:                                               ; preds = %55
  %72 = load i32, i32* @EOPNOTSUPP, align 4
  br label %73

73:                                               ; preds = %71, %70
  %74 = phi i32 [ 0, %70 ], [ %72, %71 ]
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %50, %15
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.vmbus_msghc* @vmbus_msghc_get(%struct.vmbus_softc*, i32) #1

declare dso_local %struct.vmbus_chanmsg_connect* @vmbus_msghc_dataptr(%struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_exec(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local i32 @vmbus_msghc_put(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

declare dso_local %struct.vmbus_message* @vmbus_msghc_wait_result(%struct.vmbus_softc*, %struct.vmbus_msghc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
