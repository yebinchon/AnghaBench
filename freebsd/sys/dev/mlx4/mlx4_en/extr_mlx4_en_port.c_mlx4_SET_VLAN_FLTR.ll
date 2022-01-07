; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_port.c_mlx4_SET_VLAN_FLTR.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_en/extr_mlx4_en_port.c_mlx4_SET_VLAN_FLTR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_en_priv = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32, %struct.mlx4_set_vlan_fltr_mbox* }
%struct.mlx4_set_vlan_fltr_mbox = type { i32* }

@VLAN_FLTR_SIZE = common dso_local global i32 0, align 4
@MLX4_CMD_SET_VLAN_FLTR = common dso_local global i32 0, align 4
@MLX4_CMD_TIME_CLASS_B = common dso_local global i32 0, align 4
@MLX4_CMD_WRAPPED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_SET_VLAN_FLTR(%struct.mlx4_dev* %0, %struct.mlx4_en_priv* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_en_priv*, align 8
  %6 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %7 = alloca %struct.mlx4_set_vlan_fltr_mbox*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_en_priv* %1, %struct.mlx4_en_priv** %5, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %13 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %14 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %13)
  store %struct.mlx4_cmd_mailbox* %14, %struct.mlx4_cmd_mailbox** %6, align 8
  %15 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %16 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %20 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %19)
  store i32 %20, i32* %3, align 4
  br label %80

21:                                               ; preds = %2
  %22 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %22, i32 0, i32 1
  %24 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %23, align 8
  store %struct.mlx4_set_vlan_fltr_mbox* %24, %struct.mlx4_set_vlan_fltr_mbox** %7, align 8
  %25 = load i32, i32* @VLAN_FLTR_SIZE, align 4
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %8, align 4
  br label %27

27:                                               ; preds = %61, %21
  %28 = load i32, i32* %8, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %64

30:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %49, %30
  %32 = load i32, i32* %9, align 4
  %33 = icmp slt i32 %32, 32
  br i1 %33, label %34, label %52

34:                                               ; preds = %31
  %35 = load i32, i32* %10, align 4
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @test_bit(i32 %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load i32, i32* %9, align 4
  %43 = shl i32 1, %42
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %41, %34
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %46
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %9, align 4
  br label %31

52:                                               ; preds = %31
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @cpu_to_be32(i32 %53)
  %55 = load %struct.mlx4_set_vlan_fltr_mbox*, %struct.mlx4_set_vlan_fltr_mbox** %7, align 8
  %56 = getelementptr inbounds %struct.mlx4_set_vlan_fltr_mbox, %struct.mlx4_set_vlan_fltr_mbox* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %54, i32* %60, align 4
  br label %61

61:                                               ; preds = %52
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %8, align 4
  br label %27

64:                                               ; preds = %27
  %65 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %66 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %67 = getelementptr inbounds %struct.mlx4_cmd_mailbox, %struct.mlx4_cmd_mailbox* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %5, align 8
  %70 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MLX4_CMD_SET_VLAN_FLTR, align 4
  %73 = load i32, i32* @MLX4_CMD_TIME_CLASS_B, align 4
  %74 = load i32, i32* @MLX4_CMD_WRAPPED, align 4
  %75 = call i32 @mlx4_cmd(%struct.mlx4_dev* %65, i32 %68, i32 %71, i32 0, i32 %72, i32 %73, i32 %74)
  store i32 %75, i32* %12, align 4
  %76 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %77 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %6, align 8
  %78 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %76, %struct.mlx4_cmd_mailbox* %77)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %64, %18
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @mlx4_cmd(%struct.mlx4_dev*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
