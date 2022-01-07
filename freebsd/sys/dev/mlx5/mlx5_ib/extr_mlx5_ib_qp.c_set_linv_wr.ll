; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_linv_wr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_qp.c_set_linv_wr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_qp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_ib_qp*, i8**, i32*)* @set_linv_wr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_linv_wr(%struct.mlx5_ib_qp* %0, i8** %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_ib_qp*, align 8
  %5 = alloca i8**, align 8
  %6 = alloca i32*, align 8
  store %struct.mlx5_ib_qp* %0, %struct.mlx5_ib_qp** %4, align 8
  store i8** %1, i8*** %5, align 8
  store i32* %2, i32** %6, align 8
  %7 = load i8**, i8*** %5, align 8
  %8 = load i8*, i8** %7, align 8
  %9 = call i32 @set_linv_umr_seg(i8* %8)
  %10 = load i8**, i8*** %5, align 8
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr i8, i8* %11, i64 4
  store i8* %12, i8** %10, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i32, i32* %13, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 0
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %13, align 4
  %18 = load i8**, i8*** %5, align 8
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %21 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %19, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %3
  %29 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %30 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %29, i32 0)
  %31 = load i8**, i8*** %5, align 8
  store i8* %30, i8** %31, align 8
  br label %32

32:                                               ; preds = %28, %3
  %33 = load i8**, i8*** %5, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 @set_linv_mkey_seg(i8* %34)
  %36 = load i8**, i8*** %5, align 8
  %37 = load i8*, i8** %36, align 8
  %38 = getelementptr i8, i8* %37, i64 4
  store i8* %38, i8** %36, align 8
  %39 = load i32*, i32** %6, align 8
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = add i64 %41, 0
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %39, align 4
  %44 = load i8**, i8*** %5, align 8
  %45 = load i8*, i8** %44, align 8
  %46 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %47 = getelementptr inbounds %struct.mlx5_ib_qp, %struct.mlx5_ib_qp* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i8*, i8** %48, align 8
  %50 = icmp eq i8* %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %32
  %55 = load %struct.mlx5_ib_qp*, %struct.mlx5_ib_qp** %4, align 8
  %56 = call i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp* %55, i32 0)
  %57 = load i8**, i8*** %5, align 8
  store i8* %56, i8** %57, align 8
  br label %58

58:                                               ; preds = %54, %32
  ret void
}

declare dso_local i32 @set_linv_umr_seg(i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i8* @mlx5_get_send_wqe(%struct.mlx5_ib_qp*, i32) #1

declare dso_local i32 @set_linv_mkey_seg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
