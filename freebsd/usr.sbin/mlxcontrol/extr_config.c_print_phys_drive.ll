; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_config.c_print_phys_drive.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/mlxcontrol/extr_config.c_print_phys_drive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.conf_config = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx_phys_drv* }
%struct.mlx_phys_drv = type { i32 }

@MLX_PHYS_DRV_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"# \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.conf_config*, i32, i32)* @print_phys_drive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_phys_drive(%struct.conf_config* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.conf_config*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx_phys_drv*, align 8
  store %struct.conf_config* %0, %struct.conf_config** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.conf_config*, %struct.conf_config** %4, align 8
  %9 = getelementptr inbounds %struct.conf_config, %struct.conf_config* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.mlx_phys_drv*, %struct.mlx_phys_drv** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = mul nsw i32 %12, 16
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.mlx_phys_drv, %struct.mlx_phys_drv* %11, i64 %16
  store %struct.mlx_phys_drv* %17, %struct.mlx_phys_drv** %7, align 8
  %18 = load %struct.mlx_phys_drv*, %struct.mlx_phys_drv** %7, align 8
  %19 = getelementptr inbounds %struct.mlx_phys_drv, %struct.mlx_phys_drv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @MLX_PHYS_DRV_PRESENT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  br label %30

25:                                               ; preds = %3
  %26 = load %struct.mlx_phys_drv*, %struct.mlx_phys_drv** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @mlx_print_phys_drv(%struct.mlx_phys_drv* %26, i32 %27, i32 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %30

30:                                               ; preds = %25, %24
  ret void
}

declare dso_local i32 @mlx_print_phys_drv(%struct.mlx_phys_drv*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
