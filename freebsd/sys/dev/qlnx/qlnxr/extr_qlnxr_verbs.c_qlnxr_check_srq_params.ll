; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_check_srq_params.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_check_srq_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.qlnxr_dev = type { i32, i32* }
%struct.ib_srq_init_attr = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64 }
%struct.ecore_rdma_device = type { i64, i64, i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"unsupported srq_wr=0x%x requested (max_srq_wr=0x%x)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"unsupported sge=0x%x requested (max_srq_sge=0x%x)\0A\00", align 1
@.str.3 = private unnamed_addr constant [59 x i8] c"unsupported srq_limit=0x%x requested (max_srq_limit=0x%x)\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_pd*, %struct.qlnxr_dev*, %struct.ib_srq_init_attr*)* @qlnxr_check_srq_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlnxr_check_srq_params(%struct.ib_pd* %0, %struct.qlnxr_dev* %1, %struct.ib_srq_init_attr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.qlnxr_dev*, align 8
  %7 = alloca %struct.ib_srq_init_attr*, align 8
  %8 = alloca %struct.ecore_rdma_device*, align 8
  %9 = alloca i32*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.qlnxr_dev* %1, %struct.qlnxr_dev** %6, align 8
  store %struct.ib_srq_init_attr* %2, %struct.ib_srq_init_attr** %7, align 8
  %10 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %11 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %9, align 8
  %13 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %6, align 8
  %14 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call %struct.ecore_rdma_device* @ecore_rdma_query_device(i32 %15)
  store %struct.ecore_rdma_device* %16, %struct.ecore_rdma_device** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %20 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %8, align 8
  %24 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %22, %25
  br i1 %26, label %27, label %39

27:                                               ; preds = %3
  %28 = load i32*, i32** %9, align 8
  %29 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %30 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %8, align 8
  %34 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %28, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i64 %32, i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %86

39:                                               ; preds = %3
  %40 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %41 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %8, align 8
  %45 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp sgt i64 %43, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %39
  %49 = load i32*, i32** %9, align 8
  %50 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %51 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.ecore_rdma_device*, %struct.ecore_rdma_device** %8, align 8
  %55 = getelementptr inbounds %struct.ecore_rdma_device, %struct.ecore_rdma_device* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i64 %53, i64 %56)
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %86

60:                                               ; preds = %39
  %61 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %62 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %66 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp sgt i64 %64, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %60
  %71 = load i32*, i32** %9, align 8
  %72 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %73 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.ib_srq_init_attr*, %struct.ib_srq_init_attr** %7, align 8
  %77 = getelementptr inbounds %struct.ib_srq_init_attr, %struct.ib_srq_init_attr* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 2
  %79 = load i64, i64* %78, align 8
  %80 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %71, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.3, i64 0, i64 0), i64 %75, i64 %79)
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %4, align 4
  br label %86

83:                                               ; preds = %60
  %84 = load i32*, i32** %9, align 8
  %85 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %84, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %83, %70, %48, %27
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local %struct.ecore_rdma_device* @ecore_rdma_query_device(i32) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
