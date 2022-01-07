; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_xfer.c_mlx5_fpga_xfer_exec.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_xfer.c_mlx5_fpga_xfer_exec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_transaction = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xfer_state = type { i32, i64, i32, i32, %struct.mlx5_fpga_transaction* }

@.str = private unnamed_addr constant [47 x i8] c"Transfer ends at %jx outside of DDR range %jx\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Transfer address %jx not aligned\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Transfer size %zu not aligned\0A\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"Empty transfer size %zu not allowed\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_WC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_fpga_xfer_exec(%struct.mlx5_fpga_transaction* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5_fpga_transaction*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xfer_state*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_fpga_transaction* %0, %struct.mlx5_fpga_transaction** %3, align 8
  %10 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %11 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @mlx5_fpga_ddr_base_get(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %17 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %16, i32 0, i32 2
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @mlx5_fpga_ddr_size_get(i32 %20)
  store i64 %21, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %22 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = load i64, i64* %4, align 8
  %30 = load i64, i64* %5, align 8
  %31 = add nsw i64 %29, %30
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %54

33:                                               ; preds = %1
  %34 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %35 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %34, i32 0, i32 2
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %40 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %41, %44
  %46 = trunc i64 %45 to i32
  %47 = load i64, i64* %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = add nsw i64 %47, %48
  %50 = trunc i64 %49 to i32
  %51 = call i32 (i32, i8*, i32, ...) @mlx5_fpga_warn(i32 %38, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %46, i32 %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %154

54:                                               ; preds = %1
  %55 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %56 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* @MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS, align 4
  %59 = sext i32 %58 to i64
  %60 = and i64 %57, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %64 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %69 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = trunc i64 %70 to i32
  %72 = call i32 (i32, i8*, i32, ...) @mlx5_fpga_warn(i32 %67, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %154

75:                                               ; preds = %54
  %76 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %77 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @MLX5_FPGA_TRANSACTION_SEND_ALIGN_BITS, align 4
  %80 = sext i32 %79 to i64
  %81 = and i64 %78, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %96

83:                                               ; preds = %75
  %84 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %85 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %84, i32 0, i32 2
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %90 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = call i32 (i32, i8*, i32, ...) @mlx5_fpga_warn(i32 %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %154

96:                                               ; preds = %75
  %97 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %98 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %97, i32 0, i32 1
  %99 = load i64, i64* %98, align 8
  %100 = icmp slt i64 %99, 1
  br i1 %100, label %101, label %114

101:                                              ; preds = %96
  %102 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %103 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %102, i32 0, i32 2
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %108 = getelementptr inbounds %struct.mlx5_fpga_transaction, %struct.mlx5_fpga_transaction* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = call i32 (i32, i8*, i32, ...) @mlx5_fpga_warn(i32 %106, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i32 %110)
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %2, align 4
  br label %154

114:                                              ; preds = %96
  %115 = load i32, i32* @GFP_KERNEL, align 4
  %116 = call %struct.xfer_state* @kzalloc(i32 32, i32 %115)
  store %struct.xfer_state* %116, %struct.xfer_state** %6, align 8
  %117 = load %struct.mlx5_fpga_transaction*, %struct.mlx5_fpga_transaction** %3, align 8
  %118 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %119 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %118, i32 0, i32 4
  store %struct.mlx5_fpga_transaction* %117, %struct.mlx5_fpga_transaction** %119, align 8
  %120 = load i32, i32* @IB_WC_SUCCESS, align 4
  %121 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %122 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %121, i32 0, i32 3
  store i32 %120, i32* %122, align 4
  %123 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %124 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %123, i32 0, i32 0
  store i32 7, i32* %124, align 8
  %125 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %126 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %125, i32 0, i32 2
  %127 = call i32 @spin_lock_init(i32* %126)
  %128 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %129 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %128, i32 0, i32 2
  %130 = load i64, i64* %7, align 8
  %131 = call i32 @spin_lock_irqsave(i32* %129, i64 %130)
  %132 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %133 = call i32 @exec_more(%struct.xfer_state* %132)
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %114
  %137 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %138 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %136
  store i32 1, i32* %8, align 4
  br label %142

142:                                              ; preds = %141, %136, %114
  %143 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %144 = getelementptr inbounds %struct.xfer_state, %struct.xfer_state* %143, i32 0, i32 2
  %145 = load i64, i64* %7, align 8
  %146 = call i32 @spin_unlock_irqrestore(i32* %144, i64 %145)
  %147 = load i32, i32* %8, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load %struct.xfer_state*, %struct.xfer_state** %6, align 8
  %151 = call i32 @xfer_complete(%struct.xfer_state* %150)
  br label %152

152:                                              ; preds = %149, %142
  %153 = load i32, i32* %9, align 4
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %152, %101, %83, %62, %33
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i64 @mlx5_fpga_ddr_base_get(i32) #1

declare dso_local i64 @mlx5_fpga_ddr_size_get(i32) #1

declare dso_local i32 @mlx5_fpga_warn(i32, i8*, i32, ...) #1

declare dso_local %struct.xfer_state* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @exec_more(%struct.xfer_state*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @xfer_complete(%struct.xfer_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
