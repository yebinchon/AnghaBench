; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_roce_create_kernel_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_roce_create_kernel_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32, i32* }
%struct.qlnxr_qp = type { i32, i32, i32, %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_rdma_create_qp_in_params = type { i8*, i8*, i8*, i8* }
%struct.ecore_rdma_create_qp_out_params = type { i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@ECORE_CHAIN_USE_TO_PRODUCE = common dso_local global i32 0, align 4
@ECORE_CHAIN_MODE_PBL = common dso_local global i32 0, align 4
@ECORE_CHAIN_CNT_TYPE_U32 = common dso_local global i32 0, align 4
@QLNXR_SQE_ELEMENT_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"ecore_chain_alloc qp->sq.pbl failed[%d]\0A\00", align 1
@ECORE_CHAIN_USE_TO_CONSUME_PRODUCE = common dso_local global i32 0, align 4
@QLNXR_RQE_ELEMENT_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"ecore_chain_alloc qp->rq.pbl failed[%d]\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"qp->ecore_qp == NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ecore_rdma_create_qp_in_params*, i32, i32)* @qlnxr_roce_create_kernel_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_roce_create_kernel_qp(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.ecore_rdma_create_qp_in_params* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_qp*, align 8
  %9 = alloca %struct.ecore_rdma_create_qp_in_params*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_rdma_create_qp_out_params, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %7, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %8, align 8
  store %struct.ecore_rdma_create_qp_in_params* %2, %struct.ecore_rdma_create_qp_in_params** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %14, align 8
  %18 = load i32*, i32** %14, align 8
  %19 = call i32 @QL_DPRINT12(i32* %18, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %21 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @ECORE_CHAIN_USE_TO_PRODUCE, align 4
  %24 = load i32, i32* @ECORE_CHAIN_MODE_PBL, align 4
  %25 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U32, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @QLNXR_SQE_ELEMENT_SIZE, align 4
  %28 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %29 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %28, i32 0, i32 5
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = call i32 @ecore_chain_alloc(i32 %22, i32 %23, i32 %24, i32 %25, i32 %26, i32 %27, i32* %30, i32* null)
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %5
  %35 = load i32*, i32** %14, align 8
  %36 = load i32, i32* %13, align 4
  %37 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %35, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %6, align 4
  br label %120

39:                                               ; preds = %5
  %40 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %41 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i8* @ecore_chain_get_page_cnt(i32* %42)
  %44 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %9, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %47 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i8* @ecore_chain_get_pbl_phys(i32* %48)
  %50 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %9, align 8
  %51 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %53 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %89, label %56

56:                                               ; preds = %39
  %57 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %58 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ECORE_CHAIN_USE_TO_CONSUME_PRODUCE, align 4
  %61 = load i32, i32* @ECORE_CHAIN_MODE_PBL, align 4
  %62 = load i32, i32* @ECORE_CHAIN_CNT_TYPE_U32, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load i32, i32* @QLNXR_RQE_ELEMENT_SIZE, align 4
  %65 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %66 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = call i32 @ecore_chain_alloc(i32 %59, i32 %60, i32 %61, i32 %62, i32 %63, i32 %64, i32* %67, i32* null)
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %56
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %72, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* %13, align 4
  store i32 %75, i32* %6, align 4
  br label %120

76:                                               ; preds = %56
  %77 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %78 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = call i8* @ecore_chain_get_page_cnt(i32* %79)
  %81 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %9, align 8
  %82 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %81, i32 0, i32 1
  store i8* %80, i8** %82, align 8
  %83 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %84 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i8* @ecore_chain_get_pbl_phys(i32* %85)
  %87 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %9, align 8
  %88 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %89

89:                                               ; preds = %76, %39
  %90 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %91 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %9, align 8
  %94 = call i32 @ecore_rdma_create_qp(i32 %92, %struct.ecore_rdma_create_qp_in_params* %93, %struct.ecore_rdma_create_qp_out_params* %12)
  %95 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %96 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 4
  %97 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %98 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %89
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 (i32*, i8*, ...) @QL_DPRINT11(i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %104 = load i32, i32* @EINVAL, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %6, align 4
  br label %120

106:                                              ; preds = %89
  %107 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %12, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %110 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %12, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %114 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %113, i32 0, i32 0
  store i32 %112, i32* %114, align 4
  %115 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %116 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %8, align 8
  %117 = call i32 @qlnxr_set_roce_db_info(%struct.qlnxr_dev* %115, %struct.qlnxr_qp* %116)
  %118 = load i32*, i32** %14, align 8
  %119 = call i32 @QL_DPRINT12(i32* %118, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %120

120:                                              ; preds = %106, %101, %71, %34
  %121 = load i32, i32* %6, align 4
  ret i32 %121
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @ecore_chain_alloc(i32, i32, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, ...) #1

declare dso_local i8* @ecore_chain_get_page_cnt(i32*) #1

declare dso_local i8* @ecore_chain_get_pbl_phys(i32*) #1

declare dso_local i32 @ecore_rdma_create_qp(i32, %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_out_params*) #1

declare dso_local i32 @qlnxr_set_roce_db_info(%struct.qlnxr_dev*, %struct.qlnxr_qp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
