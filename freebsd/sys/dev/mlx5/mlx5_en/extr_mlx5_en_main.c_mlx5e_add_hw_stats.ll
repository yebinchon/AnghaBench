; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_add_hw_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_add_hw_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@OID_AUTO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"fw_version\00", align 1
@CTLTYPE_STRING = common dso_local global i32 0, align 4
@CTLFLAG_RD = common dso_local global i32 0, align 4
@sysctl_firmware = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"HCA firmware version\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"board_id\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"Board ID\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_add_hw_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_add_hw_stats(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %3 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %4 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %3, i32 0, i32 2
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @SYSCTL_CHILDREN(i32 %7)
  %9 = load i32, i32* @OID_AUTO, align 4
  %10 = load i32, i32* @CTLTYPE_STRING, align 4
  %11 = load i32, i32* @CTLFLAG_RD, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %14 = load i32, i32* @sysctl_firmware, align 4
  %15 = call i32 @SYSCTL_ADD_PROC(i32* %4, i32 %8, i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %12, %struct.mlx5e_priv* %13, i32 0, i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %16 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %16, i32 0, i32 2
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @SYSCTL_CHILDREN(i32 %20)
  %22 = load i32, i32* @OID_AUTO, align 4
  %23 = load i32, i32* @CTLFLAG_RD, align 4
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @SYSCTL_ADD_STRING(i32* %17, i32 %21, i32 %22, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %23, i32 %28, i32 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  ret void
}

declare dso_local i32 @SYSCTL_ADD_PROC(i32*, i32, i32, i8*, i32, %struct.mlx5e_priv*, i32, i32, i8*, i8*) #1

declare dso_local i32 @SYSCTL_CHILDREN(i32) #1

declare dso_local i32 @SYSCTL_ADD_STRING(i32*, i32, i32, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
