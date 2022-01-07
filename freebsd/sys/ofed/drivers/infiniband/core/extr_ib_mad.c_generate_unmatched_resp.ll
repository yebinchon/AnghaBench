; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_generate_unmatched_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_generate_unmatched_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_private = type { i64, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32*, %struct.ib_mad* }
%struct.ib_mad = type { i32 }
%struct.ib_mad_hdr = type { i64, i64, i64, i32 }
%struct.opa_smp = type { i32 }

@IB_MGMT_METHOD_GET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_SET = common dso_local global i64 0, align 8
@IB_MGMT_METHOD_GET_RESP = common dso_local global i64 0, align 8
@IB_MGMT_MAD_STATUS_UNSUPPORTED_METHOD_ATTRIB = common dso_local global i32 0, align 4
@IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE = common dso_local global i64 0, align 8
@IB_SMP_DIRECTION = common dso_local global i32 0, align 4
@OPA_MGMT_BASE_VERSION = common dso_local global i64 0, align 8
@IB_MGMT_CLASS_SUBN_LID_ROUTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_private*, %struct.ib_mad_private*, i64*, i32)* @generate_unmatched_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @generate_unmatched_resp(%struct.ib_mad_private* %0, %struct.ib_mad_private* %1, i64* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ib_mad_private*, align 8
  %7 = alloca %struct.ib_mad_private*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ib_mad_hdr*, align 8
  %11 = alloca %struct.ib_mad_hdr*, align 8
  store %struct.ib_mad_private* %0, %struct.ib_mad_private** %6, align 8
  store %struct.ib_mad_private* %1, %struct.ib_mad_private** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.ib_mad_private*, %struct.ib_mad_private** %6, align 8
  %13 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.ib_mad_hdr*
  store %struct.ib_mad_hdr* %15, %struct.ib_mad_hdr** %10, align 8
  %16 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %17 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ib_mad_hdr*
  store %struct.ib_mad_hdr* %19, %struct.ib_mad_hdr** %11, align 8
  %20 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %10, align 8
  %21 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @IB_MGMT_METHOD_GET, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %10, align 8
  %27 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @IB_MGMT_METHOD_SET, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %110

31:                                               ; preds = %25, %4
  %32 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %33 = load %struct.ib_mad_private*, %struct.ib_mad_private** %6, align 8
  %34 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %35 = call i32 @mad_priv_size(%struct.ib_mad_private* %34)
  %36 = call i32 @memcpy(%struct.ib_mad_private* %32, %struct.ib_mad_private* %33, i32 %35)
  %37 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %38 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %41 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i32* %39, i32** %43, align 8
  %44 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %45 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to %struct.ib_mad*
  %48 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %49 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  store %struct.ib_mad* %47, %struct.ib_mad** %52, align 8
  %53 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %54 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %53, i32 0, i32 1
  %55 = load %struct.ib_mad_private*, %struct.ib_mad_private** %7, align 8
  %56 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32* %54, i32** %59, align 8
  %60 = load i64, i64* @IB_MGMT_METHOD_GET_RESP, align 8
  %61 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %11, align 8
  %62 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  %63 = load i32, i32* @IB_MGMT_MAD_STATUS_UNSUPPORTED_METHOD_ATTRIB, align 4
  %64 = call i32 @cpu_to_be16(i32 %63)
  %65 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %11, align 8
  %66 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %10, align 8
  %68 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %31
  %73 = load i32, i32* @IB_SMP_DIRECTION, align 4
  %74 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %11, align 8
  %75 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  br label %78

78:                                               ; preds = %72, %31
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %109

81:                                               ; preds = %78
  %82 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %10, align 8
  %83 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @OPA_MGMT_BASE_VERSION, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %81
  %88 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %10, align 8
  %89 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @IB_MGMT_CLASS_SUBN_LID_ROUTED, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load %struct.ib_mad_hdr*, %struct.ib_mad_hdr** %10, align 8
  %95 = getelementptr inbounds %struct.ib_mad_hdr, %struct.ib_mad_hdr* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @IB_MGMT_CLASS_SUBN_DIRECTED_ROUTE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %93, %87
  %100 = load %struct.ib_mad_private*, %struct.ib_mad_private** %6, align 8
  %101 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = inttoptr i64 %102 to %struct.opa_smp*
  %104 = call i64 @opa_get_smp_header_size(%struct.opa_smp* %103)
  %105 = load i64*, i64** %8, align 8
  store i64 %104, i64* %105, align 8
  br label %108

106:                                              ; preds = %93
  %107 = load i64*, i64** %8, align 8
  store i64 32, i64* %107, align 8
  br label %108

108:                                              ; preds = %106, %99
  br label %109

109:                                              ; preds = %108, %81, %78
  store i32 1, i32* %5, align 4
  br label %111

110:                                              ; preds = %25
  store i32 0, i32* %5, align 4
  br label %111

111:                                              ; preds = %110, %109
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

declare dso_local i32 @memcpy(%struct.ib_mad_private*, %struct.ib_mad_private*, i32) #1

declare dso_local i32 @mad_priv_size(%struct.ib_mad_private*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i64 @opa_get_smp_header_size(%struct.opa_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
