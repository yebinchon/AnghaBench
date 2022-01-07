; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_update_gids_v1.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_update_gids_v1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gid_entry = type { i32 }
%struct.mlx4_ib_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, %union.ib_gid* }
%union.ib_gid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX4_MAX_PORT_GIDS = common dso_local global i32 0, align 4
@MLX4_SET_PORT_GID_TABLE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gid_entry*, %struct.mlx4_ib_dev*, i32)* @mlx4_ib_update_gids_v1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_update_gids_v1(%struct.gid_entry* %0, %struct.mlx4_ib_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gid_entry*, align 8
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %union.ib_gid*, align 8
  store %struct.gid_entry* %0, %struct.gid_entry** %5, align 8
  store %struct.mlx4_ib_dev* %1, %struct.mlx4_ib_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %13, i32 0, i32 0
  %15 = load %struct.mlx4_dev*, %struct.mlx4_dev** %14, align 8
  store %struct.mlx4_dev* %15, %struct.mlx4_dev** %10, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %17 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %16)
  store %struct.mlx4_cmd_mailbox* %17, %struct.mlx4_cmd_mailbox** %8, align 8
  %18 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %19 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %81

24:                                               ; preds = %3
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %26 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %25, i32 0, i32 1
  %27 = load %union.ib_gid*, %union.ib_gid** %26, align 8
  store %union.ib_gid* %27, %union.ib_gid** %12, align 8
  store i32 0, i32* %11, align 4
  br label %28

28:                                               ; preds = %43, %24
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @MLX4_MAX_PORT_GIDS, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %28
  %33 = load %union.ib_gid*, %union.ib_gid** %12, align 8
  %34 = load i32, i32* %11, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %union.ib_gid, %union.ib_gid* %33, i64 %35
  %37 = load %struct.gid_entry*, %struct.gid_entry** %5, align 8
  %38 = load i32, i32* %11, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %37, i64 %39
  %41 = getelementptr inbounds %struct.gid_entry, %struct.gid_entry* %40, i32 0, i32 0
  %42 = call i32 @memcpy(%union.ib_gid* %36, i32* %41, i32 4)
  br label %43

43:                                               ; preds = %32
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %28

46:                                               ; preds = %28
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %48 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %49 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @MLX4_SET_PORT_GID_TABLE, align 4
  %52 = shl i32 %51, 8
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %56 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %57 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %58 = call i32 @mlx4_cmd(%struct.mlx4_dev* %47, i32 %50, i32 %54, i32 1, i32 %55, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %60 = call i64 @mlx4_is_bonded(%struct.mlx4_dev* %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %46
  %63 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %64 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %65 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MLX4_SET_PORT_GID_TABLE, align 4
  %68 = shl i32 %67, 8
  %69 = or i32 %68, 2
  %70 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %71 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %72 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %73 = call i32 @mlx4_cmd(%struct.mlx4_dev* %63, i32 %66, i32 %69, i32 1, i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %62, %46
  %77 = load %struct.mlx4_dev*, %struct.mlx4_dev** %10, align 8
  %78 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %79 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %77, %struct.mlx4_cmd_mailbox* %78)
  %80 = load i32, i32* %9, align 4
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %76, %21
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @memcpy(%union.ib_gid*, i32*, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @mlx4_is_bonded(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
