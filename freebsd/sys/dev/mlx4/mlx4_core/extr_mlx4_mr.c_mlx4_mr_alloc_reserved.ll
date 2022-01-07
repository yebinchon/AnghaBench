; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_mr_alloc_reserved.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_mr_alloc_reserved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mr = type { i32, i32, i32, i8*, i8*, i8*, i8* }

@MLX4_MPT_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i8*, i8*, i8*, i8*, i8*, i32, i32, %struct.mlx4_mr*)* @mlx4_mr_alloc_reserved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_mr_alloc_reserved(%struct.mlx4_dev* %0, i8* %1, i8* %2, i8* %3, i8* %4, i8* %5, i32 %6, i32 %7, %struct.mlx4_mr* %8) #0 {
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mlx4_mr*, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %10, align 8
  store i8* %1, i8** %11, align 8
  store i8* %2, i8** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.mlx4_mr* %8, %struct.mlx4_mr** %18, align 8
  %19 = load i8*, i8** %13, align 8
  %20 = load %struct.mlx4_mr*, %struct.mlx4_mr** %18, align 8
  %21 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %20, i32 0, i32 6
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = load %struct.mlx4_mr*, %struct.mlx4_mr** %18, align 8
  %24 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %23, i32 0, i32 5
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.mlx4_mr*, %struct.mlx4_mr** %18, align 8
  %27 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load i8*, i8** %15, align 8
  %29 = load %struct.mlx4_mr*, %struct.mlx4_mr** %18, align 8
  %30 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %29, i32 0, i32 3
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* @MLX4_MPT_DISABLED, align 4
  %32 = load %struct.mlx4_mr*, %struct.mlx4_mr** %18, align 8
  %33 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @hw_index_to_key(i8* %34)
  %36 = load %struct.mlx4_mr*, %struct.mlx4_mr** %18, align 8
  %37 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %39 = load i32, i32* %16, align 4
  %40 = load i32, i32* %17, align 4
  %41 = load %struct.mlx4_mr*, %struct.mlx4_mr** %18, align 8
  %42 = getelementptr inbounds %struct.mlx4_mr, %struct.mlx4_mr* %41, i32 0, i32 0
  %43 = call i32 @mlx4_mtt_init(%struct.mlx4_dev* %38, i32 %39, i32 %40, i32* %42)
  ret i32 %43
}

declare dso_local i32 @hw_index_to_key(i8*) #1

declare dso_local i32 @mlx4_mtt_init(%struct.mlx4_dev*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
