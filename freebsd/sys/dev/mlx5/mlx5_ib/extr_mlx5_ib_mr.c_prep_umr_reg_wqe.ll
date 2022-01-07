; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_prep_umr_reg_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mr.c_prep_umr_reg_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { i32 }
%struct.ib_send_wr = type { i64 }
%struct.ib_sge = type { i32 }
%struct.mlx5_umr_wr = type { i32, %struct.ib_pd*, i8*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_pd*, %struct.ib_send_wr*, %struct.ib_sge*, i8*, i32, i32, i32, i8*, i8*, i32)* @prep_umr_reg_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @prep_umr_reg_wqe(%struct.ib_pd* %0, %struct.ib_send_wr* %1, %struct.ib_sge* %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7, i8* %8, i32 %9) #0 {
  %11 = alloca %struct.ib_pd*, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca %struct.ib_sge*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.mlx5_umr_wr*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %11, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %12, align 8
  store %struct.ib_sge* %2, %struct.ib_sge** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i8* %7, i8** %18, align 8
  store i8* %8, i8** %19, align 8
  store i32 %9, i32* %20, align 4
  %22 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %23 = call %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr* %22)
  store %struct.mlx5_umr_wr* %23, %struct.mlx5_umr_wr** %21, align 8
  %24 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %26 = load %struct.ib_sge*, %struct.ib_sge** %13, align 8
  %27 = load i8*, i8** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %17, align 4
  %31 = call i32 @prep_umr_wqe_common(%struct.ib_pd* %24, %struct.ib_send_wr* %25, %struct.ib_sge* %26, i8* %27, i32 %28, i32 %29, i32 %30)
  %32 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %33 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load i8*, i8** %18, align 8
  %35 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %21, align 8
  %36 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store i8* %34, i8** %37, align 8
  %38 = load i8*, i8** %19, align 8
  %39 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %21, align 8
  %40 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %39, i32 0, i32 2
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %20, align 4
  %42 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %21, align 8
  %43 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.ib_pd*, %struct.ib_pd** %11, align 8
  %45 = load %struct.mlx5_umr_wr*, %struct.mlx5_umr_wr** %21, align 8
  %46 = getelementptr inbounds %struct.mlx5_umr_wr, %struct.mlx5_umr_wr* %45, i32 0, i32 1
  store %struct.ib_pd* %44, %struct.ib_pd** %46, align 8
  ret void
}

declare dso_local %struct.mlx5_umr_wr* @umr_wr(%struct.ib_send_wr*) #1

declare dso_local i32 @prep_umr_wqe_common(%struct.ib_pd*, %struct.ib_send_wr*, %struct.ib_sge*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
