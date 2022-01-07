; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vi_sysctls.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_main.c_vi_sysctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32 }
%struct.sysctl_ctx_list = type { i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"viid\00", align 1
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"VI identifer\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"nrxq\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"# of rx queues\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ntxq\00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"# of tx queues\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"first_rxq\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"index of first rx queue\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"first_txq\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"index of first tx queue\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"rss_base\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"start of RSS indirection table\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"rss_size\00", align 1
@.str.13 = private unnamed_addr constant [30 x i8] c"size of RSS indirection table\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"rsrv_noflowq\00", align 1
@CTLTYPE_INT = common dso_local global i32 0, align 4
@CTLFLAG_RW = common dso_local global i32 0, align 4
@sysctl_noflowq = common dso_local global i32 0, align 4
@.str.15 = private unnamed_addr constant [3 x i8] c"IU\00", align 1
@.str.16 = private unnamed_addr constant [39 x i8] c"Reserve queue 0 for non-flowid packets\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"holdoff_tmr_idx\00", align 1
@sysctl_holdoff_tmr_idx = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.19 = private unnamed_addr constant [20 x i8] c"holdoff timer index\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"holdoff_pktc_idx\00", align 1
@sysctl_holdoff_pktc_idx = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [29 x i8] c"holdoff packet counter index\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"qsize_rxq\00", align 1
@sysctl_qsize_rxq = common dso_local global i32 0, align 4
@.str.23 = private unnamed_addr constant [14 x i8] c"rx queue size\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"qsize_txq\00", align 1
@sysctl_qsize_txq = common dso_local global i32 0, align 4
@.str.25 = private unnamed_addr constant [14 x i8] c"tx queue size\00", align 1
@sysctl_holdoff_pktc_idx_ofld = common dso_local global i32 0, align 4
@sysctl_holdoff_tmr_idx_ofld = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vi_sysctls(%struct.vi_info* %0) #0 {
  %2 = alloca %struct.vi_info*, align 8
  %3 = alloca %struct.sysctl_ctx_list*, align 8
  %4 = alloca %struct.sysctl_oid*, align 8
  %5 = alloca %struct.sysctl_oid_list*, align 8
  store %struct.vi_info* %0, %struct.vi_info** %2, align 8
  %6 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %7 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %6, i32 0, i32 15
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32 %8)
  store %struct.sysctl_ctx_list* %9, %struct.sysctl_ctx_list** %3, align 8
  %10 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %11 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %10, i32 0, i32 15
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sysctl_oid* @device_get_sysctl_tree(i32 %12)
  store %struct.sysctl_oid* %13, %struct.sysctl_oid** %4, align 8
  %14 = load %struct.sysctl_oid*, %struct.sysctl_oid** %4, align 8
  %15 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %14)
  store %struct.sysctl_oid_list* %15, %struct.sysctl_oid_list** %5, align 8
  %16 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %17 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %18 = load i32, i32* @OID_AUTO, align 4
  %19 = load i32, i32* @CTLFLAG_RD, align 4
  %20 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %21 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %20, i32 0, i32 14
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %16, %struct.sysctl_oid_list* %17, i32 %18, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %19, i32* null, i32 %22, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %25 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %26 = load i32, i32* @OID_AUTO, align 4
  %27 = load i32, i32* @CTLFLAG_RD, align 4
  %28 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %29 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %28, i32 0, i32 0
  %30 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %24, %struct.sysctl_oid_list* %25, i32 %26, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %27, i64* %29, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %31 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %32 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %33 = load i32, i32* @OID_AUTO, align 4
  %34 = load i32, i32* @CTLFLAG_RD, align 4
  %35 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %36 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %35, i32 0, i32 1
  %37 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %31, %struct.sysctl_oid_list* %32, i32 %33, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %34, i64* %36, i32 0, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %38 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %39 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %40 = load i32, i32* @OID_AUTO, align 4
  %41 = load i32, i32* @CTLFLAG_RD, align 4
  %42 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %43 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %42, i32 0, i32 2
  %44 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %38, %struct.sysctl_oid_list* %39, i32 %40, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %41, i64* %43, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %45 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %46 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %47 = load i32, i32* @OID_AUTO, align 4
  %48 = load i32, i32* @CTLFLAG_RD, align 4
  %49 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %50 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %49, i32 0, i32 3
  %51 = call i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list* %45, %struct.sysctl_oid_list* %46, i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i64 0, i64 0), i32 %48, i64* %50, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0))
  %52 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %53 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %54 = load i32, i32* @OID_AUTO, align 4
  %55 = load i32, i32* @CTLFLAG_RD, align 4
  %56 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %57 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %56, i32 0, i32 13
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %52, %struct.sysctl_oid_list* %53, i32 %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i64 0, i64 0), i32 %55, i32* null, i32 %58, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0))
  %60 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %61 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %62 = load i32, i32* @OID_AUTO, align 4
  %63 = load i32, i32* @CTLFLAG_RD, align 4
  %64 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %65 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %64, i32 0, i32 12
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list* %60, %struct.sysctl_oid_list* %61, i32 %62, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0), i32 %63, i32* null, i32 %66, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.13, i64 0, i64 0))
  %68 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %69 = call i64 @IS_MAIN_VI(%struct.vi_info* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %1
  %72 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %73 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %74 = load i32, i32* @OID_AUTO, align 4
  %75 = load i32, i32* @CTLTYPE_INT, align 4
  %76 = load i32, i32* @CTLFLAG_RW, align 4
  %77 = or i32 %75, %76
  %78 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %79 = load i32, i32* @sysctl_noflowq, align 4
  %80 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %72, %struct.sysctl_oid_list* %73, i32 %74, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0), i32 %77, %struct.vi_info* %78, i32 0, i32 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.15, i64 0, i64 0), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %81

