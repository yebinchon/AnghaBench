; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_update_gids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_update_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gid_entry = type { i32 }
%struct.mlx4_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX4_DEV_CAP_FLAG2_ROCE_V1_V2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gid_entry*, %struct.mlx4_ib_dev*, i32)* @mlx4_ib_update_gids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_update_gids(%struct.gid_entry* %0, %struct.mlx4_ib_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gid_entry*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca i32, align 4
  store %struct.gid_entry* %0, %struct.gid_entry** %5, align 8
  store %struct.mlx4_ib_dev* %1, %struct.mlx4_ib_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %9 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @MLX4_DEV_CAP_FLAG2_ROCE_V1_V2, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.gid_entry*, %struct.gid_entry** %5, align 8
  %19 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mlx4_ib_update_gids_v1_v2(%struct.gid_entry* %18, %struct.mlx4_ib_dev* %19, i32 %20)
  store i32 %21, i32* %4, align 4
  br label %27

22:                                               ; preds = %3
  %23 = load %struct.gid_entry*, %struct.gid_entry** %5, align 8
  %24 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mlx4_ib_update_gids_v1(%struct.gid_entry* %23, %struct.mlx4_ib_dev* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %22, %17
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @mlx4_ib_update_gids_v1_v2(%struct.gid_entry*, %struct.mlx4_ib_dev*, i32) #1

declare dso_local i32 @mlx4_ib_update_gids_v1(%struct.gid_entry*, %struct.mlx4_ib_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
