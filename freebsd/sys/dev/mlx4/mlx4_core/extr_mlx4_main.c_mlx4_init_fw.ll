; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_init_fw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_main.c_mlx4_init_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_mod_stat_cfg = type { i32, i64 }

@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"non-primary physical function, skipping\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"QUERY_FW command failed, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to start FW, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Failed to override log_pg_sz parameter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*)* @mlx4_init_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_init_fw(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_mod_stat_cfg, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %47, label %9

9:                                                ; preds = %1
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %11 = call i32 @mlx4_QUERY_FW(%struct.mlx4_dev* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EACCES, align 4
  %17 = sub nsw i32 0, %16
  %18 = icmp eq i32 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %14
  %20 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %21 = call i32 @mlx4_info(%struct.mlx4_dev* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %25

22:                                               ; preds = %14
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %24 = call i32 @mlx4_err(%struct.mlx4_dev* %23, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %49

27:                                               ; preds = %9
  %28 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %29 = call i32 @mlx4_load_fw(%struct.mlx4_dev* %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %34 = call i32 @mlx4_err(%struct.mlx4_dev* %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %49

36:                                               ; preds = %27
  %37 = getelementptr inbounds %struct.mlx4_mod_stat_cfg, %struct.mlx4_mod_stat_cfg* %4, i32 0, i32 0
  store i32 1, i32* %37, align 8
  %38 = getelementptr inbounds %struct.mlx4_mod_stat_cfg, %struct.mlx4_mod_stat_cfg* %4, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %40 = call i32 @mlx4_MOD_STAT_CFG(%struct.mlx4_dev* %39, %struct.mlx4_mod_stat_cfg* %4)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %45 = call i32 @mlx4_warn(%struct.mlx4_dev* %44, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %46

46:                                               ; preds = %43, %36
  br label %47

47:                                               ; preds = %46, %1
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %47, %32, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_QUERY_FW(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_info(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_err(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @mlx4_load_fw(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_MOD_STAT_CFG(%struct.mlx4_dev*, %struct.mlx4_mod_stat_cfg*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
