; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_SET_PORT.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_main.c_mlx4_ib_SET_PORT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_cmd_mailbox = type { i32, i64 }

@MLX4_FLAG_OLD_PORT_CMDS = common dso_local global i32 0, align 4
@MLX4_SET_PORT_IB_OPCODE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_PORT = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_ib_dev*, i32, i32, i32)* @mlx4_ib_SET_PORT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_ib_SET_PORT(%struct.mlx4_ib_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx4_ib_dev* %0, %struct.mlx4_ib_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %13 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_4__* %14)
  store %struct.mlx4_cmd_mailbox* %15, %struct.mlx4_cmd_mailbox** %10, align 8
  %16 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %17 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %21 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %20)
  store i32 %21, i32* %5, align 4
  br label %86

22:                                               ; preds = %4
  %23 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %24 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX4_FLAG_OLD_PORT_CMDS, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %22
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = shl i32 %36, 6
  %38 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %39 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to i32*
  store i32 %37, i32* %41, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @cpu_to_be32(i32 %42)
  %44 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %45 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  store i32 %43, i32* %48, align 4
  br label %67

49:                                               ; preds = %22
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %56 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  store i32 %54, i32* %59, align 4
  %60 = load i32, i32* %9, align 4
  %61 = call i32 @cpu_to_be32(i32 %60)
  %62 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %63 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = inttoptr i64 %64 to i32*
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %49, %31
  %68 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %69 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %72 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @MLX4_SET_PORT_IB_OPCODE, align 4
  %76 = load i32, i32* @MLX4_CMD_SET_PORT, align 4
  %77 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %78 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %79 = call i32 @mlx4_cmd(%struct.TYPE_4__* %70, i32 %73, i32 %74, i32 %75, i32 %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %6, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %10, align 8
  %84 = call i32 @mlx4_free_cmd_mailbox(%struct.TYPE_4__* %82, %struct.mlx4_cmd_mailbox* %83)
  %85 = load i32, i32* %11, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %67, %19
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.TYPE_4__*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.TYPE_4__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.TYPE_4__*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
