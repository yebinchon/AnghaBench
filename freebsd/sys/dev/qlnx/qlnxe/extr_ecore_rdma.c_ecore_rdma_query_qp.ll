; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_rdma.c_ecore_rdma_query_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_rdma_qp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_rdma_query_qp_out_params = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ecore_hwfn = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@ECORE_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"icid = %08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Query QP, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_rdma_query_qp(i8* %0, %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_query_qp_out_params* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ecore_rdma_qp*, align 8
  %6 = alloca %struct.ecore_rdma_query_qp_out_params*, align 8
  %7 = alloca %struct.ecore_hwfn*, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.ecore_rdma_qp* %1, %struct.ecore_rdma_qp** %5, align 8
  store %struct.ecore_rdma_query_qp_out_params* %2, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ecore_hwfn*
  store %struct.ecore_hwfn* %10, %struct.ecore_hwfn** %7, align 8
  %11 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %13 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %14 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %15 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %12, i32 %13, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %19 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %18, i32 0, i32 17
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %21, i32 0, i32 17
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %24 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %23, i32 0, i32 16
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %27 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %26, i32 0, i32 16
  store i32 %25, i32* %27, align 8
  %28 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %29 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %28, i32 0, i32 15
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %32 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %31, i32 0, i32 15
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %34 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %33, i32 0, i32 14
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %37 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %36, i32 0, i32 14
  store i32 %35, i32* %37, align 8
  %38 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %38, i32 0, i32 13
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %42 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %41, i32 0, i32 13
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %44 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %43, i32 0, i32 12
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %47 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %46, i32 0, i32 12
  store i32 %45, i32* %47, align 8
  %48 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %49 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %48, i32 0, i32 11
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %52 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %51, i32 0, i32 11
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %54 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %57 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %56, i32 0, i32 10
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %59 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %58, i32 0, i32 9
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %61, i32 0, i32 9
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %64 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %63, i32 0, i32 8
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %67 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %69 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %68, i32 0, i32 7
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %72 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 4
  %73 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %74 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %77 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %76, i32 0, i32 6
  store i32 %75, i32* %77, align 8
  %78 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %79 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %78, i32 0, i32 5
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %82 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %81, i32 0, i32 5
  store i32 %80, i32* %82, align 4
  %83 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %84 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %87 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %89 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %88, i32 0, i32 3
  store i64 0, i64* %89, align 8
  %90 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %91 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %94 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %93, i32 0, i32 2
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %96 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %99 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %101 = getelementptr inbounds %struct.ecore_rdma_qp, %struct.ecore_rdma_qp* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %104 = getelementptr inbounds %struct.ecore_rdma_query_qp_out_params, %struct.ecore_rdma_query_qp_out_params* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %106 = call i64 @IS_IWARP(%struct.ecore_hwfn* %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %3
  %109 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %110 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %111 = call i32 @ecore_iwarp_query_qp(%struct.ecore_rdma_qp* %109, %struct.ecore_rdma_query_qp_out_params* %110)
  store i32 %111, i32* %8, align 4
  br label %117

112:                                              ; preds = %3
  %113 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %114 = load %struct.ecore_rdma_qp*, %struct.ecore_rdma_qp** %5, align 8
  %115 = load %struct.ecore_rdma_query_qp_out_params*, %struct.ecore_rdma_query_qp_out_params** %6, align 8
  %116 = call i32 @ecore_roce_query_qp(%struct.ecore_hwfn* %113, %struct.ecore_rdma_qp* %114, %struct.ecore_rdma_query_qp_out_params* %115)
  store i32 %116, i32* %8, align 4
  br label %117

117:                                              ; preds = %112, %108
  %118 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %7, align 8
  %119 = load i32, i32* @ECORE_MSG_RDMA, align 4
  %120 = load i32, i32* %8, align 4
  %121 = call i32 @DP_VERBOSE(%struct.ecore_hwfn* %118, i32 %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %120)
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32 @DP_VERBOSE(%struct.ecore_hwfn*, i32, i8*, i32) #1

declare dso_local i64 @IS_IWARP(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_iwarp_query_qp(%struct.ecore_rdma_qp*, %struct.ecore_rdma_query_qp_out_params*) #1

declare dso_local i32 @ecore_roce_query_qp(%struct.ecore_hwfn*, %struct.ecore_rdma_qp*, %struct.ecore_rdma_query_qp_out_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
