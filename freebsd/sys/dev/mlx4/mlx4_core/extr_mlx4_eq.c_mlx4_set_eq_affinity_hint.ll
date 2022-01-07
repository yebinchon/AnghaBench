; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_mlx4_set_eq_affinity_hint.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_mlx4_set_eq_affinity_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_priv = type { %struct.TYPE_2__, %struct.mlx4_dev }
%struct.TYPE_2__ = type { %struct.mlx4_eq* }
%struct.mlx4_eq = type { i32, i32 }
%struct.mlx4_dev = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"bind_irq_to_cpu failed, err %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx4_priv*, i32)* @mlx4_set_eq_affinity_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx4_set_eq_affinity_hint(%struct.mlx4_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_dev*, align 8
  %7 = alloca %struct.mlx4_eq*, align 8
  store %struct.mlx4_priv* %0, %struct.mlx4_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %9 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %8, i32 0, i32 1
  store %struct.mlx4_dev* %9, %struct.mlx4_dev** %6, align 8
  %10 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %11 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.mlx4_eq*, %struct.mlx4_eq** %12, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %13, i64 %15
  store %struct.mlx4_eq* %16, %struct.mlx4_eq** %7, align 8
  %17 = load %struct.mlx4_eq*, %struct.mlx4_eq** %7, align 8
  %18 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mlx4_eq*, %struct.mlx4_eq** %7, align 8
  %21 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @bind_irq_to_cpu(i32 %19, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.mlx4_dev*, %struct.mlx4_dev** %6, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mlx4_warn(%struct.mlx4_dev* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %30

30:                                               ; preds = %26, %2
  ret void
}

declare dso_local i32 @bind_irq_to_cpu(i32, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
