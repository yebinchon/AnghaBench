; ModuleID = '/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad_rmpp.c_ib_process_rmpp_recv_wc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/ofed/drivers/infiniband/core/extr_ib_mad_rmpp.c_ib_process_rmpp_recv_wc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mad_agent_private = type { i32 }
%struct.ib_mad_recv_wc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ib_rmpp_mad = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64, i32 }

@IB_MGMT_RMPP_FLAG_ACTIVE = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_VERSION = common dso_local global i64 0, align 8
@IB_MGMT_RMPP_STATUS_UNV = common dso_local global i32 0, align 4
@IB_MGMT_RMPP_STATUS_BADT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_mad_recv_wc* @ib_process_rmpp_recv_wc(%struct.ib_mad_agent_private* %0, %struct.ib_mad_recv_wc* %1) #0 {
  %3 = alloca %struct.ib_mad_recv_wc*, align 8
  %4 = alloca %struct.ib_mad_agent_private*, align 8
  %5 = alloca %struct.ib_mad_recv_wc*, align 8
  %6 = alloca %struct.ib_rmpp_mad*, align 8
  store %struct.ib_mad_agent_private* %0, %struct.ib_mad_agent_private** %4, align 8
  store %struct.ib_mad_recv_wc* %1, %struct.ib_mad_recv_wc** %5, align 8
  %7 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %8 = getelementptr inbounds %struct.ib_mad_recv_wc, %struct.ib_mad_recv_wc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.ib_rmpp_mad*
  store %struct.ib_rmpp_mad* %11, %struct.ib_rmpp_mad** %6, align 8
  %12 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %13 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @IB_MGMT_RMPP_FLAG_ACTIVE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  store %struct.ib_mad_recv_wc* %20, %struct.ib_mad_recv_wc** %3, align 8
  br label %71

21:                                               ; preds = %2
  %22 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %23 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IB_MGMT_RMPP_VERSION, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %21
  %29 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %30 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %31 = load i32, i32* @IB_MGMT_RMPP_STATUS_UNV, align 4
  %32 = call i32 @abort_send(%struct.ib_mad_agent_private* %29, %struct.ib_mad_recv_wc* %30, i32 %31)
  %33 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %34 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %35 = load i32, i32* @IB_MGMT_RMPP_STATUS_UNV, align 4
  %36 = call i32 @nack_recv(%struct.ib_mad_agent_private* %33, %struct.ib_mad_recv_wc* %34, i32 %35)
  br label %68

37:                                               ; preds = %21
  %38 = load %struct.ib_rmpp_mad*, %struct.ib_rmpp_mad** %6, align 8
  %39 = getelementptr inbounds %struct.ib_rmpp_mad, %struct.ib_rmpp_mad* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  switch i32 %41, label %58 [
    i32 129, label %42
    i32 130, label %46
    i32 128, label %50
    i32 131, label %54
  ]

42:                                               ; preds = %37
  %43 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %44 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %45 = call %struct.ib_mad_recv_wc* @process_rmpp_data(%struct.ib_mad_agent_private* %43, %struct.ib_mad_recv_wc* %44)
  store %struct.ib_mad_recv_wc* %45, %struct.ib_mad_recv_wc** %3, align 8
  br label %71

46:                                               ; preds = %37
  %47 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %48 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %49 = call i32 @process_rmpp_ack(%struct.ib_mad_agent_private* %47, %struct.ib_mad_recv_wc* %48)
  br label %67

50:                                               ; preds = %37
  %51 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %52 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %53 = call i32 @process_rmpp_stop(%struct.ib_mad_agent_private* %51, %struct.ib_mad_recv_wc* %52)
  br label %67

54:                                               ; preds = %37
  %55 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %56 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %57 = call i32 @process_rmpp_abort(%struct.ib_mad_agent_private* %55, %struct.ib_mad_recv_wc* %56)
  br label %67

58:                                               ; preds = %37
  %59 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %60 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %61 = load i32, i32* @IB_MGMT_RMPP_STATUS_BADT, align 4
  %62 = call i32 @abort_send(%struct.ib_mad_agent_private* %59, %struct.ib_mad_recv_wc* %60, i32 %61)
  %63 = load %struct.ib_mad_agent_private*, %struct.ib_mad_agent_private** %4, align 8
  %64 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %65 = load i32, i32* @IB_MGMT_RMPP_STATUS_BADT, align 4
  %66 = call i32 @nack_recv(%struct.ib_mad_agent_private* %63, %struct.ib_mad_recv_wc* %64, i32 %65)
  br label %67

67:                                               ; preds = %58, %54, %50, %46
  br label %68

68:                                               ; preds = %67, %28
  %69 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %5, align 8
  %70 = call i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc* %69)
  store %struct.ib_mad_recv_wc* null, %struct.ib_mad_recv_wc** %3, align 8
  br label %71

71:                                               ; preds = %68, %42, %19
  %72 = load %struct.ib_mad_recv_wc*, %struct.ib_mad_recv_wc** %3, align 8
  ret %struct.ib_mad_recv_wc* %72
}

declare dso_local i32 @abort_send(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32) #1

declare dso_local i32 @nack_recv(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*, i32) #1

declare dso_local %struct.ib_mad_recv_wc* @process_rmpp_data(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @process_rmpp_ack(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @process_rmpp_stop(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @process_rmpp_abort(%struct.ib_mad_agent_private*, %struct.ib_mad_recv_wc*) #1

declare dso_local i32 @ib_free_recv_mad(%struct.ib_mad_recv_wc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
