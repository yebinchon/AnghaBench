; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_query_srq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_query_srq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_srq = type { i32 }
%struct.ib_srq_attr = type { i32, i32, i32 }
%struct.qlnxr_dev = type { i32, i32* }
%struct.qlnxr_srq = type { %struct.qlnxr_dev* }
%struct.ecore_rdma_device = type { i32, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"called with invalid params rdma_ctx is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_query_srq(%struct.ib_srq* %0, %struct.ib_srq_attr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ib_srq*, align 8
  %5 = alloca %struct.ib_srq_attr*, align 8
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.qlnxr_srq*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ecore_rdma_device*, align 8
  store %struct.ib_srq* %0, %struct.ib_srq** %4, align 8
  store %struct.ib_srq_attr* %1, %struct.ib_srq_attr** %5, align 8
  %10 = load %struct.ib_srq*, %struct.ib_srq** %4, align 8
  %11 = call %struct.qlnxr_srq* @get_qlnxr_srq(%struct.ib_srq* %10)
  store %struct.qlnxr_srq* %11, %struct.qlnxr_srq** %7, align 8
  %12 = load %struct.qlnxr_srq*, %struct.qlnxr_srq** %7, align 8
  %13 = getelementptr inbounds %struct.qlnxr_srq, %struct.qlnxr_srq* %12, i32 0, i32 0
  %14 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %13, align 8
  store %struct.qlnxr_dev* %14, %struct.qlnxr_dev** %6, align 8
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %8, align 8
  %18 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %19 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call %struct.ecore_rdma_device* @ecore_rdma_query_device(i32 %20)
  store %struct.ecore_rdma_device* %21, %struct.ecore_rdma_device** %9, align 8
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @QL_DPRINT12(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %25 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %2
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @QL_DPRINT12(i32* %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %51

33:                                               ; preds = %2
  %34 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %9, align 8
  %35 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %38 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %9, align 8
  %40 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %43 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %9, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ib_srq_attr*, %struct.ib_srq_attr** %5, align 8
  %48 = getelementptr inbounds %struct.ib_srq_attr, %struct.ib_srq_attr* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @QL_DPRINT12(i32* %49, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %33, %28
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.qlnxr_srq* @get_qlnxr_srq(%struct.ib_srq*) #1

declare dso_local %struct.ecore_rdma_device* @ecore_rdma_query_device(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
