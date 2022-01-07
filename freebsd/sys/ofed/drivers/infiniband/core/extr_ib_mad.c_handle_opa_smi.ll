; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_handle_opa_smi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad.c_handle_opa_smi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_port_private = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.ib_mad_qp_info = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_mad_private = type { %struct.TYPE_13__, i32, i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_12__* }
%struct.TYPE_9__ = type { i32*, %struct.opa_mad* }
%struct.opa_mad = type { i32 }
%struct.opa_smp = type { i32 }
%struct.ib_mad_hdr = type { i32 }

@IB_SMI_DISCARD = common dso_local global i64 0, align 8
@IB_SMI_LOCAL = common dso_local global i32 0, align 4
@IB_SMI_HANDLE = common dso_local global i32 0, align 4
@IB_SMI_SEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_mad_port_private*, %struct.ib_mad_qp_info*, %struct.ib_wc*, i32, %struct.ib_mad_private*, %struct.ib_mad_private*)* @handle_opa_smi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_opa_smi(%struct.ib_mad_port_private* %0, %struct.ib_mad_qp_info* %1, %struct.ib_wc* %2, i32 %3, %struct.ib_mad_private* %4, %struct.ib_mad_private* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ib_mad_port_private*, align 8
  %9 = alloca %struct.ib_mad_qp_info*, align 8
  %10 = alloca %struct.ib_wc*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_mad_private*, align 8
  %13 = alloca %struct.ib_mad_private*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.opa_smp*, align 8
  store %struct.ib_mad_port_private* %0, %struct.ib_mad_port_private** %8, align 8
  store %struct.ib_mad_qp_info* %1, %struct.ib_mad_qp_info** %9, align 8
  store %struct.ib_wc* %2, %struct.ib_wc** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ib_mad_private* %4, %struct.ib_mad_private** %12, align 8
  store %struct.ib_mad_private* %5, %struct.ib_mad_private** %13, align 8
  %16 = load %struct.ib_mad_private*, %struct.ib_mad_private** %12, align 8
  %17 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.opa_smp*
  store %struct.opa_smp* %19, %struct.opa_smp** %15, align 8
  %20 = load %struct.opa_smp*, %struct.opa_smp** %15, align 8
  %21 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %22 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %21, i32 0, i32 0
  %23 = load %struct.TYPE_14__*, %struct.TYPE_14__** %22, align 8
  %24 = call i64 @rdma_cap_ib_switch(%struct.TYPE_14__* %23)
  %25 = load i32, i32* %11, align 4
  %26 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %27 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %26, i32 0, i32 0
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @opa_smi_handle_dr_smp_recv(%struct.opa_smp* %20, i64 %24, i32 %25, i32 %30)
  %32 = load i64, i64* @IB_SMI_DISCARD, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %6
  %35 = load i64, i64* @IB_SMI_DISCARD, align 8
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %7, align 4
  br label %137

37:                                               ; preds = %6
  %38 = load %struct.opa_smp*, %struct.opa_smp** %15, align 8
  %39 = call i32 @opa_smi_check_forward_dr_smp(%struct.opa_smp* %38)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @IB_SMI_LOCAL, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %44, i32* %7, align 4
  br label %137

45:                                               ; preds = %37
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* @IB_SMI_SEND, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %74

49:                                               ; preds = %45
  %50 = load %struct.opa_smp*, %struct.opa_smp** %15, align 8
  %51 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %52 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %51, i32 0, i32 0
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %52, align 8
  %54 = call i64 @rdma_cap_ib_switch(%struct.TYPE_14__* %53)
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @opa_smi_handle_dr_smp_send(%struct.opa_smp* %50, i64 %54, i32 %55)
  %57 = load i64, i64* @IB_SMI_DISCARD, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i64, i64* @IB_SMI_DISCARD, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  br label %137

62:                                               ; preds = %49
  %63 = load %struct.opa_smp*, %struct.opa_smp** %15, align 8
  %64 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %65 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %64, i32 0, i32 0
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %65, align 8
  %67 = call i64 @opa_smi_check_local_smp(%struct.opa_smp* %63, %struct.TYPE_14__* %66)
  %68 = load i64, i64* @IB_SMI_DISCARD, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i64, i64* @IB_SMI_DISCARD, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %7, align 4
  br label %137

73:                                               ; preds = %62
  br label %135

74:                                               ; preds = %45
  %75 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %76 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = call i64 @rdma_cap_ib_switch(%struct.TYPE_14__* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %134

80:                                               ; preds = %74
  %81 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %82 = load %struct.ib_mad_private*, %struct.ib_mad_private** %12, align 8
  %83 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %84 = call i32 @mad_priv_size(%struct.ib_mad_private* %83)
  %85 = call i32 @memcpy(%struct.ib_mad_private* %81, %struct.ib_mad_private* %82, i32 %84)
  %86 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %87 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %87, i32 0, i32 0
  %89 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %90 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  store %struct.TYPE_12__* %88, %struct.TYPE_12__** %92, align 8
  %93 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %94 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = inttoptr i64 %95 to %struct.opa_mad*
  %97 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %98 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 1
  store %struct.opa_mad* %96, %struct.opa_mad** %101, align 8
  %102 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %103 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %102, i32 0, i32 1
  %104 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %105 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i32* %103, i32** %108, align 8
  %109 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %110 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to %struct.ib_mad_hdr*
  %113 = load %struct.ib_mad_private*, %struct.ib_mad_private** %13, align 8
  %114 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %113, i32 0, i32 1
  %115 = load %struct.ib_wc*, %struct.ib_wc** %10, align 8
  %116 = load %struct.ib_mad_port_private*, %struct.ib_mad_port_private** %8, align 8
  %117 = getelementptr inbounds %struct.ib_mad_port_private, %struct.ib_mad_port_private* %116, i32 0, i32 0
  %118 = load %struct.TYPE_14__*, %struct.TYPE_14__** %117, align 8
  %119 = load %struct.opa_smp*, %struct.opa_smp** %15, align 8
  %120 = call i32 @opa_smi_get_fwd_port(%struct.opa_smp* %119)
  %121 = load %struct.ib_mad_qp_info*, %struct.ib_mad_qp_info** %9, align 8
  %122 = getelementptr inbounds %struct.ib_mad_qp_info, %struct.ib_mad_qp_info* %121, i32 0, i32 0
  %123 = load %struct.TYPE_11__*, %struct.TYPE_11__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.ib_mad_private*, %struct.ib_mad_private** %12, align 8
  %127 = getelementptr inbounds %struct.ib_mad_private, %struct.ib_mad_private* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @agent_send_response(%struct.ib_mad_hdr* %112, i32* %114, %struct.ib_wc* %115, %struct.TYPE_14__* %118, i32 %120, i32 %125, i32 %130, i32 1)
  %132 = load i64, i64* @IB_SMI_DISCARD, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %7, align 4
  br label %137

134:                                              ; preds = %74
  br label %135

135:                                              ; preds = %134, %73
  %136 = load i32, i32* @IB_SMI_HANDLE, align 4
  store i32 %136, i32* %7, align 4
  br label %137

137:                                              ; preds = %135, %80, %70, %59, %43, %34
  %138 = load i32, i32* %7, align 4
  ret i32 %138
}

declare dso_local i64 @opa_smi_handle_dr_smp_recv(%struct.opa_smp*, i64, i32, i32) #1

declare dso_local i64 @rdma_cap_ib_switch(%struct.TYPE_14__*) #1

declare dso_local i32 @opa_smi_check_forward_dr_smp(%struct.opa_smp*) #1

declare dso_local i64 @opa_smi_handle_dr_smp_send(%struct.opa_smp*, i64, i32) #1

declare dso_local i64 @opa_smi_check_local_smp(%struct.opa_smp*, %struct.TYPE_14__*) #1

declare dso_local i32 @memcpy(%struct.ib_mad_private*, %struct.ib_mad_private*, i32) #1

declare dso_local i32 @mad_priv_size(%struct.ib_mad_private*) #1

declare dso_local i32 @agent_send_response(%struct.ib_mad_hdr*, i32*, %struct.ib_wc*, %struct.TYPE_14__*, i32, i32, i32, i32) #1

declare dso_local i32 @opa_smi_get_fwd_port(%struct.opa_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
