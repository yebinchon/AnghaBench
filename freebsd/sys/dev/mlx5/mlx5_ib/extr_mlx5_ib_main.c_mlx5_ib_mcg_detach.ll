; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_mcg_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_mcg_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_qp = type { i32, i32 }
%union.ib_gid = type { i32 }
%struct.mlx5_ib_dev = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"failed detaching QPN 0x%x, MGID %pI6\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_qp*, %union.ib_gid*, i32)* @mlx5_ib_mcg_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_mcg_detach(%struct.ib_qp* %0, %union.ib_gid* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_qp*, align 8
  %5 = alloca %union.ib_gid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_ib_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.ib_qp* %0, %struct.ib_qp** %4, align 8
  store %union.ib_gid* %1, %union.ib_gid** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %10 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx5_ib_dev* @to_mdev(i32 %11)
  store %struct.mlx5_ib_dev* %12, %struct.mlx5_ib_dev** %7, align 8
  %13 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %17 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %18 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @mlx5_core_detach_mcg(i32 %15, %union.ib_gid* %16, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %3
  %24 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %7, align 8
  %25 = load %struct.ib_qp*, %struct.ib_qp** %4, align 8
  %26 = getelementptr inbounds %struct.ib_qp, %struct.ib_qp* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %union.ib_gid*, %union.ib_gid** %5, align 8
  %29 = bitcast %union.ib_gid* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %24, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %23, %3
  %33 = load i32, i32* %8, align 4
  ret i32 %33
}

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @mlx5_core_detach_mcg(i32, %union.ib_gid*, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
