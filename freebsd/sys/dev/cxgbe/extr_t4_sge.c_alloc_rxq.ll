; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_rxq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_alloc_rxq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sge_rxq = type { i32, i32, i32, %struct.TYPE_9__, %struct.TYPE_11__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { i64, i64, i32 }
%struct.sysctl_oid = type { i32 }
%struct.sysctl_oid_list = type { i32 }

@cong_drop = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"iq_base mismatch\00", align 1
@IS_VF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"PF with non-zero iq_base\00", align 1
@IFCAP_HWRXTSTMP = common dso_local global i32 0, align 4
@IQ_RX_TIMESTAMP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@OID_AUTO = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"rx queue\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"rxcsum\00", align 1
@.str.5 = private unnamed_addr constant [43 x i8] c"# of times hardware assisted with checksum\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"vlan_extraction\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"# of times hardware extracted 802.1Q tag\00", align 1
@IFCAP_LRO = common dso_local global i32 0, align 4
@IQ_LRO_ENABLED = common dso_local global i32 0, align 4
@lro_entries = common dso_local global i32 0, align 4
@lro_mbufs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vi_info*, %struct.sge_rxq*, i32, i32, %struct.sysctl_oid*)* @alloc_rxq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_rxq(%struct.vi_info* %0, %struct.sge_rxq* %1, i32 %2, i32 %3, %struct.sysctl_oid* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vi_info*, align 8
  %8 = alloca %struct.sge_rxq*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sysctl_oid*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.adapter*, align 8
  %14 = alloca %struct.sysctl_oid_list*, align 8
  %15 = alloca [16 x i8], align 16
  store %struct.vi_info* %0, %struct.vi_info** %7, align 8
  store %struct.sge_rxq* %1, %struct.sge_rxq** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.sysctl_oid* %4, %struct.sysctl_oid** %11, align 8
  %16 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %17 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.adapter*, %struct.adapter** %19, align 8
  store %struct.adapter* %20, %struct.adapter** %13, align 8
  %21 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %22 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %23 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %22, i32 0, i32 4
  %24 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %25 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %24, i32 0, i32 0
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %28 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %27, i32 0, i32 2
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = load i32, i32* @cong_drop, align 4
  %31 = call i32 @tnl_cong(%struct.TYPE_8__* %29, i32 %30)
  %32 = call i32 @alloc_iq_fl(%struct.vi_info* %21, %struct.TYPE_11__* %23, i32* %25, i32 %26, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %5
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %6, align 4
  br label %162

37:                                               ; preds = %5
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %37
  %41 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %42 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %46 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = sub nsw i64 %44, %48
  %50 = load %struct.adapter*, %struct.adapter** %13, align 8
  %51 = getelementptr inbounds %struct.adapter, %struct.adapter* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  store i64 %49, i64* %52, align 8
  br label %70

53:                                               ; preds = %37
  %54 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %55 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.adapter*, %struct.adapter** %13, align 8
  %59 = getelementptr inbounds %struct.adapter, %struct.adapter* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %57, %61
  %63 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %64 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %62, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @KASSERT(i32 %68, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %70

70:                                               ; preds = %53, %40
  %71 = load %struct.adapter*, %struct.adapter** %13, align 8
  %72 = getelementptr inbounds %struct.adapter, %struct.adapter* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %70
  %77 = load %struct.adapter*, %struct.adapter** %13, align 8
  %78 = getelementptr inbounds %struct.adapter, %struct.adapter* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @IS_VF, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br label %83

83:                                               ; preds = %76, %70
  %84 = phi i1 [ true, %70 ], [ %82, %76 ]
  %85 = zext i1 %84 to i32
  %86 = call i32 @KASSERT(i32 %85, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %87 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %88 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %87, i32 0, i32 0
  %89 = call i32 @FL_LOCK(i32* %88)
  %90 = load %struct.adapter*, %struct.adapter** %13, align 8
  %91 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %92 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %91, i32 0, i32 0
  %93 = call i32 @refill_fl(%struct.adapter* %90, i32* %92, i32 128)
  %94 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %95 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %94, i32 0, i32 0
  %96 = call i32 @FL_UNLOCK(i32* %95)
  %97 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %98 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %97, i32 0, i32 1
  %99 = load %struct.TYPE_10__*, %struct.TYPE_10__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @IFCAP_HWRXTSTMP, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %112

105:                                              ; preds = %83
  %106 = load i32, i32* @IQ_RX_TIMESTAMP, align 4
  %107 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %108 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %107, i32 0, i32 4
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %106
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %105, %83
  %113 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %114 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %113, i32 0, i32 1
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %117 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %116, i32 0, i32 5
  store %struct.TYPE_10__* %115, %struct.TYPE_10__** %117, align 8
  %118 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %119 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %118)
  store %struct.sysctl_oid_list* %119, %struct.sysctl_oid_list** %14, align 8
  %120 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %121 = load i32, i32* %10, align 4
  %122 = call i32 @snprintf(i8* %120, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %121)
  %123 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %124 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %123, i32 0, i32 0
  %125 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %14, align 8
  %126 = load i32, i32* @OID_AUTO, align 4
  %127 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %128 = load i32, i32* @CTLFLAG_RD, align 4
  %129 = call %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32* %124, %struct.sysctl_oid_list* %125, i32 %126, i8* %127, i32 %128, i32* null, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  store %struct.sysctl_oid* %129, %struct.sysctl_oid** %11, align 8
  %130 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %131 = call %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid* %130)
  store %struct.sysctl_oid_list* %131, %struct.sysctl_oid_list** %14, align 8
  %132 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %133 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %132, i32 0, i32 0
  %134 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %135 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %136 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %135, i32 0, i32 4
  %137 = call i32 @add_iq_sysctls(i32* %133, %struct.sysctl_oid* %134, %struct.TYPE_11__* %136)
  %138 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %139 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %138, i32 0, i32 0
  %140 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %14, align 8
  %141 = load i32, i32* @OID_AUTO, align 4
  %142 = load i32, i32* @CTLFLAG_RD, align 4
  %143 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %144 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %143, i32 0, i32 2
  %145 = call i32 @SYSCTL_ADD_UQUAD(i32* %139, %struct.sysctl_oid_list* %140, i32 %141, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %142, i32* %144, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.5, i64 0, i64 0))
  %146 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %147 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %146, i32 0, i32 0
  %148 = load %struct.sysctl_oid_list*, %struct.sysctl_oid_list** %14, align 8
  %149 = load i32, i32* @OID_AUTO, align 4
  %150 = load i32, i32* @CTLFLAG_RD, align 4
  %151 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %152 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %151, i32 0, i32 1
  %153 = call i32 @SYSCTL_ADD_UQUAD(i32* %147, %struct.sysctl_oid_list* %148, i32 %149, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %150, i32* %152, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %154 = load %struct.adapter*, %struct.adapter** %13, align 8
  %155 = load %struct.vi_info*, %struct.vi_info** %7, align 8
  %156 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %155, i32 0, i32 0
  %157 = load %struct.sysctl_oid*, %struct.sysctl_oid** %11, align 8
  %158 = load %struct.sge_rxq*, %struct.sge_rxq** %8, align 8
  %159 = getelementptr inbounds %struct.sge_rxq, %struct.sge_rxq* %158, i32 0, i32 0
  %160 = call i32 @add_fl_sysctls(%struct.adapter* %154, i32* %156, %struct.sysctl_oid* %157, i32* %159)
  %161 = load i32, i32* %12, align 4
  store i32 %161, i32* %6, align 4
  br label %162

162:                                              ; preds = %112, %35
  %163 = load i32, i32* %6, align 4
  ret i32 %163
}

declare dso_local i32 @alloc_iq_fl(%struct.vi_info*, %struct.TYPE_11__*, i32*, i32, i32) #1

declare dso_local i32 @tnl_cong(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @FL_LOCK(i32*) #1

declare dso_local i32 @refill_fl(%struct.adapter*, i32*, i32) #1

declare dso_local i32 @FL_UNLOCK(i32*) #1

declare dso_local %struct.sysctl_oid_list* @SYSCTL_CHILDREN(%struct.sysctl_oid*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local %struct.sysctl_oid* @SYSCTL_ADD_NODE(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @add_iq_sysctls(i32*, %struct.sysctl_oid*, %struct.TYPE_11__*) #1

declare dso_local i32 @SYSCTL_ADD_UQUAD(i32*, %struct.sysctl_oid_list*, i32, i8*, i32, i32*, i8*) #1

declare dso_local i32 @add_fl_sysctls(%struct.adapter*, i32*, %struct.sysctl_oid*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
