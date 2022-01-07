; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_evintr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/vmxnet3/extr_if_vmx.c_vmxnet3_evintr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vmxnet3_softc = type { %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.vmxnet3_rxq_shared* }
%struct.vmxnet3_rxq_shared = type { i64, i32 }
%struct.TYPE_5__ = type { %struct.vmxnet3_txq_shared* }
%struct.vmxnet3_txq_shared = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }

@VMXNET3_BAR1_EVENT = common dso_local global i32 0, align 4
@VMXNET3_EVENT_LINK = common dso_local global i32 0, align 4
@VMXNET3_EVENT_TQERROR = common dso_local global i32 0, align 4
@VMXNET3_EVENT_RQERROR = common dso_local global i32 0, align 4
@VMXNET3_CMD_GET_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Tx queue error %#x\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Rx queue error %#x\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Rx/Tx queue error event ... waiting for iflib watchdog reset\0A\00", align 1
@VMXNET3_EVENT_DIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [36 x i8] c"device implementation change event\0A\00", align 1
@VMXNET3_EVENT_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"debug event\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vmxnet3_softc*)* @vmxnet3_evintr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_evintr(%struct.vmxnet3_softc* %0) #0 {
  %2 = alloca %struct.vmxnet3_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.vmxnet3_txq_shared*, align 8
  %5 = alloca %struct.vmxnet3_rxq_shared*, align 8
  %6 = alloca i32, align 4
  store %struct.vmxnet3_softc* %0, %struct.vmxnet3_softc** %2, align 8
  %7 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %3, align 4
  %10 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %11 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %6, align 4
  %15 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %16 = load i32, i32* @VMXNET3_BAR1_EVENT, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc* %15, i32 %16, i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @VMXNET3_EVENT_LINK, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %25 = call i32 @vmxnet3_link_status(%struct.vmxnet3_softc* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @VMXNET3_EVENT_TQERROR, align 4
  %29 = load i32, i32* @VMXNET3_EVENT_RQERROR, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %73

33:                                               ; preds = %26
  %34 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %35 = load i32, i32* @VMXNET3_CMD_GET_STATUS, align 4
  %36 = call i32 @vmxnet3_read_cmd(%struct.vmxnet3_softc* %34, i32 %35)
  %37 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %41, align 8
  store %struct.vmxnet3_txq_shared* %42, %struct.vmxnet3_txq_shared** %4, align 8
  %43 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %4, align 8
  %44 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %33
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.vmxnet3_txq_shared*, %struct.vmxnet3_txq_shared** %4, align 8
  %50 = getelementptr inbounds %struct.vmxnet3_txq_shared, %struct.vmxnet3_txq_shared* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 (i32, i8*, ...) @device_printf(i32 %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %47, %33
  %54 = load %struct.vmxnet3_softc*, %struct.vmxnet3_softc** %2, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_softc, %struct.vmxnet3_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %58, align 8
  store %struct.vmxnet3_rxq_shared* %59, %struct.vmxnet3_rxq_shared** %5, align 8
  %60 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %5, align 8
  %61 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %53
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.vmxnet3_rxq_shared*, %struct.vmxnet3_rxq_shared** %5, align 8
  %67 = getelementptr inbounds %struct.vmxnet3_rxq_shared, %struct.vmxnet3_rxq_shared* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 (i32, i8*, ...) @device_printf(i32 %65, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %64, %53
  %71 = load i32, i32* %3, align 4
  %72 = call i32 (i32, i8*, ...) @device_printf(i32 %71, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %70, %26
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @VMXNET3_EVENT_DIC, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %3, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %81

81:                                               ; preds = %78, %73
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @VMXNET3_EVENT_DEBUG, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* %3, align 4
  %88 = call i32 (i32, i8*, ...) @device_printf(i32 %87, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  br label %89

89:                                               ; preds = %86, %81
  ret void
}

declare dso_local i32 @vmxnet3_write_bar1(%struct.vmxnet3_softc*, i32, i32) #1

declare dso_local i32 @vmxnet3_link_status(%struct.vmxnet3_softc*) #1

declare dso_local i32 @vmxnet3_read_cmd(%struct.vmxnet3_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
