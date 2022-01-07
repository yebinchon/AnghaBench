; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64lsn_control.c_nat64lsn_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.ipfw_nat64lsn_stats = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.nat64lsn_cfg = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@IPFW_TLV_COUNTERS = common dso_local global i32 0, align 4
@IPFW_NAT64_VERSION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nat64lsn_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nat64lsn_stats(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.ipfw_nat64lsn_stats, align 8
  %9 = alloca %struct.nat64lsn_cfg*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.ipfw_nat64lsn_stats*, align 8
  %12 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i64 72, i64* %12, align 8
  %13 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %14 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sext i32 %15 to i64
  %17 = urem i64 %16, 4
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %90

21:                                               ; preds = %3
  %22 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %23 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %12, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @ENOMEM, align 4
  store i32 %29, i32* %4, align 4
  br label %90

30:                                               ; preds = %21
  %31 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i64 @ipfw_get_sopt_header(%struct.sockopt_data* %31, i64 %32)
  %34 = inttoptr i64 %33 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %10, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = icmp eq %struct.TYPE_6__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %30
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %4, align 4
  br label %90

39:                                               ; preds = %30
  %40 = call i32 @memset(%struct.ipfw_nat64lsn_stats* %8, i32 0, i32 32)
  %41 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %42 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %41)
  %43 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %44 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.nat64lsn_cfg* @nat64lsn_find(i32 %44, i32 %48, i32 %52)
  store %struct.nat64lsn_cfg* %53, %struct.nat64lsn_cfg** %9, align 8
  %54 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %9, align 8
  %55 = icmp eq %struct.nat64lsn_cfg* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %39
  %57 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %58 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %57)
  %59 = load i32, i32* @ENOENT, align 4
  store i32 %59, i32* %4, align 4
  br label %90

60:                                               ; preds = %39
  %61 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %62 = load %struct.nat64lsn_cfg*, %struct.nat64lsn_cfg** %9, align 8
  %63 = call i32 @export_stats(%struct.ip_fw_chain* %61, %struct.nat64lsn_cfg* %62, %struct.ipfw_nat64lsn_stats* %8)
  %64 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %65 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i64 1
  %68 = bitcast %struct.TYPE_6__* %67 to %struct.ipfw_nat64lsn_stats*
  store %struct.ipfw_nat64lsn_stats* %68, %struct.ipfw_nat64lsn_stats** %11, align 8
  %69 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %11, align 8
  %70 = call i32 @memset(%struct.ipfw_nat64lsn_stats* %69, i32 0, i32 32)
  %71 = load i32, i32* @IPFW_TLV_COUNTERS, align 4
  %72 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %11, align 8
  %73 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 8
  %75 = load i64, i64* %12, align 8
  %76 = sub i64 %75, 8
  %77 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %11, align 8
  %78 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  store i64 %76, i64* %79, align 8
  %80 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %11, align 8
  %81 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %80, i32 0, i32 0
  store i32 8, i32* %81, align 8
  %82 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %11, align 8
  %83 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %82, i32 0, i32 1
  store i32 4, i32* %83, align 4
  %84 = load i32, i32* @IPFW_NAT64_VERSION, align 4
  %85 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %11, align 8
  %86 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 8
  %87 = load %struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats** %11, align 8
  %88 = getelementptr inbounds %struct.ipfw_nat64lsn_stats, %struct.ipfw_nat64lsn_stats* %87, i64 1
  %89 = call i32 @memcpy(%struct.ipfw_nat64lsn_stats* %88, %struct.ipfw_nat64lsn_stats* %8, i32 32)
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %60, %56, %37, %28, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i64) #1

declare dso_local i32 @memset(%struct.ipfw_nat64lsn_stats*, i32, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.nat64lsn_cfg* @nat64lsn_find(i32, i32, i32) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @export_stats(%struct.ip_fw_chain*, %struct.nat64lsn_cfg*, %struct.ipfw_nat64lsn_stats*) #1

declare dso_local i32 @memcpy(%struct.ipfw_nat64lsn_stats*, %struct.ipfw_nat64lsn_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
