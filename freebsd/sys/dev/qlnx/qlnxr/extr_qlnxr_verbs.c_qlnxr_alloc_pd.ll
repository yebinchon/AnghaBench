; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_alloc_pd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxr/extr_qlnxr_verbs.c_qlnxr_alloc_pd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.qlnxr_pd = type { %struct.ib_pd, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.qlnxr_pd* }
%struct.qlnxr_dev = type { i32, i32*, i32* }

@.str = private unnamed_addr constant [42 x i8] c"ibdev = %p context = %p udata = %p enter\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"dev->rdma_ctx = NULL\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"kzalloc(pd) = NULL\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"ecore_rdma_alloc_pd failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"ib_copy_to_udata failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"exit [pd, pd_id, pd_count] = [%p, 0x%x, %d]\0A\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"exit -1\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_pd* @qlnxr_alloc_pd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.qlnxr_pd*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qlnxr_dev*, align 8
  %12 = alloca i32*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  store %struct.qlnxr_pd* null, %struct.qlnxr_pd** %8, align 8
  %13 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %14 = call %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device* %13)
  store %struct.qlnxr_dev* %14, %struct.qlnxr_dev** %11, align 8
  %15 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %11, align 8
  %16 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %20 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %21 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %22 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %18, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), %struct.ib_device* %19, %struct.ib_ucontext* %20, %struct.ib_udata* %21)
  %23 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %11, align 8
  %24 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @QL_DPRINT11(i32* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %10, align 4
  br label %97

30:                                               ; preds = %3
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.qlnxr_pd* @kzalloc(i32 24, i32 %31)
  store %struct.qlnxr_pd* %32, %struct.qlnxr_pd** %8, align 8
  %33 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %34 = icmp ne %struct.qlnxr_pd* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = call i32 @QL_DPRINT11(i32* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %97

40:                                               ; preds = %30
  %41 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %11, align 8
  %42 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = call i32 @ecore_rdma_alloc_pd(i32* %43, i32* %9)
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %10, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32*, i32** %12, align 8
  %49 = call i32 @QL_DPRINT11(i32* %48, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  br label %97

50:                                               ; preds = %40
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %53 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %55 = icmp ne %struct.ib_udata* %54, null
  br i1 %55, label %56, label %84

56:                                               ; preds = %50
  %57 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %58 = icmp ne %struct.ib_ucontext* %57, null
  br i1 %58, label %59, label %84

59:                                               ; preds = %56
  %60 = load %struct.ib_udata*, %struct.ib_udata** %7, align 8
  %61 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %62 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %61, i32 0, i32 2
  %63 = call i32 @ib_copy_to_udata(%struct.ib_udata* %60, i32* %62, i32 4)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32*, i32** %12, align 8
  %68 = call i32 @QL_DPRINT11(i32* %67, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %69 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %11, align 8
  %70 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = call i32 @ecore_rdma_free_pd(i32* %71, i32 %72)
  br label %97

74:                                               ; preds = %59
  %75 = load %struct.ib_ucontext*, %struct.ib_ucontext** %6, align 8
  %76 = call %struct.TYPE_2__* @get_qlnxr_ucontext(%struct.ib_ucontext* %75)
  %77 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %78 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %77, i32 0, i32 1
  store %struct.TYPE_2__* %76, %struct.TYPE_2__** %78, align 8
  %79 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %80 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %81 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store %struct.qlnxr_pd* %79, %struct.qlnxr_pd** %83, align 8
  br label %84

84:                                               ; preds = %74, %56, %50
  %85 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %11, align 8
  %86 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %85, i32 0, i32 0
  %87 = call i32 @atomic_add_rel_32(i32* %86, i32 1)
  %88 = load i32*, i32** %12, align 8
  %89 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.qlnxr_dev*, %struct.qlnxr_dev** %11, align 8
  %92 = getelementptr inbounds %struct.qlnxr_dev, %struct.qlnxr_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %88, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.5, i64 0, i64 0), %struct.qlnxr_pd* %89, i32 %90, i32 %93)
  %95 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %96 = getelementptr inbounds %struct.qlnxr_pd, %struct.qlnxr_pd* %95, i32 0, i32 0
  store %struct.ib_pd* %96, %struct.ib_pd** %4, align 8
  br label %104

97:                                               ; preds = %66, %47, %35, %27
  %98 = load %struct.qlnxr_pd*, %struct.qlnxr_pd** %8, align 8
  %99 = call i32 @kfree(%struct.qlnxr_pd* %98)
  %100 = load i32*, i32** %12, align 8
  %101 = call i32 (i32*, i8*, ...) @QL_DPRINT12(i32* %100, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0))
  %102 = load i32, i32* %10, align 4
  %103 = call %struct.ib_pd* @ERR_PTR(i32 %102)
  store %struct.ib_pd* %103, %struct.ib_pd** %4, align 8
  br label %104

104:                                              ; preds = %97, %84
  %105 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  ret %struct.ib_pd* %105
}

declare dso_local %struct.qlnxr_dev* @get_qlnxr_dev(%struct.ib_device*) #1

declare dso_local i32 @QL_DPRINT12(i32*, i8*, ...) #1

declare dso_local i32 @QL_DPRINT11(i32*, i8*) #1

declare dso_local %struct.qlnxr_pd* @kzalloc(i32, i32) #1

declare dso_local i32 @ecore_rdma_alloc_pd(i32*, i32*) #1

declare dso_local i32 @ib_copy_to_udata(%struct.ib_udata*, i32*, i32) #1

declare dso_local i32 @ecore_rdma_free_pd(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @get_qlnxr_ucontext(%struct.ib_ucontext*) #1

declare dso_local i32 @atomic_add_rel_32(i32*, i32) #1

declare dso_local i32 @kfree(%struct.qlnxr_pd*) #1

declare dso_local %struct.ib_pd* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
