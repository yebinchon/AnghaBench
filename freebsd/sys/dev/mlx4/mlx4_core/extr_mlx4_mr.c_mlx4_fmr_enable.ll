; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_fmr_enable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_fmr_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_fmr = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_fmr_enable(%struct.mlx4_dev* %0, %struct.mlx4_fmr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_fmr*, align 8
  %6 = alloca %struct.mlx4_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_fmr* %1, %struct.mlx4_fmr** %5, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %9 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %6, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %11 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %12 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %11, i32 0, i32 1
  %13 = call i32 @mlx4_mr_enable(%struct.mlx4_dev* %10, %struct.TYPE_4__* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %38

18:                                               ; preds = %2
  %19 = load %struct.mlx4_priv*, %struct.mlx4_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %23 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @key_to_hw_index(i32 %25)
  %27 = call i32 @mlx4_table_find(i32* %21, i32 %26, i32* null)
  %28 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %31 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %18
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %38

37:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %34, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @mlx4_mr_enable(%struct.mlx4_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @mlx4_table_find(i32*, i32, i32*) #1

declare dso_local i32 @key_to_hw_index(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
