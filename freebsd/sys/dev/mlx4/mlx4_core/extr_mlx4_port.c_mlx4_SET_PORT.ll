; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_port.c_mlx4_SET_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32*, i32* }
%struct.mlx4_cmd_mailbox = type { i32, i64 }

@MLX4_PORT_TYPE_ETH = common dso_local global i64 0, align 8
@MLX4_CHANGE_PORT_MTU_CAP = common dso_local global i32 0, align 4
@MLX4_CHANGE_PORT_VL_CAP = common dso_local global i32 0, align 4
@MLX4_CHANGE_PORT_PKEY_TBL_SZ = common dso_local global i32 0, align 4
@MLX4_SET_PORT_MTU_CAP = common dso_local global i32 0, align 4
@MLX4_SET_PORT_VL_CAP = common dso_local global i32 0, align 4
@MLX4_SET_PORT_IB_OPCODE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_PORT(%struct.mlx4_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = load i64, i64* %6, align 8
  %17 = getelementptr inbounds i64, i64* %15, i64 %16
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX4_PORT_TYPE_ETH, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %116

22:                                               ; preds = %3
  %23 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %24 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %23)
  store %struct.mlx4_cmd_mailbox* %24, %struct.mlx4_cmd_mailbox** %8, align 8
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %26 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %30 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %29)
  store i32 %30, i32* %4, align 4
  br label %116

31:                                               ; preds = %22
  %32 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %40 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %38, i32* %43, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp sge i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %31
  %47 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %48 = call i64 @mlx4_is_master(%struct.mlx4_dev* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  store i32 1, i32* %11, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @cpu_to_be16(i32 %51)
  %53 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %54 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  %57 = getelementptr inbounds i32, i32* %56, i64 20
  store i32 %52, i32* %57, align 4
  br label %58

58:                                               ; preds = %50, %46, %31
  store i32 8, i32* %10, align 4
  br label %59

59:                                               ; preds = %108, %58
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 1
  br i1 %61, label %62, label %111

62:                                               ; preds = %59
  %63 = load i32, i32* @MLX4_CHANGE_PORT_MTU_CAP, align 4
  %64 = shl i32 1, %63
  %65 = load i32, i32* @MLX4_CHANGE_PORT_VL_CAP, align 4
  %66 = shl i32 1, %65
  %67 = or i32 %64, %66
  %68 = load i32, i32* %11, align 4
  %69 = load i32, i32* @MLX4_CHANGE_PORT_PKEY_TBL_SZ, align 4
  %70 = shl i32 %68, %69
  %71 = or i32 %67, %70
  %72 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %73 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32*, i32** %74, align 8
  %76 = load i64, i64* %6, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @MLX4_SET_PORT_MTU_CAP, align 4
  %80 = shl i32 %78, %79
  %81 = or i32 %71, %80
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @MLX4_SET_PORT_VL_CAP, align 4
  %84 = shl i32 %82, %83
  %85 = or i32 %81, %84
  %86 = call i32 @cpu_to_be32(i32 %85)
  %87 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %88 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %86, i32* %91, align 4
  %92 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %93 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %94 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = load i32, i32* @MLX4_SET_PORT_IB_OPCODE, align 4
  %98 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %99 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %100 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %101 = call i32 @mlx4_cmd(%struct.mlx4_dev* %92, i32 %95, i64 %96, i32 %97, i32 %98, i32 %99, i32 %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp ne i32 %102, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %62
  br label %111

107:                                              ; preds = %62
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %10, align 4
  %110 = ashr i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %59

111:                                              ; preds = %106, %59
  %112 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %113 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %8, align 8
  %114 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %112, %struct.mlx4_cmd_mailbox* %113)
  %115 = load i32, i32* %9, align 4
  store i32 %115, i32* %4, align 4
  br label %116

116:                                              ; preds = %111, %28, %21
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i64 @mlx4_is_master(%struct.mlx4_dev*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i64, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
