; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_trans_complete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_trans_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5_fpga_trans_priv = type { %struct.mlx5_fpga_transaction*, i32, i32, i32 }
%struct.mlx5_fpga_transaction = type { i32 (%struct.mlx5_fpga_transaction*, i32)* }

@.str = private unnamed_addr constant [43 x i8] c"Transaction %u is complete with status %u\0A\00", align 1
@TRANS_STATE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_device*, %struct.mlx5_fpga_trans_priv*, i32)* @trans_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trans_complete(%struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_trans_priv* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_fpga_device*, align 8
  %5 = alloca %struct.mlx5_fpga_trans_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_fpga_transaction*, align 8
  %8 = alloca i64, align 8
  store %struct.mlx5_fpga_device* %0, %struct.mlx5_fpga_device** %4, align 8
  store %struct.mlx5_fpga_trans_priv* %1, %struct.mlx5_fpga_trans_priv** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %10 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %9, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* @TRANS_STATE_COMPLETE, align 4
  %22 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %5, align 8
  %26 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  %27 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %33, i32 0, i32 0
  %35 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %34, align 8
  store %struct.mlx5_fpga_transaction* %35, %struct.mlx5_fpga_transaction** %7, align 8
  %36 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %4, align 8
  %37 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %5, align 8
  %38 = call i32 @free_tid(%struct.mlx5_fpga_device* %36, %struct.mlx5_fpga_trans_priv* %37)
  %39 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %39, i32 0, i32 0
  %41 = load i32 (%struct.mlx5_fpga_transaction*, i32)*, i32 (%struct.mlx5_fpga_transaction*, i32)** %40, align 8
  %42 = icmp ne i32 (%struct.mlx5_fpga_transaction*, i32)* %41, null
  br i1 %42, label %43, label %50

43:                                               ; preds = %3
  %44 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %7, align 8
  %45 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %44, i32 0, i32 0
  %46 = load i32 (%struct.mlx5_fpga_transaction*, i32)*, i32 (%struct.mlx5_fpga_transaction*, i32)** %45, align 8
  %47 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %7, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 %46(%struct.mlx5_fpga_transaction* %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %3
  ret void
}

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_tid(%struct.mlx5_fpga_device*, %struct.mlx5_fpga_trans_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
