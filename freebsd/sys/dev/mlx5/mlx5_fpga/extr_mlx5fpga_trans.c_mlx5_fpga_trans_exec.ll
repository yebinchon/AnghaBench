; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_mlx5_fpga_trans_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_mlx5_fpga_trans_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_transaction = type { i32, i64, %struct.TYPE_12__*, i32, i32, %struct.mlx5_fpga_conn* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.mlx5_fpga_conn = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.mlx5_fpga_trans_priv = type { i32, %struct.TYPE_12__, i32, %struct.TYPE_12__*, %struct.mlx5_fpga_transaction* }

@.str = private unnamed_addr constant [45 x i8] c"Transaction must have a completion callback\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@fpga_shell_qp_packet = common dso_local global i32 0, align 4
@type = common dso_local global i32 0, align 4
@MLX5_FPGA_WRITE = common dso_local global i64 0, align 8
@MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_WRITE = common dso_local global i32 0, align 4
@MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_READ = common dso_local global i32 0, align 4
@tid = common dso_local global i32 0, align 4
@len = common dso_local global i32 0, align 4
@address = common dso_local global i32 0, align 4
@trans_send_complete = common dso_local global i32 0, align 4
@TRANS_STATE_SEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_trans_exec(%struct.mlx5_fpga_transaction* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_transaction*, align 8
  %3 = alloca %struct.mlx5_fpga_conn*, align 8
  %4 = alloca %struct.mlx5_fpga_trans_priv*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_transaction* %0, %struct.mlx5_fpga_transaction** %2, align 8
  %7 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %7, i32 0, i32 5
  %9 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %8, align 8
  store %struct.mlx5_fpga_conn* %9, %struct.mlx5_fpga_conn** %3, align 8
  %10 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %21, label %14

14:                                               ; preds = %1
  %15 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %15, i32 0, i32 0
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = call i32 @mlx5_fpga_warn(%struct.TYPE_13__* %17, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %148

21:                                               ; preds = %1
  %22 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %29 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @trans_validate(%struct.TYPE_13__* %24, i32 %27, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %21
  br label %148

35:                                               ; preds = %21
  %36 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %37 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %36, i32 0, i32 0
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = call %struct.mlx5_fpga_trans_priv* @alloc_tid(%struct.TYPE_13__* %38)
  store %struct.mlx5_fpga_trans_priv* %39, %struct.mlx5_fpga_trans_priv** %4, align 8
  %40 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %41 = icmp ne %struct.mlx5_fpga_trans_priv* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %35
  %43 = load i32, i32* @EBUSY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %148

45:                                               ; preds = %35
  %46 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %47 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %48 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %47, i32 0, i32 4
  store %struct.mlx5_fpga_transaction* %46, %struct.mlx5_fpga_transaction** %48, align 8
  %49 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %49, i32 0, i32 3
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  store %struct.TYPE_12__* %51, %struct.TYPE_12__** %5, align 8
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %53 = call i32 @memset(%struct.TYPE_12__* %52, i32 0, i32 8)
  %54 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %54, i32 0, i32 1
  %56 = call i32 @memset(%struct.TYPE_12__* %55, i32 0, i32 16)
  %57 = load i32, i32* @fpga_shell_qp_packet, align 4
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %59 = load i32, i32* @type, align 4
  %60 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %61 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @MLX5_FPGA_WRITE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %45
  %66 = load i32, i32* @MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_WRITE, align 4
  br label %69

67:                                               ; preds = %45
  %68 = load i32, i32* @MLX5_FPGA_SHELL_QP_PACKET_TYPE_DDR_READ, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  %71 = call i32 @MLX5_SET(i32 %57, %struct.TYPE_12__* %58, i32 %59, i32 %70)
  %72 = load i32, i32* @fpga_shell_qp_packet, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = load i32, i32* @tid, align 4
  %75 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %76 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @MLX5_SET(i32 %72, %struct.TYPE_12__* %73, i32 %74, i32 %77)
  %79 = load i32, i32* @fpga_shell_qp_packet, align 4
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %81 = load i32, i32* @len, align 4
  %82 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %83 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @MLX5_SET(i32 %79, %struct.TYPE_12__* %80, i32 %81, i32 %84)
  %86 = load i32, i32* @fpga_shell_qp_packet, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %88 = load i32, i32* @address, align 4
  %89 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %90 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @MLX5_SET64(i32 %86, %struct.TYPE_12__* %87, i32 %88, i32 %91)
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %94 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %95 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i64 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 1
  store %struct.TYPE_12__* %93, %struct.TYPE_12__** %99, align 8
  %100 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %101 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_11__*, %struct.TYPE_11__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  store i32 8, i32* %105, align 8
  %106 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %107 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @MLX5_FPGA_WRITE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %130

111:                                              ; preds = %69
  %112 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %113 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %112, i32 0, i32 2
  %114 = load %struct.TYPE_12__*, %struct.TYPE_12__** %113, align 8
  %115 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %116 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i32 0, i32 1
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %118, i64 1
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  store %struct.TYPE_12__* %114, %struct.TYPE_12__** %120, align 8
  %121 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %2, align 8
  %122 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %125 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_11__*, %struct.TYPE_11__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  store i32 %123, i32* %129, align 8
  br label %130

130:                                              ; preds = %111, %69
  %131 = load i32, i32* @trans_send_complete, align 4
  %132 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %133 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %133, i32 0, i32 0
  store i32 %131, i32* %134, align 8
  %135 = load i32, i32* @TRANS_STATE_SEND, align 4
  %136 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %137 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  store i32 0, i32* %6, align 4
  %138 = load i32, i32* %6, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %130
  br label %142

141:                                              ; preds = %130
  br label %148

142:                                              ; preds = %140
  %143 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %3, align 8
  %144 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %143, i32 0, i32 0
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %144, align 8
  %146 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %4, align 8
  %147 = call i32 @free_tid(%struct.TYPE_13__* %145, %struct.mlx5_fpga_trans_priv* %146)
  br label %148

148:                                              ; preds = %142, %141, %42, %34, %14
  %149 = load i32, i32* %6, align 4
  ret i32 %149
}

declare dso_local i32 @mlx5_fpga_warn(%struct.TYPE_13__*, i8*) #1

declare dso_local i32 @trans_validate(%struct.TYPE_13__*, i32, i32) #1

declare dso_local %struct.mlx5_fpga_trans_priv* @alloc_tid(%struct.TYPE_13__*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i32, %struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @free_tid(%struct.TYPE_13__*, %struct.mlx5_fpga_trans_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
