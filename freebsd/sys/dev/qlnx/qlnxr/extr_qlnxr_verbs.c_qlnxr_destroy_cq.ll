; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.qlnxr_dev = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ecore_rdma_destroy_cq_out_params = type { i32 }
%struct.ecore_rdma_destroy_cq_in_params = type { i32 }
%struct.qlnxr_cq = type { i32, i64, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"enter cq_id = %d\0A\00", align 1
@QLNXR_CQ_TYPE_GSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [41 x i8] c"ecore_rdma_destroy_cq failed cq_id = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"free cq->pbl cq_id = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"exit cq_id = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_destroy_cq(%struct.ib_cq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ib_cq*, align 8
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.ecore_rdma_destroy_cq_out_params, align 4
  %6 = alloca %struct.ecore_rdma_destroy_cq_in_params, align 4
  %7 = alloca %struct.qlnxr_cq*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.ib_cq* %0, %struct.ib_cq** %3, align 8
  %10 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %11 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.qlnxr_dev* @get_qlnxr_dev(i32 %12)
  store %struct.qlnxr_dev* %13, %struct.qlnxr_dev** %4, align 8
  %14 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %15 = call %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq* %14)
  store %struct.qlnxr_cq* %15, %struct.qlnxr_cq** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %17 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %9, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %20 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %21 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @QL_DPRINT12(%struct.TYPE_7__* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %25 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %27 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @QLNXR_CQ_TYPE_GSI, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %62

31:                                               ; preds = %1
  %32 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %33 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = getelementptr inbounds %struct.ecore_rdma_destroy_cq_in_params, %struct.ecore_rdma_destroy_cq_in_params* %6, i32 0, i32 0
  store i32 %34, i32* %35, align 4
  %36 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %37 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @ecore_rdma_destroy_cq(i32 %38, %struct.ecore_rdma_destroy_cq_in_params* %6, %struct.ecore_rdma_destroy_cq_out_params* %5)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %31
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %45 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @QL_DPRINT12(%struct.TYPE_7__* %43, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %8, align 4
  store i32 %48, i32* %2, align 4
  br label %104

49:                                               ; preds = %31
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %51 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %52 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @QL_DPRINT12(%struct.TYPE_7__* %50, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %53)
  %55 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %56 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %60 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %59, i32 0, i32 5
  %61 = call i32 @ecore_chain_free(i32* %58, i32* %60)
  br label %62

62:                                               ; preds = %49, %1
  %63 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %64 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %63, i32 0, i32 0
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %64, align 8
  %66 = icmp ne %struct.TYPE_5__* %65, null
  br i1 %66, label %67, label %89

67:                                               ; preds = %62
  %68 = load %struct.ib_cq*, %struct.ib_cq** %3, align 8
  %69 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %89

74:                                               ; preds = %67
  %75 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %76 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %77 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %80 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @qlnxr_free_pbl(%struct.qlnxr_dev* %75, i32* %78, i32 %82)
  %84 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %85 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %84, i32 0, i32 4
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ib_umem_release(i32 %87)
  br label %89

89:                                               ; preds = %74, %67, %62
  %90 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %91 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = xor i32 %92, -1
  %94 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %95 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %94, i32 0, i32 3
  store i32 %93, i32* %95, align 4
  %96 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %97 = call i32 @kfree(%struct.qlnxr_cq* %96)
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %99 = load %struct.qlnxr_cq*, %struct.qlnxr_cq** %7, align 8
  %100 = getelementptr inbounds %struct.qlnxr_cq, %struct.qlnxr_cq* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @QL_DPRINT12(%struct.TYPE_7__* %98, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %89, %42
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(i32) #1

declare dso_local %struct.qlnxr_cq* @get_qlnxr_cq(%struct.ib_cq*) #1

declare dso_local i32 @QL_DPRINT12(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32 @ecore_rdma_destroy_cq(i32, %struct.ecore_rdma_destroy_cq_in_params*, %struct.ecore_rdma_destroy_cq_out_params*) #1

declare dso_local i32 @ecore_chain_free(i32*, i32*) #1

declare dso_local i32 @qlnxr_free_pbl(%struct.qlnxr_dev*, i32*, i32) #1

declare dso_local i32 @ib_umem_release(i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
