; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_xrcd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_alloc_xrcd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_xrcd = type { i32 }
%struct.ib_device = type { i32 }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx4_ib_xrcd = type { i32, i32, %struct.ib_xrcd, i32 }
%struct.ib_cq_init_attr = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX4_DEV_CAP_FLAG_XRC = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_xrcd* (%struct.ib_device*, %struct.ib_ucontext*, %struct.ib_udata*)* @mlx4_ib_alloc_xrcd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_xrcd* @mlx4_ib_alloc_xrcd(%struct.ib_device* %0, %struct.ib_ucontext* %1, %struct.ib_udata* %2) #0 {
  %4 = alloca %struct.ib_xrcd*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca %struct.ib_ucontext*, align 8
  %7 = alloca %struct.ib_udata*, align 8
  %8 = alloca %struct.mlx4_ib_xrcd*, align 8
  %9 = alloca %struct.ib_cq_init_attr, align 4
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store %struct.ib_ucontext* %1, %struct.ib_ucontext** %6, align 8
  store %struct.ib_udata* %2, %struct.ib_udata** %7, align 8
  %11 = bitcast %struct.ib_cq_init_attr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 4, i1 false)
  %12 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %13 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @MLX4_DEV_CAP_FLAG_XRC, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.ib_xrcd* @ERR_PTR(i32 %24)
  store %struct.ib_xrcd* %25, %struct.ib_xrcd** %4, align 8
  br label %100

26:                                               ; preds = %3
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.mlx4_ib_xrcd* @kmalloc(i32 16, i32 %27)
  store %struct.mlx4_ib_xrcd* %28, %struct.mlx4_ib_xrcd** %8, align 8
  %29 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %30 = icmp ne %struct.mlx4_ib_xrcd* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %26
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.ib_xrcd* @ERR_PTR(i32 %33)
  store %struct.ib_xrcd* %34, %struct.ib_xrcd** %4, align 8
  br label %100

35:                                               ; preds = %26
  %36 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %37 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %36)
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %41 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %40, i32 0, i32 0
  %42 = call i32 @mlx4_xrcd_alloc(%struct.TYPE_7__* %39, i32* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %35
  br label %95

46:                                               ; preds = %35
  %47 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %48 = call i32 @ib_alloc_pd(%struct.ib_device* %47, i32 0)
  %49 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %50 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %52 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @IS_ERR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %46
  %57 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %58 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @PTR_ERR(i32 %59)
  store i32 %60, i32* %10, align 4
  br label %86

61:                                               ; preds = %46
  %62 = getelementptr inbounds %struct.ib_cq_init_attr, %struct.ib_cq_init_attr* %9, i32 0, i32 0
  store i32 1, i32* %62, align 4
  %63 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %64 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %65 = call i32 @ib_create_cq(%struct.ib_device* %63, i32* null, i32* null, %struct.mlx4_ib_xrcd* %64, %struct.ib_cq_init_attr* %9)
  %66 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %67 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %66, i32 0, i32 3
  store i32 %65, i32* %67, align 4
  %68 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = call i64 @IS_ERR(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %61
  %74 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %75 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @PTR_ERR(i32 %76)
  store i32 %77, i32* %10, align 4
  br label %81

78:                                               ; preds = %61
  %79 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %80 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %79, i32 0, i32 2
  store %struct.ib_xrcd* %80, %struct.ib_xrcd** %4, align 8
  br label %100

81:                                               ; preds = %73
  %82 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %83 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ib_dealloc_pd(i32 %84)
  br label %86

86:                                               ; preds = %81, %56
  %87 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %88 = call %struct.TYPE_6__* @to_mdev(%struct.ib_device* %87)
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** %89, align 8
  %91 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %92 = getelementptr inbounds %struct.mlx4_ib_xrcd, %struct.mlx4_ib_xrcd* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @mlx4_xrcd_free(%struct.TYPE_7__* %90, i32 %93)
  br label %95

95:                                               ; preds = %86, %45
  %96 = load %struct.mlx4_ib_xrcd*, %struct.mlx4_ib_xrcd** %8, align 8
  %97 = call i32 @kfree(%struct.mlx4_ib_xrcd* %96)
  %98 = load i32, i32* %10, align 4
  %99 = call %struct.ib_xrcd* @ERR_PTR(i32 %98)
  store %struct.ib_xrcd* %99, %struct.ib_xrcd** %4, align 8
  br label %100

100:                                              ; preds = %95, %78, %31, %22
  %101 = load %struct.ib_xrcd*, %struct.ib_xrcd** %4, align 8
  ret %struct.ib_xrcd* %101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_6__* @to_mdev(%struct.ib_device*) #2

declare dso_local %struct.ib_xrcd* @ERR_PTR(i32) #2

declare dso_local %struct.mlx4_ib_xrcd* @kmalloc(i32, i32) #2

declare dso_local i32 @mlx4_xrcd_alloc(%struct.TYPE_7__*, i32*) #2

declare dso_local i32 @ib_alloc_pd(%struct.ib_device*, i32) #2

declare dso_local i64 @IS_ERR(i32) #2

declare dso_local i32 @PTR_ERR(i32) #2

declare dso_local i32 @ib_create_cq(%struct.ib_device*, i32*, i32*, %struct.mlx4_ib_xrcd*, %struct.ib_cq_init_attr*) #2

declare dso_local i32 @ib_dealloc_pd(i32) #2

declare dso_local i32 @mlx4_xrcd_free(%struct.TYPE_7__*, i32) #2

declare dso_local i32 @kfree(%struct.mlx4_ib_xrcd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
