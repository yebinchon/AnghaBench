; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_get_srqc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_get_srqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_srq_attr = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32 }

@wq_signature = common dso_local global i32 0, align 4
@MLX5_SRQ_FLAG_WQ_SIG = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@log_rq_stride = common dso_local global i32 0, align 4
@log_srq_size = common dso_local global i32 0, align 4
@page_offset = common dso_local global i32 0, align 4
@lwm = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlx5_srq_attr*)* @get_srqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_srqc(i8* %0, %struct.mlx5_srq_attr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_srq_attr*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mlx5_srq_attr* %1, %struct.mlx5_srq_attr** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @wq_signature, align 4
  %8 = call i8* @MLX5_GET(i8* %5, i8* %6, i32 %7)
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load i32, i32* @MLX5_SRQ_FLAG_WQ_SIG, align 4
  %12 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %13 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 8
  br label %16

16:                                               ; preds = %10, %2
  %17 = load i8*, i8** %3, align 8
  %18 = load i8*, i8** %3, align 8
  %19 = load i32, i32* @log_page_size, align 4
  %20 = call i8* @MLX5_GET(i8* %17, i8* %18, i32 %19)
  %21 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = load i8*, i8** %3, align 8
  %25 = load i32, i32* @log_rq_stride, align 4
  %26 = call i8* @MLX5_GET(i8* %23, i8* %24, i32 %25)
  %27 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i8*, i8** %3, align 8
  %30 = load i8*, i8** %3, align 8
  %31 = load i32, i32* @log_srq_size, align 4
  %32 = call i8* @MLX5_GET(i8* %29, i8* %30, i32 %31)
  %33 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %33, i32 0, i32 4
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** %3, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = load i32, i32* @page_offset, align 4
  %38 = call i8* @MLX5_GET(i8* %35, i8* %36, i32 %37)
  %39 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %40 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %39, i32 0, i32 3
  store i8* %38, i8** %40, align 8
  %41 = load i8*, i8** %3, align 8
  %42 = load i8*, i8** %3, align 8
  %43 = load i32, i32* @lwm, align 4
  %44 = call i8* @MLX5_GET(i8* %41, i8* %42, i32 %43)
  %45 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %46 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i8*, i8** %3, align 8
  %49 = load i32, i32* @pd, align 4
  %50 = call i8* @MLX5_GET(i8* %47, i8* %48, i32 %49)
  %51 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @dbr_addr, align 4
  %56 = call i32 @MLX5_GET64(i8* %53, i8* %54, i32 %55)
  %57 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %58 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  ret void
}

declare dso_local i8* @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i32 @MLX5_GET64(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
