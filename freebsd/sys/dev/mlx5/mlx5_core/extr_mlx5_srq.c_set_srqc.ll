; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_set_srqc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_srq.c_set_srqc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_srq_attr = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@wq_signature = common dso_local global i32 0, align 4
@MLX5_SRQ_FLAG_WQ_SIG = common dso_local global i32 0, align 4
@log_page_size = common dso_local global i32 0, align 4
@log_rq_stride = common dso_local global i32 0, align 4
@log_srq_size = common dso_local global i32 0, align 4
@page_offset = common dso_local global i32 0, align 4
@lwm = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@dbr_addr = common dso_local global i32 0, align 4
@xrcd = common dso_local global i32 0, align 4
@cqn = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.mlx5_srq_attr*)* @set_srqc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_srqc(i8* %0, %struct.mlx5_srq_attr* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.mlx5_srq_attr*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.mlx5_srq_attr* %1, %struct.mlx5_srq_attr** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = load i32, i32* @wq_signature, align 4
  %8 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @MLX5_SRQ_FLAG_WQ_SIG, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @MLX5_SET(i8* %5, i8* %6, i32 %7, i32 %16)
  %18 = load i8*, i8** %3, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* @log_page_size, align 4
  %21 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %22 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @MLX5_SET(i8* %18, i8* %19, i32 %20, i32 %23)
  %25 = load i8*, i8** %3, align 8
  %26 = load i8*, i8** %3, align 8
  %27 = load i32, i32* @log_rq_stride, align 4
  %28 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @MLX5_SET(i8* %25, i8* %26, i32 %27, i32 %30)
  %32 = load i8*, i8** %3, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* @log_srq_size, align 4
  %35 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %36 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MLX5_SET(i8* %32, i8* %33, i32 %34, i32 %37)
  %39 = load i8*, i8** %3, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* @page_offset, align 4
  %42 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %43 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %42, i32 0, i32 4
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @MLX5_SET(i8* %39, i8* %40, i32 %41, i32 %44)
  %46 = load i8*, i8** %3, align 8
  %47 = load i8*, i8** %3, align 8
  %48 = load i32, i32* @lwm, align 4
  %49 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %50 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @MLX5_SET(i8* %46, i8* %47, i32 %48, i32 %51)
  %53 = load i8*, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = load i32, i32* @pd, align 4
  %56 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %57 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @MLX5_SET(i8* %53, i8* %54, i32 %55, i32 %58)
  %60 = load i8*, i8** %3, align 8
  %61 = load i8*, i8** %3, align 8
  %62 = load i32, i32* @dbr_addr, align 4
  %63 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %64 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %63, i32 0, i32 9
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @MLX5_SET64(i8* %60, i8* %61, i32 %62, i32 %65)
  %67 = load i8*, i8** %3, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = load i32, i32* @xrcd, align 4
  %70 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %71 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %70, i32 0, i32 7
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MLX5_SET(i8* %67, i8* %68, i32 %69, i32 %72)
  %74 = load i8*, i8** %3, align 8
  %75 = load i8*, i8** %3, align 8
  %76 = load i32, i32* @cqn, align 4
  %77 = load %struct.mlx5_srq_attr*, %struct.mlx5_srq_attr** %4, align 8
  %78 = getelementptr inbounds %struct.mlx5_srq_attr, %struct.mlx5_srq_attr* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MLX5_SET(i8* %74, i8* %75, i32 %76, i32 %79)
  ret void
}

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i32 @MLX5_SET64(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
