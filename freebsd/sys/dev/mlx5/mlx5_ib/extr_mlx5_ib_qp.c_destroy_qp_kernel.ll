; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_destroy_qp_kernel.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_destroy_qp_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.mlx5_ib_qp = type { %struct.TYPE_9__*, i32, %struct.TYPE_7__, %struct.TYPE_10__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_qp*)* @destroy_qp_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_qp_kernel(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_qp* %1) #0 {
  %3 = alloca %struct.mlx5_ib_dev*, align 8
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %3, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %4, align 8
  %5 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %8, i32 0, i32 4
  %10 = call i32 @mlx5_db_free(%struct.TYPE_11__* %7, i32* %9)
  %11 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %11, i32 0, i32 3
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @kfree(i32 %14)
  %16 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kfree(i32 %19)
  %21 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @kfree(i32 %24)
  %26 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @kfree(i32 %29)
  %31 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @kfree(i32 %34)
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %37, align 8
  %39 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %39, i32 0, i32 1
  %41 = call i32 @mlx5_buf_free(%struct.TYPE_11__* %38, i32* %40)
  %42 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %47, i32 0, i32 0
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @free_uuar(i32* %46, i32 %51)
  ret void
}

declare dso_local i32 @mlx5_db_free(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @mlx5_buf_free(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @free_uuar(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
