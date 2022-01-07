; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_destroy_qp_user.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_destroy_qp_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_pd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_ib_qp = type { i32, i32 }
%struct.mlx5_ib_qp_base = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.mlx5_ib_ucontext = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_pd*, %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp_base*)* @destroy_qp_user to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_qp_user(%struct.ib_pd* %0, %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp_base* %2) #0 {
  %4 = alloca %struct.ib_pd*, align 8
  %5 = alloca %struct.mlx5_ib_qp*, align 8
  %6 = alloca %struct.mlx5_ib_qp_base*, align 8
  %7 = alloca %struct.mlx5_ib_ucontext*, align 8
  store %struct.ib_pd* %0, %struct.ib_pd** %4, align 8
  store %struct.mlx5_ib_qp* %1, %struct.mlx5_ib_qp** %5, align 8
  store %struct.mlx5_ib_qp_base* %2, %struct.mlx5_ib_qp_base** %6, align 8
  %8 = load %struct.ib_pd*, %struct.ib_pd** %4, align 8
  %9 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.mlx5_ib_ucontext* @to_mucontext(i32 %12)
  store %struct.mlx5_ib_ucontext* %13, %struct.mlx5_ib_ucontext** %7, align 8
  %14 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %7, align 8
  %15 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %15, i32 0, i32 1
  %17 = call i32 @mlx5_ib_db_unmap_user(%struct.mlx5_ib_ucontext* %14, i32* %16)
  %18 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.mlx5_ib_qp_base*, %struct.mlx5_ib_qp_base** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5_ib_qp_base, %struct.mlx5_ib_qp_base* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ib_umem_release(i64 %27)
  br label %29

29:                                               ; preds = %23, %3
  %30 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %7, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %30, i32 0, i32 0
  %32 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @free_uuar(i32* %31, i32 %34)
  ret void
}

declare dso_local %struct.mlx5_ib_ucontext* @to_mucontext(i32) #1

declare dso_local i32 @mlx5_ib_db_unmap_user(%struct.mlx5_ib_ucontext*, i32*) #1

declare dso_local i32 @ib_umem_release(i64) #1

declare dso_local i32 @free_uuar(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
