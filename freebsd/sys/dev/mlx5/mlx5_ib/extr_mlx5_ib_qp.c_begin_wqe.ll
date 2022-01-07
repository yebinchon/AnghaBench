; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_begin_wqe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_begin_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5_wqe_ctrl_seg = type { i32, i32 }
%struct.ib_send_wr = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_CQ_UPDATE = common dso_local global i32 0, align 4
@IB_SEND_SOLICITED = common dso_local global i32 0, align 4
@MLX5_WQE_CTRL_SOLICITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, i8**, %struct.mlx5_wqe_ctrl_seg**, %struct.ib_send_wr*, i32*, i32*, i32)* @begin_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @begin_wqe(%struct.mlx5_ib_qp* %0, i8** %1, %struct.mlx5_wqe_ctrl_seg** %2, %struct.ib_send_wr* %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx5_ib_qp*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca %struct.mlx5_wqe_ctrl_seg**, align 8
  %12 = alloca %struct.ib_send_wr*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %9, align 8
  store i8** %1, i8*** %10, align 8
  store %struct.mlx5_wqe_ctrl_seg** %2, %struct.mlx5_wqe_ctrl_seg*** %11, align 8
  store %struct.ib_send_wr* %3, %struct.ib_send_wr** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  %16 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %17 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %16, i32 0, i32 1
  %18 = load i32, i32* %15, align 4
  %19 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %20 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlx5_wq_overflow(%struct.TYPE_4__* %17, i32 %18, i32 %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %7
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %93

29:                                               ; preds = %7
  %30 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %31 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %35 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %33, %38
  %40 = load i32*, i32** %13, align 8
  store i32 %39, i32* %40, align 4
  %41 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %42 = load i32*, i32** %13, align 8
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %41, i32 %43)
  %45 = load i8**, i8*** %10, align 8
  store i8* %44, i8** %45, align 8
  %46 = load i8**, i8*** %10, align 8
  %47 = load i8*, i8** %46, align 8
  %48 = bitcast i8* %47 to %struct.mlx5_wqe_ctrl_seg*
  %49 = load %struct.mlx5_wqe_ctrl_seg**, %struct.mlx5_wqe_ctrl_seg*** %11, align 8
  store %struct.mlx5_wqe_ctrl_seg* %48, %struct.mlx5_wqe_ctrl_seg** %49, align 8
  %50 = load i8**, i8*** %10, align 8
  %51 = load i8*, i8** %50, align 8
  %52 = getelementptr i8, i8* %51, i64 8
  %53 = bitcast i8* %52 to i64*
  store i64 0, i64* %53, align 8
  %54 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %55 = call i32 @send_ieth(%struct.ib_send_wr* %54)
  %56 = load %struct.mlx5_wqe_ctrl_seg**, %struct.mlx5_wqe_ctrl_seg*** %11, align 8
  %57 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %56, align 8
  %58 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %57, i32 0, i32 1
  store i32 %55, i32* %58, align 4
  %59 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %9, align 8
  %60 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %63 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %29
  %69 = load i32, i32* @MLX5_WQE_CTRL_CQ_UPDATE, align 4
  br label %71

70:                                               ; preds = %29
  br label %71

71:                                               ; preds = %70, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %70 ]
  %73 = or i32 %61, %72
  %74 = load %struct.ib_send_wr*, %struct.ib_send_wr** %12, align 8
  %75 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @IB_SEND_SOLICITED, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %71
  %81 = load i32, i32* @MLX5_WQE_CTRL_SOLICITED, align 4
  br label %83

82:                                               ; preds = %71
  br label %83

83:                                               ; preds = %82, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %82 ]
  %85 = or i32 %73, %84
  %86 = load %struct.mlx5_wqe_ctrl_seg**, %struct.mlx5_wqe_ctrl_seg*** %11, align 8
  %87 = load %struct.mlx5_wqe_ctrl_seg*, %struct.mlx5_wqe_ctrl_seg** %86, align 8
  %88 = getelementptr inbounds %struct.mlx5_wqe_ctrl_seg, %struct.mlx5_wqe_ctrl_seg* %87, i32 0, i32 0
  store i32 %85, i32* %88, align 4
  %89 = load i8**, i8*** %10, align 8
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr i8, i8* %90, i64 8
  store i8* %91, i8** %89, align 8
  %92 = load i32*, i32** %14, align 8
  store i32 0, i32* %92, align 4
  store i32 0, i32* %8, align 4
  br label %93

93:                                               ; preds = %83, %26
  %94 = load i32, i32* %8, align 4
  ret i32 %94
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5_wq_overflow(%struct.TYPE_4__*, i32, i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @send_ieth(%struct.ib_send_wr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
