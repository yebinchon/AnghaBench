; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mr_umem_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_mr_umem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_umem = type opaque
%struct.ib_pd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"umem get failed (%ld)\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"avoid zero region\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"npages %d, ncont %d, order %d, page_shift %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_umem* (%struct.ib_pd*, i32, i32, i32, i32*, i32*, i32*, i32*)* @mr_umem_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_umem* @mr_umem_get(%struct.ib_pd* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32* %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.ib_umem*, align 8
  %10 = alloca %struct.ib_pd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.mlx5_ib_dev*, align 8
  %19 = alloca %struct.ib_umem*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %20 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %21 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call %struct.mlx5_ib_dev* @to_mdev(i32 %22)
  store %struct.mlx5_ib_dev* %23, %struct.mlx5_ib_dev** %18, align 8
  %24 = load %struct.ib_pd*, %struct.ib_pd** %10, align 8
  %25 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i8* @ib_umem_get(i32 %28, i32 %29, i32 %30, i32 %31, i32 0)
  %33 = bitcast i8* %32 to %struct.ib_umem*
  store %struct.ib_umem* %33, %struct.ib_umem** %19, align 8
  %34 = load %struct.ib_umem*, %struct.ib_umem** %19, align 8
  %35 = bitcast %struct.ib_umem* %34 to i8*
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %8
  %39 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %40 = load %struct.ib_umem*, %struct.ib_umem** %19, align 8
  %41 = bitcast %struct.ib_umem* %40 to i8*
  %42 = call i32 @PTR_ERR(i8* %41)
  %43 = call i32 @mlx5_ib_err(%struct.mlx5_ib_dev* %39, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load %struct.ib_umem*, %struct.ib_umem** %19, align 8
  %45 = bitcast %struct.ib_umem* %44 to i8*
  %46 = bitcast i8* %45 to %struct.ib_umem*
  store %struct.ib_umem* %46, %struct.ib_umem** %9, align 8
  br label %81

47:                                               ; preds = %8
  %48 = load %struct.ib_umem*, %struct.ib_umem** %19, align 8
  %49 = bitcast %struct.ib_umem* %48 to i8*
  %50 = load i32, i32* %11, align 4
  %51 = load i32*, i32** %14, align 8
  %52 = load i32*, i32** %15, align 8
  %53 = load i32*, i32** %16, align 8
  %54 = load i32*, i32** %17, align 8
  %55 = call i32 @mlx5_ib_cont_pages(i8* %49, i32 %50, i32* %51, i32* %52, i32* %53, i32* %54)
  %56 = load i32*, i32** %14, align 8
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %69, label %59

59:                                               ; preds = %47
  %60 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %61 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %62 = load %struct.ib_umem*, %struct.ib_umem** %19, align 8
  %63 = bitcast %struct.ib_umem* %62 to i8*
  %64 = call i32 @ib_umem_release(i8* %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call i8* @ERR_PTR(i32 %66)
  %68 = bitcast i8* %67 to %struct.ib_umem*
  store %struct.ib_umem* %68, %struct.ib_umem** %9, align 8
  br label %81

69:                                               ; preds = %47
  %70 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %18, align 8
  %71 = load i32*, i32** %14, align 8
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %16, align 8
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %17, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %15, align 8
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev* %70, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %72, i32 %74, i32 %76, i32 %78)
  %80 = load %struct.ib_umem*, %struct.ib_umem** %19, align 8
  store %struct.ib_umem* %80, %struct.ib_umem** %9, align 8
  br label %81

81:                                               ; preds = %69, %59, %38
  %82 = load %struct.ib_umem*, %struct.ib_umem** %9, align 8
  ret %struct.ib_umem* %82
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i8* @ib_umem_get(i32, i32, i32, i32, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @mlx5_ib_err(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i32 @mlx5_ib_cont_pages(i8*, i32, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @ib_umem_release(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
