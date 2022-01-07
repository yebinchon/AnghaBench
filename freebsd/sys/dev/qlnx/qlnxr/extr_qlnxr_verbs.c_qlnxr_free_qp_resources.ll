; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_free_qp_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_free_qp_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlnxr_dev = type { i32, i32* }
%struct.qlnxr_qp = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ecore_rdma_destroy_qp_out_params = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IB_QPT_GSI = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlnxr_free_qp_resources(%struct.qlnxr_dev* %0, %struct.qlnxr_qp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlnxr_dev*, align 8
  %5 = alloca %struct.qlnxr_qp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ecore_rdma_destroy_qp_out_params, align 4
  store %struct.qlnxr_dev* %0, %struct.qlnxr_dev** %4, align 8
  store %struct.qlnxr_qp* %1, %struct.qlnxr_qp** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %10 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @QL_DPRINT12(i32* %12, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %15 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = icmp ne %struct.TYPE_3__* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %2
  %20 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %21 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %29 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %30 = call i32 @qlnxr_cleanup_user(%struct.qlnxr_dev* %28, %struct.qlnxr_qp* %29)
  br label %35

31:                                               ; preds = %19, %2
  %32 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %33 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %34 = call i32 @qlnxr_cleanup_kernel(%struct.qlnxr_dev* %32, %struct.qlnxr_qp* %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %37 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @IB_QPT_GSI, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %35
  %42 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %4, align 8
  %43 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.qlnxr_qp*, %struct.qlnxr_qp** %5, align 8
  %46 = getelementptr inbounds %struct.qlnxr_qp, %struct.qlnxr_qp* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ecore_rdma_destroy_qp(i32 %44, i32 %47, %struct.ecore_rdma_destroy_qp_out_params* %8)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %3, align 4
  br label %57

53:                                               ; preds = %41
  br label %54

54:                                               ; preds = %53, %35
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @QL_DPRINT12(i32* %55, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @QL_DPRINT12(i32*, i8*) #1

declare dso_local i32 @qlnxr_cleanup_user(%struct.qlnxr_dev*, %struct.qlnxr_qp*) #1

declare dso_local i32 @qlnxr_cleanup_kernel(%struct.qlnxr_dev*, %struct.qlnxr_qp*) #1

declare dso_local i32 @ecore_rdma_destroy_qp(i32, i32, %struct.ecore_rdma_destroy_qp_out_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
