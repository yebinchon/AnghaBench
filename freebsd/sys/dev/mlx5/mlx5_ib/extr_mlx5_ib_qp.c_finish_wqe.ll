; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_finish_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_finish_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.TYPE_10__, i32, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__*, i64, i64*, i32* }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32, i8*, i8* }

@MLX5_SEND_WQE_BB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, %struct.mlx5_wqe_ctrl_seg*, i32, i32, i32, i32, i32, i32, i32)* @finish_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @finish_wqe(%struct.mlx5_ib_qp* %0, %struct.mlx5_wqe_ctrl_seg* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.mlx5_ib_qp*, align 8
  %11 = alloca %struct.mlx5_wqe_ctrl_seg*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %10, align 8
  store %struct.mlx5_wqe_ctrl_seg* %1, %struct.mlx5_wqe_ctrl_seg** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = trunc i64 %23 to i32
  %25 = shl i32 %24, 8
  %26 = load i32, i32* %18, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %19, align 4
  %29 = shl i32 %28, 24
  %30 = or i32 %27, %29
  %31 = call i8* @cpu_to_be32(i32 %30)
  %32 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %11, align 8
  %33 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32, i32* %12, align 4
  %35 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %36 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = shl i32 %40, 8
  %42 = or i32 %34, %41
  %43 = call i8* @cpu_to_be32(i32 %42)
  %44 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %11, align 8
  %45 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i32, i32* %16, align 4
  %47 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %11, align 8
  %48 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load i32, i32* %17, align 4
  %52 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %53 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %55 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %9
  %60 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %11, align 8
  %61 = call i32 @wq_sig(%struct.mlx5_wqe_ctrl_seg* %60)
  %62 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %11, align 8
  %63 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %59, %9
  %65 = load i32, i32* %14, align 4
  %66 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %67 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %13, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  store i32 %65, i32* %72, align 4
  %73 = load i32, i32* %18, align 4
  %74 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %75 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 %73, i32* %81, align 8
  %82 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %83 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load i32, i32* %15, align 4
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %85, %87
  %89 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %90 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 3
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %88, i64* %95, align 8
  %96 = load i32, i32* %12, align 4
  %97 = mul nsw i32 %96, 16
  %98 = load i32, i32* @MLX5_SEND_WQE_BB, align 4
  %99 = call i64 @DIV_ROUND_UP(i32 %97, i32 %98)
  %100 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %101 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %103, %99
  store i64 %104, i64* %102, align 8
  %105 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %106 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %10, align 8
  %110 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %111, align 8
  %113 = load i32, i32* %13, align 4
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  store i64 %108, i64* %116, align 8
  ret void
}

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wq_sig(%struct.mlx5_wqe_ctrl_seg*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
