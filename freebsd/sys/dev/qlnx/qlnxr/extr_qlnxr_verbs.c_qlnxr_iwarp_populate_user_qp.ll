; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iwarp_populate_user_qp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_iwarp_populate_user_qp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32* }
%struct.qlnxr_qp = type { %struct.TYPE_5__, i32, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_6__*, i32 }
%struct.ecore_rdma_create_qp_out_params = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"qp->srq = %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlnxr_dev*, %struct.qlnxr_qp*, %struct.ecore_rdma_create_qp_out_params*)* @qlnxr_iwarp_populate_user_qp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlnxr_iwarp_populate_user_qp(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1, %struct.ecore_rdma_create_qp_out_params* %2) #0 {
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.qlnxr_qp*, align 8
  %6 = alloca %struct.ecore_rdma_create_qp_out_params*, align 8
  %7 = alloca i32*, align 8
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %5, align 8
  store %struct.ecore_rdma_create_qp_out_params* %2, %struct.ecore_rdma_create_qp_out_params** %6, align 8
  %8 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %9 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = call i32 @QL_DPRINT12(i32* %11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %6, align 8
  %14 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %17 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i32 %15, i32* %20, align 4
  %21 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %6, align 8
  %22 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %25 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 1
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %23, i32* %28, align 4
  %29 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %30 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %31 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %35 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %39 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = call i32 @qlnxr_populate_pbls(%struct.qlnxr_dev* %29, i32 %33, %struct.TYPE_6__* %37, i32* %40)
  %42 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %43 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %3
  %47 = load i32*, i32** %7, align 8
  %48 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %49 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @QL_DPRINT11(i32* %47, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  br label %84

52:                                               ; preds = %3
  %53 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %6, align 8
  %54 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %57 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  store i32 %55, i32* %60, align 4
  %61 = load %struct.ecore_rdma_create_qp_out_params*, %struct.ecore_rdma_create_qp_out_params** %6, align 8
  %62 = getelementptr inbounds %struct.ecore_rdma_create_qp_out_params, %struct.ecore_rdma_create_qp_out_params* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %65 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %63, i32* %68, align 4
  %69 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %70 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %71 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %75 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %79 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = call i32 @qlnxr_populate_pbls(%struct.qlnxr_dev* %69, i32 %73, %struct.TYPE_6__* %77, i32* %80)
  %82 = load i32*, i32** %7, align 8
  %83 = call i32 @QL_DPRINT12(i32* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %84

84:                                               ; preds = %52, %46
  ret void
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @qlnxr_populate_pbls(%struct.qlnxr_dev*, i32, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
