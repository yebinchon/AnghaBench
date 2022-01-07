; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_set_mr_fileds.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_set_mr_fileds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_ib_mr = type { i32, i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_dev*, %struct.mlx5_ib_mr*, i32, i32, i32)* @set_mr_fileds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_mr_fileds(%struct.mlx5_ib_dev* %0, %struct.mlx5_ib_mr* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mlx5_ib_dev*, align 8
  %7 = alloca %struct.mlx5_ib_mr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %6, align 8
  store %struct.mlx5_ib_mr* %1, %struct.mlx5_ib_mr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 0
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = call i32 @atomic_add(i32 %14, i32* %19)
  %21 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 4
  %28 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %29 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.mlx5_ib_mr*, %struct.mlx5_ib_mr** %7, align 8
  %41 = getelementptr inbounds %struct.mlx5_ib_mr, %struct.mlx5_ib_mr* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  ret void
}

declare dso_local i32 @atomic_add(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
