; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_rq_cqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_fpga/extr_mlx5fpga_conn.c_mlx5_fpga_conn_rq_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_conn = type { i32, i32, i32 (i32, %struct.mlx5_fpga_dma_buf*)*, %struct.TYPE_5__, i32 }
%struct.mlx5_fpga_dma_buf = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, %struct.mlx5_fpga_dma_buf** }
%struct.mlx5_cqe64 = type { i32, i32 }

@MLX5_CQE_SYNDROME_WR_FLUSH_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RQ buf %p on FPGA QP %u completion status %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"Message with %u bytes received successfully\0A\00", align 1
@MLX5_FPGA_RECV_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to re-post recv buf: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_conn*, %struct.mlx5_cqe64*, i32)* @mlx5_fpga_conn_rq_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_conn_rq_cqe(%struct.mlx5_fpga_conn* %0, %struct.mlx5_cqe64* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_fpga_conn*, align 8
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_fpga_dma_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_fpga_conn* %0, %struct.mlx5_fpga_conn** %4, align 8
  store %struct.mlx5_cqe64* %1, %struct.mlx5_cqe64** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @be16_to_cpu(i32 %12)
  %14 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %13, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load %struct.mlx5_fpga_dma_buf**, %struct.mlx5_fpga_dma_buf*** %24, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %25, i64 %27
  %29 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %28, align 8
  store %struct.mlx5_fpga_dma_buf* %29, %struct.mlx5_fpga_dma_buf** %7, align 8
  %30 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load %struct.mlx5_fpga_dma_buf**, %struct.mlx5_fpga_dma_buf*** %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %34, i64 %36
  store %struct.mlx5_fpga_dma_buf* null, %struct.mlx5_fpga_dma_buf** %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %3
  %41 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @be32_to_cpu(i32 %43)
  %45 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  br label %50

50:                                               ; preds = %40, %3
  %51 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %50
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @MLX5_CQE_SYNDROME_WR_FLUSH_ERR, align 4
  %62 = icmp ne i32 %60, %61
  br label %63

63:                                               ; preds = %59, %50
  %64 = phi i1 [ false, %50 ], [ %62, %59 ]
  %65 = zext i1 %64 to i32
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %70 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %73 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %74 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 (i32, i8*, ...) @mlx5_fpga_warn(i32 %71, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.mlx5_fpga_dma_buf* %72, i32 %75, i32 %76)
  br label %88

78:                                               ; preds = %63
  %79 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %80 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %83 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %84 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = call i32 (i32, i8*, %struct.mlx5_fpga_dma_buf*, ...) @mlx5_fpga_dbg(i32 %81, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), %struct.mlx5_fpga_dma_buf* %82, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %68
  %89 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %90 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %91 = call i32 @mlx5_fpga_conn_unmap_buf(%struct.mlx5_fpga_conn* %89, %struct.mlx5_fpga_dma_buf* %90)
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %88
  %95 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %96 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %94, %88
  %102 = phi i1 [ true, %88 ], [ %100, %94 ]
  %103 = zext i1 %102 to i32
  %104 = call i64 @unlikely(i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %108 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %107, i32 0, i32 3
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  store i32 0, i32* %109, align 8
  %110 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %111 = call i32 @kfree(%struct.mlx5_fpga_dma_buf* %110)
  br label %153

112:                                              ; preds = %101
  %113 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %114 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %117 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %116, i32 0, i32 0
  %118 = load %struct.TYPE_6__*, %struct.TYPE_6__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to %struct.mlx5_fpga_dma_buf*
  %124 = call i32 (i32, i8*, %struct.mlx5_fpga_dma_buf*, ...) @mlx5_fpga_dbg(i32 %115, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), %struct.mlx5_fpga_dma_buf* %123)
  %125 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %126 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %125, i32 0, i32 2
  %127 = load i32 (i32, %struct.mlx5_fpga_dma_buf*)*, i32 (i32, %struct.mlx5_fpga_dma_buf*)** %126, align 8
  %128 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %129 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %132 = call i32 %127(i32 %130, %struct.mlx5_fpga_dma_buf* %131)
  %133 = load i32, i32* @MLX5_FPGA_RECV_SIZE, align 4
  %134 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %135 = getelementptr inbounds %struct.mlx5_fpga_dma_buf, %struct.mlx5_fpga_dma_buf* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i64 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 4
  %139 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %140 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %141 = call i32 @mlx5_fpga_conn_post_recv(%struct.mlx5_fpga_conn* %139, %struct.mlx5_fpga_dma_buf* %140)
  store i32 %141, i32* %9, align 4
  %142 = load i32, i32* %9, align 4
  %143 = call i64 @unlikely(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %153

145:                                              ; preds = %112
  %146 = load %struct.mlx5_fpga_conn*, %struct.mlx5_fpga_conn** %4, align 8
  %147 = getelementptr inbounds %struct.mlx5_fpga_conn, %struct.mlx5_fpga_conn* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %9, align 4
  %150 = call i32 (i32, i8*, ...) @mlx5_fpga_warn(i32 %148, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %149)
  %151 = load %struct.mlx5_fpga_dma_buf*, %struct.mlx5_fpga_dma_buf** %7, align 8
  %152 = call i32 @kfree(%struct.mlx5_fpga_dma_buf* %151)
  br label %153

153:                                              ; preds = %106, %145, %112
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_fpga_warn(i32, i8*, ...) #1

declare dso_local i32 @mlx5_fpga_dbg(i32, i8*, %struct.mlx5_fpga_dma_buf*, ...) #1

declare dso_local i32 @mlx5_fpga_conn_unmap_buf(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @kfree(%struct.mlx5_fpga_dma_buf*) #1

declare dso_local i32 @mlx5_fpga_conn_post_recv(%struct.mlx5_fpga_conn*, %struct.mlx5_fpga_dma_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
