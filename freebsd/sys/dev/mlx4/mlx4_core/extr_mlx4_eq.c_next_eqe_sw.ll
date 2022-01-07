; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_next_eqe_sw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_eq.c_next_eqe_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_eqe = type { i32 }
%struct.mlx4_eq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx4_eqe* (%struct.mlx4_eq*, i32, i32)* @next_eqe_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx4_eqe* @next_eqe_sw(%struct.mlx4_eq* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx4_eq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx4_eqe*, align 8
  store %struct.mlx4_eq* %0, %struct.mlx4_eq** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx4_eq*, %struct.mlx4_eq** %4, align 8
  %9 = load %struct.mlx4_eq*, %struct.mlx4_eq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.mlx4_eqe* @get_eqe(%struct.mlx4_eq* %8, i32 %11, i32 %12, i32 %13)
  store %struct.mlx4_eqe* %14, %struct.mlx4_eqe** %7, align 8
  %15 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  %16 = getelementptr inbounds %struct.mlx4_eqe, %struct.mlx4_eqe* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 128
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = load %struct.mlx4_eq*, %struct.mlx4_eq** %4, align 8
  %24 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.mlx4_eq*, %struct.mlx4_eq** %4, align 8
  %27 = getelementptr inbounds %struct.mlx4_eq, %struct.mlx4_eq* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %25, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = xor i32 %22, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %3
  br label %39

37:                                               ; preds = %3
  %38 = load %struct.mlx4_eqe*, %struct.mlx4_eqe** %7, align 8
  br label %39

39:                                               ; preds = %37, %36
  %40 = phi %struct.mlx4_eqe* [ null, %36 ], [ %38, %37 ]
  ret %struct.mlx4_eqe* %40
}

declare dso_local %struct.mlx4_eqe* @get_eqe(%struct.mlx4_eq*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
