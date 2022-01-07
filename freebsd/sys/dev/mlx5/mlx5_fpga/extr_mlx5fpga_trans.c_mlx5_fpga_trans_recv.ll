; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_mlx5_fpga_trans_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_trans.c_mlx5_fpga_trans_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.mlx5_fpga_device = type { i32 }
%struct.mlx5_fpga_trans_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [38 x i8] c"Rx QP message on core conn; %u bytes\0A\00", align 1
@fpga_shell_qp_packet = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Short message %u bytes from device\0A\00", align 1
@MLX5_FPGA_READ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"Wrong answer type %u to a %u transaction\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [55 x i8] c"Incorrect transaction payload length %zu expected %zu\0A\00", align 1
@data = common dso_local global i32 0, align 4
@MLX5_FPGA_WRITE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [47 x i8] c"Unexpected message type %u len %u from device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_fpga_trans_recv(i8* %0, %struct.mlx5_fpga_dma_buf* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %5 = alloca %struct.mlx5_fpga_device*, align 8
  %6 = alloca %struct.mlx5_fpga_trans_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.mlx5_fpga_dma_buf* %1, %struct.mlx5_fpga_dma_buf** %4, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.mlx5_fpga_device*
  store %struct.mlx5_fpga_device* %12, %struct.mlx5_fpga_device** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %14 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device* %13, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @fpga_shell_qp_packet, align 4
  %28 = call i64 @MLX5_ST_SZ_BYTES(i32 %27)
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %2
  %31 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %32 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %168

40:                                               ; preds = %2
  %41 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i32, i32* @fpga_shell_qp_packet, align 4
  %48 = call i64 @MLX5_ST_SZ_BYTES(i32 %47)
  %49 = sub nsw i64 %46, %48
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* @fpga_shell_qp_packet, align 4
  %51 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @MLX5_GET(i32 %50, i32 %56, i32 %57)
  store i32 %58, i32* %9, align 4
  %59 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = call %struct.mlx5_fpga_trans_priv* @find_tid(%struct.mlx5_fpga_device* %59, i32 %60)
  store %struct.mlx5_fpga_trans_priv* %61, %struct.mlx5_fpga_trans_priv** %6, align 8
  %62 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %63 = icmp ne %struct.mlx5_fpga_trans_priv* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %40
  br label %168

65:                                               ; preds = %40
  %66 = load i32, i32* @fpga_shell_qp_packet, align 4
  %67 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %68 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i64 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @MLX5_GET(i32 %66, i32 %72, i32 %73)
  store i32 %74, i32* %10, align 4
  %75 = load i32, i32* %10, align 4
  switch i32 %75, label %150 [
    i32 129, label %76
    i32 128, label %130
  ]

76:                                               ; preds = %65
  %77 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %78 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @MLX5_FPGA_READ, align 8
  %83 = icmp ne i64 %81, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %76
  %85 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %88 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %87, i32 0, i32 0
  %89 = load %struct.TYPE_3__*, %struct.TYPE_3__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %85, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %86, i64 %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %8, align 4
  br label %163

95:                                               ; preds = %76
  %96 = load i64, i64* %7, align 8
  %97 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %98 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %96, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %95
  %104 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %105 = load i64, i64* %7, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %108 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %104, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %106, i64 %111)
  br label %163

113:                                              ; preds = %95
  %114 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %115 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %114, i32 0, i32 0
  %116 = load %struct.TYPE_3__*, %struct.TYPE_3__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @fpga_shell_qp_packet, align 4
  %120 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %121 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %120, i32 0, i32 0
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i64 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* @data, align 4
  %127 = call i32 @MLX5_ADDR_OF(i32 %119, i32 %125, i32 %126)
  %128 = load i64, i64* %7, align 8
  %129 = call i32 @memcpy(i32 %118, i32 %127, i64 %128)
  br label %162

130:                                              ; preds = %65
  %131 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %132 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @MLX5_FPGA_WRITE, align 8
  %137 = icmp ne i64 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %130
  %139 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %142 = getelementptr inbounds %struct.mlx5_fpga_trans_priv, %struct.mlx5_fpga_trans_priv* %141, i32 0, i32 0
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %139, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %140, i64 %145)
  %147 = load i32, i32* @EIO, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %8, align 4
  br label %163

149:                                              ; preds = %130
  br label %162

150:                                              ; preds = %65
  %151 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %152 = load i32, i32* %10, align 4
  %153 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %4, align 8
  %154 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %153, i32 0, i32 0
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 0
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = call i32 (%struct.mlx5_fpga_device*, i8*, i32, ...) @mlx5_fpga_warn(%struct.mlx5_fpga_device* %151, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %152, i64 %158)
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %8, align 4
  br label %163

162:                                              ; preds = %149, %113
  br label %163

163:                                              ; preds = %162, %150, %138, %103, %84
  %164 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %5, align 8
  %165 = load %struct.mlx5_fpga_trans_priv*, %struct.mlx5_fpga_trans_priv** %6, align 8
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @trans_complete(%struct.mlx5_fpga_device* %164, %struct.mlx5_fpga_trans_priv* %165, i32 %166)
  br label %168

168:                                              ; preds = %163, %64, %30
  ret void
}

declare dso_local i32 @mlx5_fpga_dbg(%struct.mlx5_fpga_device*, i8*, i64) #1

declare dso_local i64 @MLX5_ST_SZ_BYTES(i32) #1

declare dso_local i32 @mlx5_fpga_warn(%struct.mlx5_fpga_device*, i8*, i32, ...) #1

declare dso_local i32 @MLX5_GET(i32, i32, i32) #1

declare dso_local %struct.mlx5_fpga_trans_priv* @find_tid(%struct.mlx5_fpga_device*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @trans_complete(%struct.mlx5_fpga_device*, %struct.mlx5_fpga_trans_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
