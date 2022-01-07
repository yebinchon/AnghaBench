; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_reset_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nptv6/extr_nptv6.c_nptv6_reset_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.sockopt_data = type { i32, i64 }
%struct.nptv6_cfg = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@IPFW_MAX_SETS = common dso_local global i64 0, align 8
@ESRCH = common dso_local global i32 0, align 4
@NPTV6STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ip_fw_chain*, i32*, %struct.sockopt_data*)* @nptv6_reset_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nptv6_reset_stats(%struct.ip_fw_chain* %0, i32* %1, %struct.sockopt_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ip_fw_chain*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sockopt_data*, align 8
  %8 = alloca %struct.nptv6_cfg*, align 8
  %9 = alloca %struct.TYPE_4__*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.sockopt_data* %2, %struct.sockopt_data** %7, align 8
  %10 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %11 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ne i64 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  store i32 %16, i32* %4, align 4
  br label %65

17:                                               ; preds = %3
  %18 = load %struct.sockopt_data*, %struct.sockopt_data** %7, align 8
  %19 = getelementptr inbounds %struct.sockopt_data, %struct.sockopt_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %9, align 8
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @ipfw_check_object_name_generic(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %17
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IPFW_MAX_SETS, align 8
  %34 = icmp sge i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28, %17
  %36 = load i32, i32* @EINVAL, align 4
  store i32 %36, i32* %4, align 4
  br label %65

37:                                               ; preds = %28
  %38 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %39 = call i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain* %38)
  %40 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %41 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %40)
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call %struct.nptv6_cfg* @nptv6_find(i32 %41, i32 %45, i64 %49)
  store %struct.nptv6_cfg* %50, %struct.nptv6_cfg** %8, align 8
  %51 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %8, align 8
  %52 = icmp eq %struct.nptv6_cfg* %51, null
  br i1 %52, label %53, label %57

53:                                               ; preds = %37
  %54 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %55 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %54)
  %56 = load i32, i32* @ESRCH, align 4
  store i32 %56, i32* %4, align 4
  br label %65

57:                                               ; preds = %37
  %58 = load %struct.nptv6_cfg*, %struct.nptv6_cfg** %8, align 8
  %59 = getelementptr inbounds %struct.nptv6_cfg, %struct.nptv6_cfg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NPTV6STATS, align 4
  %62 = call i32 @COUNTER_ARRAY_ZERO(i32 %60, i32 %61)
  %63 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %5, align 8
  %64 = call i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain* %63)
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %57, %53, %35, %15
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i64 @ipfw_check_object_name_generic(i32) #1

declare dso_local i32 @IPFW_UH_WLOCK(%struct.ip_fw_chain*) #1

declare dso_local %struct.nptv6_cfg* @nptv6_find(i32, i32, i64) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @IPFW_UH_WUNLOCK(%struct.ip_fw_chain*) #1

declare dso_local i32 @COUNTER_ARRAY_ZERO(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
