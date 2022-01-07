; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_config_mad_demux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_fw.c_mlx4_config_mad_demux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32 }

@MLX4_DEV_CAP_FLAG2_MAD_DEMUX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Failed to allocate mailbox for cmd MAD_DEMUX\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MLX4_CMD_MAD_DEMUX_QUERY_RESTR = common dso_local global i32 0, align 4
@MLX4_CMD_MAD_DEMUX = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"MLX4_CMD_MAD_DEMUX: query restrictions failed (%d)\0A\00", align 1
@MLX4_FLAG_SECURE_HOST = common dso_local global i32 0, align 4
@MLX4_CMD_MAD_DEMUX_CONFIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [43 x i8] c"MLX4_CMD_MAD_DEMUX: configure failed (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"HCA operating in secure-host mode. SMP firewall activated.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_config_mad_demux(%struct.mlx4_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %3, align 8
  %6 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MLX4_DEV_CAP_FLAG2_MAD_DEMUX, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %84

14:                                               ; preds = %1
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %16 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %15)
  store %struct.mlx4_cmd_mailbox* %16, %struct.mlx4_cmd_mailbox** %4, align 8
  %17 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %18 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %22 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %21, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %84

25:                                               ; preds = %14
  %26 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %27 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %28 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @MLX4_CMD_MAD_DEMUX_QUERY_RESTR, align 4
  %31 = load i32, i32* @MLX4_CMD_MAD_DEMUX, align 4
  %32 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %33 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %34 = call i32 @mlx4_cmd_box(%struct.mlx4_dev* %26, i32 0, i32 %29, i32 1, i32 %30, i32 %31, i32 %32, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %25
  %38 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  br label %79

41:                                               ; preds = %25
  %42 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %43 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %44 = call i64 @mlx4_check_smp_firewall_active(%struct.mlx4_dev* %42, %struct.mlx4_cmd_mailbox* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load i32, i32* @MLX4_FLAG_SECURE_HOST, align 4
  %48 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %49 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %54 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %55 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MLX4_CMD_MAD_DEMUX_CONFIG, align 4
  %58 = load i32, i32* @MLX4_CMD_MAD_DEMUX, align 4
  %59 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %60 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %61 = call i32 @mlx4_cmd(%struct.mlx4_dev* %53, i32 %56, i32 1, i32 %57, i32 %58, i32 %59, i32 %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %52
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %65, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %66)
  br label %79

68:                                               ; preds = %52
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MLX4_FLAG_SECURE_HOST, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %68
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %77 = call i32 (%struct.mlx4_dev*, i8*, ...) @mlx4_warn(%struct.mlx4_dev* %76, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  br label %78

78:                                               ; preds = %75, %68
  br label %79

79:                                               ; preds = %78, %64, %37
  %80 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %81 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %4, align 8
  %82 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %80, %struct.mlx4_cmd_mailbox* %81)
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %84

84:                                               ; preds = %79, %20, %13
  %85 = load i32, i32* %2, align 4
  ret i32 %85
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, ...) #1

declare dso_local i32 @mlx4_cmd_box(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_check_smp_firewall_active(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
