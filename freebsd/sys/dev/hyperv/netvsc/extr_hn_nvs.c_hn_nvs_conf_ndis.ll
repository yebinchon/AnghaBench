; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_conf_ndis.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_hn_nvs.c_hn_nvs_conf_ndis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hn_softc = type { i64, i32, i32 }
%struct.hn_nvs_ndis_conf = type { i32, i64, i32 }

@HN_NVS_TYPE_NDIS_CONF = common dso_local global i32 0, align 4
@ETHER_HDR_LEN = common dso_local global i64 0, align 8
@HN_NVS_NDIS_CONF_VLAN = common dso_local global i32 0, align 4
@HN_NVS_VERSION_5 = common dso_local global i64 0, align 8
@HN_NVS_NDIS_CONF_SRIOV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"send nvs ndis conf failed: %d\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"nvs ndis conf done\0A\00", align 1
@HN_CAP_MTU = common dso_local global i32 0, align 4
@HN_CAP_VLAN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hn_softc*, i32)* @hn_nvs_conf_ndis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hn_nvs_conf_ndis(%struct.hn_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hn_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hn_nvs_ndis_conf, align 8
  %7 = alloca i32, align 4
  store %struct.hn_softc* %0, %struct.hn_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = call i32 @memset(%struct.hn_nvs_ndis_conf* %6, i32 0, i32 24)
  %9 = load i32, i32* @HN_NVS_TYPE_NDIS_CONF, align 4
  %10 = getelementptr inbounds %struct.hn_nvs_ndis_conf, %struct.hn_nvs_ndis_conf* %6, i32 0, i32 2
  store i32 %9, i32* %10, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @ETHER_HDR_LEN, align 8
  %14 = add nsw i64 %12, %13
  %15 = getelementptr inbounds %struct.hn_nvs_ndis_conf, %struct.hn_nvs_ndis_conf* %6, i32 0, i32 1
  store i64 %14, i64* %15, align 8
  %16 = load i32, i32* @HN_NVS_NDIS_CONF_VLAN, align 4
  %17 = getelementptr inbounds %struct.hn_nvs_ndis_conf, %struct.hn_nvs_ndis_conf* %6, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %19 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @HN_NVS_VERSION_5, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load i32, i32* @HN_NVS_NDIS_CONF_SRIOV, align 4
  %25 = getelementptr inbounds %struct.hn_nvs_ndis_conf, %struct.hn_nvs_ndis_conf* %6, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %24
  store i32 %27, i32* %25, align 8
  br label %28

28:                                               ; preds = %23, %2
  %29 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %30 = call i32 @hn_nvs_req_send(%struct.hn_softc* %29, %struct.hn_nvs_ndis_conf* %6, i32 24)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %35 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 (i32, i8*, ...) @if_printf(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %7, align 4
  store i32 %39, i32* %3, align 4
  br label %56

40:                                               ; preds = %28
  %41 = load i64, i64* @bootverbose, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %45 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @if_printf(i32 %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %48

48:                                               ; preds = %43, %40
  %49 = load i32, i32* @HN_CAP_MTU, align 4
  %50 = load i32, i32* @HN_CAP_VLAN, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.hn_softc*, %struct.hn_softc** %4, align 8
  %53 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %48, %33
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @memset(%struct.hn_nvs_ndis_conf*, i32, i32) #1

declare dso_local i32 @hn_nvs_req_send(%struct.hn_softc*, %struct.hn_nvs_ndis_conf*, i32) #1

declare dso_local i32 @if_printf(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
