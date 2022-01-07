; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_connect_vsp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/input/extr_hv_kbdc.c_hv_kbd_connect_vsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.vmbus_xact = type { i32 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"no xact for kbd init\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@HV_KBD_PROTO_REQUEST = common dso_local global i32 0, align 4
@HV_KBD_VER = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_TYPE_INBAND = common dso_local global i32 0, align 4
@VMBUS_CHANPKT_FLAG_RC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fail to send\0A\00", align 1
@HV_KBD_PROTO_RESP_SZ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"hv_kbd init communicate failed\0A\00", align 1
@HV_KBD_PROTO_ACCEPTED = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"hv_kbd protocol request failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"finish connect vsp\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @hv_kbd_connect_vsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hv_kbd_connect_vsp(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.vmbus_xact*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vmbus_xact* @vmbus_xact_get(i32 %11, i32 8)
  store %struct.vmbus_xact* %12, %struct.vmbus_xact** %6, align 8
  %13 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %14 = icmp eq %struct.vmbus_xact* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @device_printf(i32 %18, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENODEV, align 4
  store i32 %20, i32* %2, align 4
  br label %88

21:                                               ; preds = %1
  %22 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %23 = call %struct.TYPE_13__* @vmbus_xact_req_data(%struct.vmbus_xact* %22)
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %7, align 8
  %24 = load i32, i32* @HV_KBD_PROTO_REQUEST, align 4
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @HV_KBD_VER, align 4
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %32 = call i32 @vmbus_xact_activate(%struct.vmbus_xact* %31)
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @VMBUS_CHANPKT_TYPE_INBAND, align 4
  %37 = load i32, i32* @VMBUS_CHANPKT_FLAG_RC, align 4
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %39 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %40 = ptrtoint %struct.vmbus_xact* %39 to i64
  %41 = trunc i64 %40 to i32
  %42 = call i32 @vmbus_chan_send(i32 %35, i32 %36, i32 %37, %struct.TYPE_13__* %38, i32 8, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %21
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @device_printf(i32 %48, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %50 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %51 = call i32 @vmbus_xact_deactivate(%struct.vmbus_xact* %50)
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %88

53:                                               ; preds = %21
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %58 = call %struct.TYPE_12__* @vmbus_chan_xact_wait(i32 %56, %struct.vmbus_xact* %57, i64* %5, i32 1)
  store %struct.TYPE_12__* %58, %struct.TYPE_12__** %8, align 8
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @HV_KBD_PROTO_RESP_SZ, align 8
  %61 = icmp ult i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %67 = load i32, i32* @ENODEV, align 4
  store i32 %67, i32* %4, align 4
  br label %82

68:                                               ; preds = %53
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @HV_KBD_PROTO_ACCEPTED, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %81, label %75

75:                                               ; preds = %68
  %76 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @device_printf(i32 %78, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ENODEV, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %75, %68
  br label %82

82:                                               ; preds = %81, %62
  %83 = load %struct.vmbus_xact*, %struct.vmbus_xact** %6, align 8
  %84 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %86 = call i32 @DEBUG_HVSC(%struct.TYPE_11__* %85, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  %87 = load i32, i32* %4, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %82, %45, %15
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.vmbus_xact* @vmbus_xact_get(i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local %struct.TYPE_13__* @vmbus_xact_req_data(%struct.vmbus_xact*) #1

declare dso_local i32 @vmbus_xact_activate(%struct.vmbus_xact*) #1

declare dso_local i32 @vmbus_chan_send(i32, i32, i32, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @vmbus_xact_deactivate(%struct.vmbus_xact*) #1

declare dso_local %struct.TYPE_12__* @vmbus_chan_xact_wait(i32, %struct.vmbus_xact*, i64*, i32) #1

declare dso_local i32 @vmbus_xact_put(%struct.vmbus_xact*) #1

declare dso_local i32 @DEBUG_HVSC(%struct.TYPE_11__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
