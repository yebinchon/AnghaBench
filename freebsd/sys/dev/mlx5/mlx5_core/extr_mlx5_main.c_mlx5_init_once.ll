; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_init_once.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_main.c_mlx5_init_once.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_priv = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"Unable to find vendor specific capabilities\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"query hca failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"query board id failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"failed to initialize eq\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"failed to initialize cq table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_priv*)* @mlx5_init_once to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_init_once(%struct.mlx5_core_dev* %0, %struct.mlx5_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_priv* %1, %struct.mlx5_priv** %5, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %8 = call i32 @mlx5_vsc_find_cap(%struct.mlx5_core_dev* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %13 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %12, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %2
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %16 = call i32 @mlx5_query_hca_caps(%struct.mlx5_core_dev* %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %21 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %20, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  br label %63

22:                                               ; preds = %14
  %23 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %24 = call i32 @mlx5_query_board_id(%struct.mlx5_core_dev* %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %29 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %28, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %63

30:                                               ; preds = %22
  %31 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %32 = call i32 @mlx5_eq_init(%struct.mlx5_core_dev* %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %37 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  br label %63

38:                                               ; preds = %30
  %39 = load %struct.mlx5_priv*, %struct.mlx5_priv** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_priv, %struct.mlx5_priv* %39, i32 0, i32 0
  %41 = call i32 @MLX5_INIT_DOORBELL_LOCK(i32* %40)
  %42 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %43 = call i32 @mlx5_init_cq_table(%struct.mlx5_core_dev* %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %38
  %47 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %48 = call i32 @mlx5_core_err(%struct.mlx5_core_dev* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  br label %60

49:                                               ; preds = %38
  %50 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %51 = call i32 @mlx5_init_qp_table(%struct.mlx5_core_dev* %50)
  %52 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %53 = call i32 @mlx5_init_srq_table(%struct.mlx5_core_dev* %52)
  %54 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %55 = call i32 @mlx5_init_mr_table(%struct.mlx5_core_dev* %54)
  %56 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %57 = call i32 @mlx5_init_reserved_gids(%struct.mlx5_core_dev* %56)
  %58 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %59 = call i32 @mlx5_fpga_init(%struct.mlx5_core_dev* %58)
  store i32 0, i32* %3, align 4
  br label %65

60:                                               ; preds = %46
  %61 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %62 = call i32 @mlx5_eq_cleanup(%struct.mlx5_core_dev* %61)
  br label %63

63:                                               ; preds = %60, %35, %27, %19
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %49
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @mlx5_vsc_find_cap(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_err(%struct.mlx5_core_dev*, i8*) #1

declare dso_local i32 @mlx5_query_hca_caps(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_query_board_id(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @MLX5_INIT_DOORBELL_LOCK(i32*) #1

declare dso_local i32 @mlx5_init_cq_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_qp_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_srq_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_mr_table(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_init_reserved_gids(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_fpga_init(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_eq_cleanup(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
