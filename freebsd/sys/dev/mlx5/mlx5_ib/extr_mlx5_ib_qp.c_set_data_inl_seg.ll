; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_data_inl_seg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_data_inl_seg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8* }
%struct.ib_send_wr = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64 }
%struct.mlx5_wqe_inline_seg = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MLX5_INLINE_SEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_ib_qp*, %struct.ib_send_wr*, i8*, i32*)* @set_data_inl_seg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_data_inl_seg(%struct.mlx5_ib_qp* %0, %struct.ib_send_wr* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_ib_qp*, align 8
  %7 = alloca %struct.ib_send_wr*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5_wqe_inline_seg*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %6, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %18 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %11, align 8
  store i32 0, i32* %13, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = bitcast i8* %21 to %struct.mlx5_wqe_inline_seg*
  store %struct.mlx5_wqe_inline_seg* %22, %struct.mlx5_wqe_inline_seg** %10, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = getelementptr i8, i8* %23, i64 4
  store i8* %24, i8** %8, align 8
  store i32 0, i32* %16, align 4
  br label %25

25:                                               ; preds = %102, %4
  %26 = load i32, i32* %16, align 4
  %27 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %28 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %105

31:                                               ; preds = %25
  %32 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %33 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i32, i32* %16, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %12, align 8
  %41 = load %struct.ib_send_wr*, %struct.ib_send_wr** %7, align 8
  %42 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %15, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i32, i32* %13, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %54 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %52, %55
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %31
  %61 = load i32, i32* @ENOMEM, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %5, align 4
  br label %119

63:                                               ; preds = %31
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr i8, i8* %64, i64 %66
  %68 = load i8*, i8** %11, align 8
  %69 = icmp ugt i8* %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %93

73:                                               ; preds = %63
  %74 = load i8*, i8** %11, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = ptrtoint i8* %74 to i64
  %77 = ptrtoint i8* %75 to i64
  %78 = sub i64 %76, %77
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %14, align 4
  %80 = load i8*, i8** %8, align 8
  %81 = load i8*, i8** %12, align 8
  %82 = load i32, i32* %14, align 4
  %83 = call i32 @memcpy(i8* %80, i8* %81, i32 %82)
  %84 = load i32, i32* %14, align 4
  %85 = load i8*, i8** %12, align 8
  %86 = sext i32 %84 to i64
  %87 = getelementptr i8, i8* %85, i64 %86
  store i8* %87, i8** %12, align 8
  %88 = load i32, i32* %14, align 4
  %89 = load i32, i32* %15, align 4
  %90 = sub nsw i32 %89, %88
  store i32 %90, i32* %15, align 4
  %91 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %6, align 8
  %92 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %91, i32 0)
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %73, %63
  %94 = load i8*, i8** %8, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 @memcpy(i8* %94, i8* %95, i32 %96)
  %98 = load i32, i32* %15, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr i8, i8* %99, i64 %100
  store i8* %101, i8** %8, align 8
  br label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %16, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %16, align 4
  br label %25

105:                                              ; preds = %25
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @MLX5_INLINE_SEG, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @cpu_to_be32(i32 %108)
  %110 = load %struct.mlx5_wqe_inline_seg*, %struct.mlx5_wqe_inline_seg** %10, align 8
  %111 = getelementptr inbounds %struct.mlx5_wqe_inline_seg, %struct.mlx5_wqe_inline_seg* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %113, 4
  %115 = trunc i64 %114 to i32
  %116 = call i32 @ALIGN(i32 %115, i32 16)
  %117 = sdiv i32 %116, 16
  %118 = load i32*, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %105, %60
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
