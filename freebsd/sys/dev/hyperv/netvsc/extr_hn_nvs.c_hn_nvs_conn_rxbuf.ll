; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_conn_rxbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_conn_rxbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i32, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.vmbus_xact = type { i32 }
%struct.hn_nvs_rxbuf_conn = type { i32, i32, i32 }
%struct.hn_nvs_rxbuf_connresp = type { i32 }

@HN_NVS_VERSION_2 = common dso_local global i64 0, align 8
@HN_RXBUF_SIZE_COMPAT = common dso_local global i32 0, align 4
@HN_RXBUF_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"rxbuf gpadl conn failed: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"no xact for nvs rxbuf conn\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@HN_NVS_TYPE_RXBUF_CONN = common dso_local global i32 0, align 4
@HN_NVS_RXBUF_SIG = common dso_local global i32 0, align 4
@HN_NVS_TYPE_RXBUF_CONNRESP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"exec nvs rxbuf conn failed\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@HN_NVS_STATUS_OK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"nvs rxbuf conn failed: %x\0A\00", align 1
@HN_FLAG_RXBUF_CONNECTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*)* @hn_nvs_conn_rxbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_nvs_conn_rxbuf(%struct.hn_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.vmbus_xact*, align 8
  %5 = alloca %struct.hn_nvs_rxbuf_conn*, align 8
  %6 = alloca %struct.hn_nvs_rxbuf_connresp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %3, align 8
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %4, align 8
  %11 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @HN_NVS_VERSION_2, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @HN_RXBUF_SIZE_COMPAT, align 4
  store i32 %17, i32* %10, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @HN_RXBUF_SIZE, align 4
  store i32 %19, i32* %10, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %22 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %25 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %24, i32 0, i32 5
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 3
  %31 = call i32 @vmbus_chan_gpadl_connect(i32 %23, i32 %27, i32 %28, i32* %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %20
  %35 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %36 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 (i32, i8*, ...) @if_printf(i32 %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %102

40:                                               ; preds = %20
  %41 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %42 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.vmbus_xact* @vmbus_xact_get(i32 %43, i32 12)
  store %struct.vmbus_xact* %44, %struct.vmbus_xact** %4, align 8
  %45 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %46 = icmp eq %struct.vmbus_xact* %45, null
  br i1 %46, label %47, label %53

47:                                               ; preds = %40
  %48 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %49 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i32, i8*, ...) @if_printf(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENXIO, align 4
  store i32 %52, i32* %9, align 4
  br label %102

53:                                               ; preds = %40
  %54 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %55 = call %struct.hn_nvs_rxbuf_conn* @vmbus_xact_req_data(%struct.vmbus_xact* %54)
  store %struct.hn_nvs_rxbuf_conn* %55, %struct.hn_nvs_rxbuf_conn** %5, align 8
  %56 = load i32, i32* @HN_NVS_TYPE_RXBUF_CONN, align 4
  %57 = load %struct.hn_nvs_rxbuf_conn*, %struct.hn_nvs_rxbuf_conn** %5, align 8
  %58 = getelementptr inbounds %struct.hn_nvs_rxbuf_conn, %struct.hn_nvs_rxbuf_conn* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %60 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.hn_nvs_rxbuf_conn*, %struct.hn_nvs_rxbuf_conn** %5, align 8
  %63 = getelementptr inbounds %struct.hn_nvs_rxbuf_conn, %struct.hn_nvs_rxbuf_conn* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @HN_NVS_RXBUF_SIG, align 4
  %65 = load %struct.hn_nvs_rxbuf_conn*, %struct.hn_nvs_rxbuf_conn** %5, align 8
  %66 = getelementptr inbounds %struct.hn_nvs_rxbuf_conn, %struct.hn_nvs_rxbuf_conn* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 4
  store i64 4, i64* %7, align 8
  %67 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %68 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %69 = load %struct.hn_nvs_rxbuf_conn*, %struct.hn_nvs_rxbuf_conn** %5, align 8
  %70 = load i32, i32* @HN_NVS_TYPE_RXBUF_CONNRESP, align 4
  %71 = call %struct.hn_nvs_rxbuf_connresp* @hn_nvs_xact_execute(%struct.hn_softc* %67, %struct.vmbus_xact* %68, %struct.hn_nvs_rxbuf_conn* %69, i32 12, i64* %7, i32 %70)
  store %struct.hn_nvs_rxbuf_connresp* %71, %struct.hn_nvs_rxbuf_connresp** %6, align 8
  %72 = load %struct.hn_nvs_rxbuf_connresp*, %struct.hn_nvs_rxbuf_connresp** %6, align 8
  %73 = icmp eq %struct.hn_nvs_rxbuf_connresp* %72, null
  br i1 %73, label %74, label %80

74:                                               ; preds = %53
  %75 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %76 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 (i32, i8*, ...) @if_printf(i32 %77, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  store i32 %79, i32* %9, align 4
  br label %102

80:                                               ; preds = %53
  %81 = load %struct.hn_nvs_rxbuf_connresp*, %struct.hn_nvs_rxbuf_connresp** %6, align 8
  %82 = getelementptr inbounds %struct.hn_nvs_rxbuf_connresp, %struct.hn_nvs_rxbuf_connresp* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %8, align 4
  %84 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %85 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %84)
  store %struct.vmbus_xact* null, %struct.vmbus_xact** %4, align 8
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @HN_NVS_STATUS_OK, align 4
  %88 = icmp ne i32 %86, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %80
  %90 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %91 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %8, align 4
  %94 = call i32 (i32, i8*, ...) @if_printf(i32 %92, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EIO, align 4
  store i32 %95, i32* %9, align 4
  br label %102

96:                                               ; preds = %80
  %97 = load i32, i32* @HN_FLAG_RXBUF_CONNECTED, align 4
  %98 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %99 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 8
  store i32 0, i32* %2, align 4
  br label %112

102:                                              ; preds = %89, %74, %47, %34
  %103 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %104 = icmp ne %struct.vmbus_xact* %103, null
  br i1 %104, label %105, label %108

105:                                              ; preds = %102
  %106 = load %struct.vmbus_xact*, %struct.vmbus_xact** %4, align 8
  %107 = call i32 @vmbus_xact_put(%struct.vmbus_xact* %106)
  br label %108

108:                                              ; preds = %105, %102
  %109 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %110 = call i32 @hn_nvs_disconn_rxbuf(%struct.hn_softc* %109)
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %2, align 4
  br label %112

112:                                              ; preds = %108, %96
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @vmbus_chan_gpadl_connect(i32, i32, i32, i32*) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

declare dso_local %struct.vmbus_xact* @vmbus_xact_get(i32, i32) #1

declare dso_local %struct.hn_nvs_rxbuf_conn* @vmbus_xact_req_data(%struct.vmbus_xact*) #1

declare dso_local %struct.hn_nvs_rxbuf_connresp* @hn_nvs_xact_execute(%struct.hn_softc*, %struct.vmbus_xact*, %struct.hn_nvs_rxbuf_conn*, i32, i64*, i32) #1

declare dso_local i32 @vmbus_xact_put(%struct.vmbus_xact*) #1

declare dso_local i32 @hn_nvs_disconn_rxbuf(%struct.hn_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
