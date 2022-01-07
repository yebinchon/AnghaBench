; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_send_nop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_tx.c_mlx5e_send_nop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i64, i32, %struct.TYPE_7__*, %struct.TYPE_6__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i64, i64, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { i64 }
%struct.mlx5e_tx_wqe = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i8*, i8* }

@MLX5_OPCODE_NOP = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i64 0, align 8
@MLX5_SEND_WQEBB_NUM_DS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_send_nop(%struct.mlx5e_sq* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5e_sq*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5e_tx_wqe*, align 8
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = and i64 %9, %13
  store i64 %14, i64* %5, align 8
  %15 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %15, i32 0, i32 4
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(%struct.TYPE_8__* %16, i64 %17)
  store %struct.mlx5e_tx_wqe* %18, %struct.mlx5e_tx_wqe** %6, align 8
  %19 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %19, i32 0, i32 0
  %21 = call i32 @memset(%struct.TYPE_9__* %20, i32 0, i32 24)
  %22 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = shl i64 %24, 8
  %26 = load i32, i32* @MLX5_OPCODE_NOP, align 4
  %27 = sext i32 %26 to i64
  %28 = or i64 %25, %27
  %29 = trunc i64 %28 to i32
  %30 = call i8* @cpu_to_be32(i32 %29)
  %31 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %6, align 8
  %32 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 2
  store i8* %30, i8** %33, align 8
  %34 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = shl i32 %36, 8
  %38 = load i32, i32* %4, align 4
  %39 = or i32 %37, %38
  %40 = call i8* @cpu_to_be32(i32 %39)
  %41 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %6, align 8
  %42 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %45 = call i64 @mlx5e_do_send_cqe(%struct.mlx5e_sq* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %2
  %48 = load i64, i64* @MLX5_WQE_CTRL_CQ_UPDATE, align 8
  %49 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %6, align 8
  %50 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i64 %48, i64* %51, align 8
  br label %56

52:                                               ; preds = %2
  %53 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %47
  %57 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %58 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mlx5e_tx_wqe*, %struct.mlx5e_tx_wqe** %6, align 8
  %62 = getelementptr inbounds %struct.mlx5e_tx_wqe, %struct.mlx5e_tx_wqe* %61, i32 0, i32 0
  %63 = call i32 @memcpy(i32 %60, %struct.TYPE_9__* %62, i32 4)
  %64 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %65 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32* null, i32** %69, align 8
  %70 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %71 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %70, i32 0, i32 2
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @MLX5_SEND_WQEBB_NUM_DS, align 4
  %78 = call i64 @DIV_ROUND_UP(i32 %76, i32 %77)
  %79 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %80 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i64, i64* %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  store i64 %78, i64* %84, align 8
  %85 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %86 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = load i64, i64* %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %3, align 8
  %93 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add i64 %94, %91
  store i64 %95, i64* %93, align 8
  ret void
}

declare dso_local %struct.mlx5e_tx_wqe* @mlx5_wq_cyc_get_wqe(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @memset(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @mlx5e_do_send_cqe(%struct.mlx5e_sq*) #1

declare dso_local i32 @memcpy(i32, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
