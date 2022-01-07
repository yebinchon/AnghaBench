; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_port = type { i32, i32, i32 }
%struct.ecore_hwfn = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ecore_rdma_port* }
%struct.ecore_mcp_link_state = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ecore_mcp_link_state }

@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RDMA Query port\0A\00", align 1
@ECORE_RDMA_PORT_UP = common dso_local global i32 0, align 4
@ECORE_RDMA_PORT_DOWN = common dso_local global i32 0, align 4
@RDMA_MAX_DATA_SIZE_IN_WQE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ecore_rdma_port* @ecore_rdma_query_port(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_rdma_port*, align 8
  %5 = alloca %struct.ecore_mcp_link_state*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %7, %struct.ecore_hwfn** %3, align 8
  %8 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %9 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %11, align 8
  store %struct.ecore_rdma_port* %12, %struct.ecore_rdma_port** %4, align 8
  %13 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %14 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %15 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %13, i32 %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %17 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.TYPE_6__* @ECORE_LEADING_HWFN(i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.ecore_mcp_link_state* %22, %struct.ecore_mcp_link_state** %5, align 8
  %23 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @ECORE_RDMA_PORT_UP, align 4
  br label %31

29:                                               ; preds = %1
  %30 = load i32, i32* @ECORE_RDMA_PORT_DOWN, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %4, align 8
  %34 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.ecore_mcp_link_state*, %struct.ecore_mcp_link_state** %5, align 8
  %36 = getelementptr inbounds %struct.ecore_mcp_link_state, %struct.ecore_mcp_link_state* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %4, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @RDMA_MAX_DATA_SIZE_IN_WQE, align 4
  %41 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %4, align 8
  %42 = getelementptr inbounds %struct.ecore_rdma_port, %struct.ecore_rdma_port* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ecore_rdma_port*, %struct.ecore_rdma_port** %4, align 8
  ret %struct.ecore_rdma_port* %43
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*) #1

declare dso_local %struct.TYPE_6__* @ECORE_LEADING_HWFN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
