; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_reset_roce_port_gids.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_reset_roce_port_gids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.mlx4_dev = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }
%struct.mlx4_roce_gid_entry = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@MLX4_MAILBOX_SIZE = common dso_local global i32 0, align 4
@zgid_entry = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@MLX4_ROCE_GID_ENTRY_SIZE = common dso_local global i32 0, align 4
@MLX4_ROCE_MAX_GIDS = common dso_local global i32 0, align 4
@MLX4_SET_PORT_GID_TABLE = common dso_local global i32 0, align 4
@MLX4_SET_PORT_ETH_OPCODE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_NATIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_dev*, i32, i32, %struct.mlx4_cmd_mailbox*)* @mlx4_reset_roce_port_gids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_reset_roce_port_gids(%struct.mlx4_dev* %0, i32 %1, i32 %2, %struct.mlx4_cmd_mailbox* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca %struct.mlx4_roce_gid_entry*, align 8
  %10 = alloca %struct.mlx4_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.mlx4_cmd_mailbox* %3, %struct.mlx4_cmd_mailbox** %8, align 8
  %16 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %17 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %16)
  store %struct.mlx4_priv* %17, %struct.mlx4_priv** %10, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mlx4_get_slave_num_gids(%struct.mlx4_dev* %18, i32 %19, i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @mlx4_get_base_gid_ix(%struct.mlx4_dev* %22, i32 %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %27 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* @MLX4_MAILBOX_SIZE, align 4
  %30 = call i32 @memset(i64 %28, i32 0, i32 %29)
  %31 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %32 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %31, i32 0, i32 0
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  store i32 0, i32* %14, align 4
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %63, %4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %68

45:                                               ; preds = %41
  %46 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %47 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %46, i32 0, i32 0
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 1
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @zgid_entry, i32 0, i32 0), align 4
  %61 = load i32, i32* @MLX4_ROCE_GID_ENTRY_SIZE, align 4
  %62 = call i32 @memcpy(i32 %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %45
  %64 = load i32, i32* %13, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %13, align 4
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %14, align 4
  br label %41

68:                                               ; preds = %41
  %69 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %70 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.mlx4_roce_gid_entry*
  store %struct.mlx4_roce_gid_entry* %72, %struct.mlx4_roce_gid_entry** %9, align 8
  store i32 0, i32* %14, align 4
  br label %73

73:                                               ; preds = %97, %68
  %74 = load i32, i32* %14, align 4
  %75 = load i32, i32* @MLX4_ROCE_MAX_GIDS, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %102

77:                                               ; preds = %73
  %78 = load %struct.mlx4_roce_gid_entry*, %struct.mlx4_roce_gid_entry** %9, align 8
  %79 = getelementptr inbounds %struct.mlx4_roce_gid_entry, %struct.mlx4_roce_gid_entry* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %82 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @MLX4_ROCE_GID_ENTRY_SIZE, align 4
  %96 = call i32 @memcpy(i32 %80, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %77
  %98 = load %struct.mlx4_roce_gid_entry*, %struct.mlx4_roce_gid_entry** %9, align 8
  %99 = getelementptr inbounds %struct.mlx4_roce_gid_entry, %struct.mlx4_roce_gid_entry* %98, i32 1
  store %struct.mlx4_roce_gid_entry* %99, %struct.mlx4_roce_gid_entry** %9, align 8
  %100 = load i32, i32* %14, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %14, align 4
  br label %73

102:                                              ; preds = %73
  %103 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %104 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %105 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* @MLX4_SET_PORT_GID_TABLE, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %107, %109
  %111 = load i32, i32* @MLX4_SET_PORT_ETH_OPCODE, align 4
  %112 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %113 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %114 = load i32, i32* @MLX4_CMD_NATIVE, align 4
  %115 = call i32 @mlx4_cmd(%struct.mlx4_dev* %103, i32 %106, i32 %110, i32 %111, i32 %112, i32 %113, i32 %114)
  store i32 %115, i32* %15, align 4
  %116 = load %struct.mlx4_priv*, %struct.mlx4_priv** %10, align 8
  %117 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %116, i32 0, i32 0
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %15, align 4
  ret i32 %125
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_get_slave_num_gids(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @mlx4_get_base_gid_ix(%struct.mlx4_dev*, i32, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
