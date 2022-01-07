; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_umem_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_mlx5_ib_umem_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_pd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ib_umem = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"umem_get failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"bad offset\0A\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"addr 0x%lx, size %zu, npages %d, page_shift %d, ncont %d, offset %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_dev*, %struct.ib_pd*, i64, i64, %struct.ib_umem**, i32*, i32*, i32*, i32*)* @mlx5_ib_umem_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_umem_get(%struct.mlx5_ib_dev* %0, %struct.ib_pd* %1, i64 %2, i64 %3, %struct.ib_umem** %4, i32* %5, i32* %6, i32* %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.mlx5_ib_dev*, align 8
  %12 = alloca %struct.ib_pd*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ib_umem**, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %11, align 8
  store %struct.ib_pd* %1, %struct.ib_pd** %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store %struct.ib_umem** %4, %struct.ib_umem*** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32* %7, i32** %18, align 8
  store i32* %8, i32** %19, align 8
  %21 = load %struct.ib_pd*, %struct.ib_pd** %12, align 8
  %22 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call %struct.ib_umem* @ib_umem_get(i32 %25, i64 %26, i64 %27, i32 0, i32 0)
  %29 = load %struct.ib_umem**, %struct.ib_umem*** %15, align 8
  store %struct.ib_umem* %28, %struct.ib_umem** %29, align 8
  %30 = load %struct.ib_umem**, %struct.ib_umem*** %15, align 8
  %31 = load %struct.ib_umem*, %struct.ib_umem** %30, align 8
  %32 = call i64 @IS_ERR(%struct.ib_umem* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %9
  %35 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %36 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %35, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.ib_umem**, %struct.ib_umem*** %15, align 8
  %38 = load %struct.ib_umem*, %struct.ib_umem** %37, align 8
  %39 = call i32 @PTR_ERR(%struct.ib_umem* %38)
  store i32 %39, i32* %10, align 4
  br label %77

40:                                               ; preds = %9
  %41 = load %struct.ib_umem**, %struct.ib_umem*** %15, align 8
  %42 = load %struct.ib_umem*, %struct.ib_umem** %41, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32*, i32** %16, align 8
  %45 = load i32*, i32** %17, align 8
  %46 = load i32*, i32** %18, align 8
  %47 = call i32 @mlx5_ib_cont_pages(%struct.ib_umem* %42, i64 %43, i32* %44, i32* %45, i32* %46, i32* null)
  %48 = load i64, i64* %13, align 8
  %49 = load i32*, i32** %17, align 8
  %50 = load i32, i32* %49, align 4
  %51 = load i32*, i32** %19, align 8
  %52 = call i32 @mlx5_ib_get_buf_offset(i64 %48, i32 %50, i32* %51)
  store i32 %52, i32* %20, align 4
  %53 = load i32, i32* %20, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %40
  %56 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %57 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %56, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %71

58:                                               ; preds = %40
  %59 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %11, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i64, i64* %14, align 8
  %62 = load i32*, i32** %16, align 8
  %63 = load i32, i32* %62, align 4
  %64 = load i32*, i32** %17, align 8
  %65 = load i32, i32* %64, align 4
  %66 = load i32*, i32** %18, align 8
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %19, align 8
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.mlx5_ib_dev*, i8*, ...) @mlx5_ib_dbg(%struct.mlx5_ib_dev* %59, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i64 %60, i64 %61, i32 %63, i32 %65, i32 %67, i32 %69)
  store i32 0, i32* %10, align 4
  br label %77

71:                                               ; preds = %55
  %72 = load %struct.ib_umem**, %struct.ib_umem*** %15, align 8
  %73 = load %struct.ib_umem*, %struct.ib_umem** %72, align 8
  %74 = call i32 @ib_umem_release(%struct.ib_umem* %73)
  %75 = load %struct.ib_umem**, %struct.ib_umem*** %15, align 8
  store %struct.ib_umem* null, %struct.ib_umem** %75, align 8
  %76 = load i32, i32* %20, align 4
  store i32 %76, i32* %10, align 4
  br label %77

77:                                               ; preds = %71, %58, %34
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local %struct.ib_umem* @ib_umem_get(i32, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ib_umem*) #1

declare dso_local i32 @mlx5_ib_dbg(%struct.mlx5_ib_dev*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.ib_umem*) #1

declare dso_local i32 @mlx5_ib_cont_pages(%struct.ib_umem*, i64, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @mlx5_ib_get_buf_offset(i64, i32, i32*) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*) #1

declare dso_local i32 @ib_umem_release(%struct.ib_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
