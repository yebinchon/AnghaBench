; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32 }
%struct.ipfw_nptv6_stats = type { i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.nptv6_cfg = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPFW_MAX_SETS = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@IPFW_TLV_COUNTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nptv6_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nptv6_stats(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.ipfw_nptv6_stats, align 8
  %9 = alloca %struct.nptv6_cfg*, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca %struct.ipfw_nptv6_stats*, align 8
  %12 = alloca i64, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  store i64 80, i64* %12, align 8
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
  br label %105

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
  br label %105

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
  br label %105

39:                                               ; preds = %30
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @ipfw_check_object_name_generic(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @IPFW_MAX_SETS, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %46, %39
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %4, align 4
  br label %105

55:                                               ; preds = %46
  %56 = call i32 @memset(%struct.ipfw_nptv6_stats* %8, i32 0, i32 32)
  %57 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %58 = call i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain* %57)
  %59 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %60 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %59)
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = call %struct.nptv6_cfg* @nptv6_find(i32 %60, i32 %64, i64 %68)
  store %struct.nptv6_cfg* %69, %struct.nptv6_cfg** %9, align 8
  %70 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %9, align 8
  %71 = icmp eq %struct.nptv6_cfg* %70, null
  br i1 %71, label %72, label %76

72:                                               ; preds = %55
  %73 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %74 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %73)
  %75 = load i32, i32* @ESRCH, align 4
  store i32 %75, i32* %4, align 4
  br label %105

76:                                               ; preds = %55
  %77 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %78 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %9, align 8
  %79 = call i32 @export_stats(%struct.ip_fw_chain* %77, %struct.nptv6_cfg* %78, %struct.ipfw_nptv6_stats* %8)
  %80 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %81 = call i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain* %80)
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i64 1
  %84 = bitcast %struct.TYPE_6__* %83 to %struct.ipfw_nptv6_stats*
  store %struct.ipfw_nptv6_stats* %84, %struct.ipfw_nptv6_stats** %11, align 8
  %85 = load %struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats** %11, align 8
  %86 = call i32 @memset(%struct.ipfw_nptv6_stats* %85, i32 0, i32 32)
  %87 = load i32, i32* @IPFW_TLV_COUNTERS, align 4
  %88 = load %struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats** %11, align 8
  %89 = getelementptr inbounds %struct.ipfw_nptv6_stats, %struct.ipfw_nptv6_stats* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i32 %87, i32* %90, align 8
  %91 = load i64, i64* %12, align 8
  %92 = sub i64 %91, 16
  %93 = load %struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats** %11, align 8
  %94 = getelementptr inbounds %struct.ipfw_nptv6_stats, %struct.ipfw_nptv6_stats* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i64 %92, i64* %95, align 8
  %96 = load %struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats** %11, align 8
  %97 = getelementptr inbounds %struct.ipfw_nptv6_stats, %struct.ipfw_nptv6_stats* %96, i32 0, i32 0
  store i32 8, i32* %97, align 8
  %98 = load %struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats** %11, align 8
  %99 = getelementptr inbounds %struct.ipfw_nptv6_stats, %struct.ipfw_nptv6_stats* %98, i32 0, i32 1
  store i32 4, i32* %99, align 4
  %100 = load %struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats** %11, align 8
  %101 = getelementptr inbounds %struct.ipfw_nptv6_stats, %struct.ipfw_nptv6_stats* %100, i32 0, i32 2
  store i32 1, i32* %101, align 8
  %102 = load %struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats** %11, align 8
  %103 = getelementptr inbounds %struct.ipfw_nptv6_stats, %struct.ipfw_nptv6_stats* %102, i64 1
  %104 = call i32 @memcpy(%struct.ipfw_nptv6_stats* %103, %struct.ipfw_nptv6_stats* %8, i32 32)
  store i32 0, i32* %4, align 4
  br label %105

105:                                              ; preds = %76, %72, %53, %37, %28, %19
  %106 = load i32, i32* %4, align 4
  ret i32 %106
}

declare dso_local i64 @ipfw_get_sopt_header(%struct.sockopt_data*, i64) #1

declare dso_local i64 @ipfw_check_object_name_generic(i32) #1

declare dso_local i32 @memset(%struct.ipfw_nptv6_stats*, i32, i32) #1

declare dso_local i32 @IPFW_UH_RLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.nptv6_cfg* @nptv6_find(i32, i32, i64) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_RUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @export_stats(%struct.ip_fw_chain*, %struct.nptv6_cfg*, %struct.ipfw_nptv6_stats*) #1

declare dso_local i32 @memcpy(%struct.ipfw_nptv6_stats*, %struct.ipfw_nptv6_stats*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
