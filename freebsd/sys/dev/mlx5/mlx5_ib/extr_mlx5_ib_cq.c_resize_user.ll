; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_resize_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_cq.c_resize_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.mlx5_ib_cq = type { %struct.ib_umem*, %struct.TYPE_4__ }
%struct.ib_umem = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ib_ucontext* }
%struct.ib_ucontext = type { i32 }
%struct.ib_udata = type { i32 }
%struct.mlx5_ib_resize_cq = type { i32, i32, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i32 0, align 4
@IB_ACCESS_LOCAL_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.mlx5_ib_cq*, i32, %struct.ib_udata*, i32*, i32*, i32*)* @resize_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resize_user(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_cq* %1, i32 %2, %struct.ib_udata* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca %struct.mlx5_ib_cq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ib_udata*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.mlx5_ib_resize_cq, align 8
  %17 = alloca %struct.ib_umem*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ib_ucontext*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %9, align 8
  store %struct.mlx5_ib_cq* %1, %struct.mlx5_ib_cq** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ib_udata* %3, %struct.ib_udata** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  %21 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load %struct.ib_ucontext*, %struct.ib_ucontext** %25, align 8
  store %struct.ib_ucontext* %26, %struct.ib_ucontext** %20, align 8
  %27 = load %struct.ib_udata*, %struct.ib_udata** %12, align 8
  %28 = call i32 @ib_copy_from_udata(%struct.mlx5_ib_resize_cq* %16, %struct.ib_udata* %27, i32 24)
  store i32 %28, i32* %18, align 4
  %29 = load i32, i32* %18, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %7
  %32 = load i32, i32* %18, align 4
  store i32 %32, i32* %8, align 4
  br label %91

33:                                               ; preds = %7
  %34 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37, %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %91

44:                                               ; preds = %37
  %45 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %44
  %49 = load i32, i32* @SIZE_MAX, align 4
  %50 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sdiv i32 %49, %51
  %53 = load i32, i32* %11, align 4
  %54 = sub nsw i32 %53, 1
  %55 = icmp sle i32 %52, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %48
  %57 = load i32, i32* @EINVAL, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  br label %91

59:                                               ; preds = %48, %44
  %60 = load %struct.ib_ucontext*, %struct.ib_ucontext** %20, align 8
  %61 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %11, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %65, %67
  %69 = load i32, i32* @IB_ACCESS_LOCAL_WRITE, align 4
  %70 = call %struct.ib_umem* @ib_umem_get(%struct.ib_ucontext* %60, i32 %62, i64 %68, i32 %69, i32 1)
  store %struct.ib_umem* %70, %struct.ib_umem** %17, align 8
  %71 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %72 = call i64 @IS_ERR(%struct.ib_umem* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %59
  %75 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %76 = call i32 @PTR_ERR(%struct.ib_umem* %75)
  store i32 %76, i32* %18, align 4
  %77 = load i32, i32* %18, align 4
  store i32 %77, i32* %8, align 4
  br label %91

78:                                               ; preds = %59
  %79 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %80 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %14, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = call i32 @mlx5_ib_cont_pages(%struct.ib_umem* %79, i32 %81, i32* %19, i32* %82, i32* %83, i32* null)
  %85 = load %struct.ib_umem*, %struct.ib_umem** %17, align 8
  %86 = load %struct.mlx5_ib_cq*, %struct.mlx5_ib_cq** %10, align 8
  %87 = getelementptr inbounds %struct.mlx5_ib_cq, %struct.mlx5_ib_cq* %86, i32 0, i32 0
  store %struct.ib_umem* %85, %struct.ib_umem** %87, align 8
  %88 = getelementptr inbounds %struct.mlx5_ib_resize_cq, %struct.mlx5_ib_resize_cq* %16, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32*, i32** %15, align 8
  store i32 %89, i32* %90, align 4
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %78, %74, %56, %41, %31
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @ib_copy_from_udata(%struct.mlx5_ib_resize_cq*, %struct.ib_udata*, i32) #1

declare dso_local %struct.ib_umem* @ib_umem_get(%struct.ib_ucontext*, i32, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_umem*) #1

declare dso_local i32 @PTR_ERR(%struct.ib_umem*) #1

declare dso_local i32 @mlx5_ib_cont_pages(%struct.ib_umem*, i32, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
