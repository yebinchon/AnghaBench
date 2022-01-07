; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_init_common_qp_in_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_init_common_qp_in_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32* }
%struct.qlnxr_pd = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.qlnxr_qp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.ib_qp_init_attr = type { i64, i32, i32 }
%struct.ecore_rdma_create_qp_in_params = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IB_SIGNAL_ALL_WR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"exit srq_id = 0x%x use_srq = 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_pd*, %struct.qlnxr_qp*, %struct.ib_qp_init_attr*, i32, %struct.ecore_rdma_create_qp_in_params*)* @qlnxr_init_common_qp_in_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_init_common_qp_in_params(%struct.qlnxr_dev* %0, %struct.qlnxr_pd* %1, %struct.qlnxr_qp* %2, %struct.ib_qp_init_attr* %3, i32 %4, %struct.ecore_rdma_create_qp_in_params* %5) #0 {
  %7 = alloca %struct.qlnxr_dev*, align 8
  %8 = alloca %struct.qlnxr_pd*, align 8
  %9 = alloca %struct.qlnxr_qp*, align 8
  %10 = alloca %struct.ib_qp_init_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ecore_rdma_create_qp_in_params*, align 8
  %13 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %7, align 8
  store %struct.qlnxr_pd* %1, %struct.qlnxr_pd** %8, align 8
  store %struct.qlnxr_qp* %2, %struct.qlnxr_qp** %9, align 8
  store %struct.ib_qp_init_attr* %3, %struct.ib_qp_init_attr** %10, align 8
  store i32 %4, i32* %11, align 4
  store %struct.ecore_rdma_create_qp_in_params* %5, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %15 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %13, align 8
  %17 = load i32*, i32** %13, align 8
  %18 = call i32 @QL_DPRINT12(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %20 = ptrtoint %struct.qlnxr_qp* %19 to i64
  %21 = call i32 @lower_32_bits(i64 %20)
  %22 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %23 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %22, i32 0, i32 10
  store i32 %21, i32* %23, align 8
  %24 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %25 = ptrtoint %struct.qlnxr_qp* %24 to i64
  %26 = call i32 @upper_32_bits(i64 %25)
  %27 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %28 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %27, i32 0, i32 9
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %10, align 8
  %30 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @IB_SIGNAL_ALL_WR, align 8
  %33 = icmp eq i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %36 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %39 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %41 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %44 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %43, i32 0, i32 8
  store i32 %42, i32* %44, align 8
  %45 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %46 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = icmp ne %struct.TYPE_4__* %47, null
  br i1 %48, label %49, label %55

49:                                               ; preds = %6
  %50 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %51 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  br label %59

55:                                               ; preds = %6
  %56 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %7, align 8
  %57 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = phi i32 [ %54, %49 ], [ %58, %55 ]
  %61 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %62 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %61, i32 0, i32 7
  store i32 %60, i32* %62, align 4
  %63 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %10, align 8
  %64 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call %struct.TYPE_6__* @get_qlnxr_cq(i32 %65)
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %70 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 8
  %71 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %72 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %71, i32 0, i32 5
  store i64 0, i64* %72, align 8
  %73 = load %struct.ib_qp_init_attr*, %struct.ib_qp_init_attr** %10, align 8
  %74 = getelementptr inbounds %struct.ib_qp_init_attr, %struct.ib_qp_init_attr* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call %struct.TYPE_6__* @get_qlnxr_cq(i32 %75)
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %80 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %79, i32 0, i32 4
  store i32 %78, i32* %80, align 8
  %81 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %82 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = icmp ne %struct.TYPE_5__* %83, null
  br i1 %84, label %85, label %103

85:                                               ; preds = %59
  %86 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %9, align 8
  %87 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %86, i32 0, i32 0
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %92 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %94 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %93, i32 0, i32 2
  store i32 1, i32* %94, align 8
  %95 = load i32*, i32** %13, align 8
  %96 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %97 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %100 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @QL_DPRINT11(i32* %95, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %98, i32 %101)
  br label %110

103:                                              ; preds = %59
  %104 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %105 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  %106 = load %struct.ecore_rdma_create_qp_in_params*, %struct.ecore_rdma_create_qp_in_params** %12, align 8
  %107 = getelementptr inbounds %struct.ecore_rdma_create_qp_in_params, %struct.ecore_rdma_create_qp_in_params* %106, i32 0, i32 2
  store i32 0, i32* %107, align 8
  %108 = load i32*, i32** %13, align 8
  %109 = call i32 @QL_DPRINT12(i32* %108, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %110

110:                                              ; preds = %103, %85
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @lower_32_bits(i64) #1

declare dso_local i32 @upper_32_bits(i64) #1

declare dso_local %struct.TYPE_6__* @get_qlnxr_cq(i32) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
