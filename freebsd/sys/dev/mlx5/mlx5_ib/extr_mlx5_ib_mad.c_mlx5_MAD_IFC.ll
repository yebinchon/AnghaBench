; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_MAD_IFC.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_mad.c_mlx5_MAD_IFC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_ib_dev = type { i32 }
%struct.ib_wc = type { i32 }
%struct.ib_grh = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_MAD_IFC(%struct.mlx5_ib_dev* %0, i32 %1, i32 %2, i32 %3, %struct.ib_wc* %4, %struct.ib_grh* %5, i8* %6, i8* %7) #0 {
  %9 = alloca %struct.mlx5_ib_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_wc*, align 8
  %14 = alloca %struct.ib_grh*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store %struct.mlx5_ib_dev* %0, %struct.mlx5_ib_dev** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store %struct.ib_wc* %4, %struct.ib_wc** %13, align 8
  store %struct.ib_grh* %5, %struct.ib_grh** %14, align 8
  store i8* %6, i8** %15, align 8
  store i8* %7, i8** %16, align 8
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %8
  %21 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %22 = icmp ne %struct.ib_wc* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20, %8
  %24 = load i32, i32* %17, align 4
  %25 = or i32 %24, 1
  store i32 %25, i32* %17, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %26
  %30 = load %struct.ib_wc*, %struct.ib_wc** %13, align 8
  %31 = icmp ne %struct.ib_wc* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %29, %26
  %33 = load i32, i32* %17, align 4
  %34 = or i32 %33, 2
  store i32 %34, i32* %17, align 4
  br label %35

35:                                               ; preds = %32, %29
  %36 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %9, align 8
  %37 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i8*, i8** %15, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i32 @mlx5_core_mad_ifc(i32 %38, i8* %39, i8* %40, i32 %41, i32 %42)
  ret i32 %43
}

declare dso_local i32 @mlx5_core_mad_ifc(i32, i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
