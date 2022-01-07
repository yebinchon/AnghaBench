; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_calc_chain_sig.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_cmd.c_calc_chain_sig.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cmd_msg = type { i64 }
%struct.mlx5_cmd_prot_block = type { i64 }

@MLX5_NUM_CMDS_IN_ADAPTER_PAGE = common dso_local global i64 0, align 8
@MLX5_CMD_MBOX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_cmd_msg*, i32, i32)* @calc_chain_sig to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @calc_chain_sig(%struct.mlx5_cmd_msg* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_cmd_msg*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5_cmd_prot_block*, align 8
  store %struct.mlx5_cmd_msg* %0, %struct.mlx5_cmd_msg** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %7, align 8
  br label %9

9:                                                ; preds = %33, %3
  %10 = load i64, i64* %7, align 8
  %11 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_cmd_msg, %struct.mlx5_cmd_msg* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MLX5_NUM_CMDS_IN_ADAPTER_PAGE, align 8
  %15 = mul i64 %13, %14
  %16 = icmp ne i64 %10, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %9
  %18 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %4, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* @MLX5_CMD_MBOX_SIZE, align 8
  %21 = mul i64 %19, %20
  %22 = call %struct.mlx5_cmd_prot_block* @mlx5_fwp_get_virt(%struct.mlx5_cmd_msg* %18, i64 %21)
  store %struct.mlx5_cmd_prot_block* %22, %struct.mlx5_cmd_prot_block** %8, align 8
  %23 = load %struct.mlx5_cmd_prot_block*, %struct.mlx5_cmd_prot_block** %8, align 8
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @calc_block_sig(%struct.mlx5_cmd_prot_block* %23, i32 %24, i32 %25)
  %27 = load %struct.mlx5_cmd_prot_block*, %struct.mlx5_cmd_prot_block** %8, align 8
  %28 = getelementptr inbounds %struct.mlx5_cmd_prot_block, %struct.mlx5_cmd_prot_block* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %17
  br label %36

32:                                               ; preds = %17
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %7, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %7, align 8
  br label %9

36:                                               ; preds = %31, %9
  %37 = load %struct.mlx5_cmd_msg*, %struct.mlx5_cmd_msg** %4, align 8
  %38 = call i32 @mlx5_fwp_flush(%struct.mlx5_cmd_msg* %37)
  ret void
}

declare dso_local %struct.mlx5_cmd_prot_block* @mlx5_fwp_get_virt(%struct.mlx5_cmd_msg*, i64) #1

declare dso_local i32 @calc_block_sig(%struct.mlx5_cmd_prot_block*, i32, i32) #1

declare dso_local i32 @mlx5_fwp_flush(%struct.mlx5_cmd_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