81:                                               ; preds = %71, %1
  %82 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %83 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %84 = load i32, i32* @OID_AUTO, align 4
  %85 = load i32, i32* @CTLTYPE_INT, align 4
  %86 = load i32, i32* @CTLFLAG_RW, align 4
  %87 = or i32 %85, %86
  %88 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %89 = load i32, i32* @sysctl_holdoff_tmr_idx, align 4
  %90 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %82, %struct.sysctl_oid_list* %83, i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i32 %87, %struct.vi_info* %88, i32 0, i32 %89, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.19, i64 0, i64 0))
  %91 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %92 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %93 = load i32, i32* @OID_AUTO, align 4
  %94 = load i32, i32* @CTLTYPE_INT, align 4
  %95 = load i32, i32* @CTLFLAG_RW, align 4
  %96 = or i32 %94, %95
  %97 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %98 = load i32, i32* @sysctl_holdoff_pktc_idx, align 4
  %99 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %91, %struct.sysctl_oid_list* %92, i32 %93, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i32 %96, %struct.vi_info* %97, i32 0, i32 %98, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.21, i64 0, i64 0))
  %100 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %101 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %102 = load i32, i32* @OID_AUTO, align 4
  %103 = load i32, i32* @CTLTYPE_INT, align 4
  %104 = load i32, i32* @CTLFLAG_RW, align 4
  %105 = or i32 %103, %104
  %106 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %107 = load i32, i32* @sysctl_qsize_rxq, align 4
  %108 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %100, %struct.sysctl_oid_list* %101, i32 %102, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.22, i64 0, i64 0), i32 %105, %struct.vi_info* %106, i32 0, i32 %107, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i64 0, i64 0))
  %109 = load %struct.sysctl_ctx_list*, %struct.sysctl_ctx_list** %3, align 8
  %110 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %5, align 8
  %111 = load i32, i32* @OID_AUTO, align 4
  %112 = load i32, i32* @CTLTYPE_INT, align 4
  %113 = load i32, i32* @CTLFLAG_RW, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.vi_info*, %struct.vi_info** %2, align 8
  %116 = load i32, i32* @sysctl_qsize_txq, align 4
  %117 = call i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list* %109, %struct.sysctl_oid_list* %110, i32 %111, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i64 0, i64 0), i32 %114, %struct.vi_info* %115, i32 0, i32 %116, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.25, i64 0, i64 0))
  ret void
}

declare dso_local %struct.sysctl_ctx_list* @device_get_sysctl_ctx(i32) #1

declare dso_local %struct.sysctl_oid* @device_get_sysctl_tree(i32) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @SYSCTL_ADD_UINT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i32, i8*) #1

declare dso_local i32 @SYSCTL_ADD_INT(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, i64*, i32, i8*) #1

declare dso_local i64 @IS_MAIN_VI(%struct.vi_info*) #1

declare dso_local i32 @SYSCTL_ADD_PROC(%struct.sysctl_ctx_list*, %struct.sysctl_oid_list*, i32, i8*, i32, %struct.vi_info*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
