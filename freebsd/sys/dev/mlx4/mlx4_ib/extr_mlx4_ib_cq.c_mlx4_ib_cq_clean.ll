; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_cq_clean.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_cq.c_mlx4_ib_cq_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_ib_cq = type { i32 }
%struct.mlx4_ib_srq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_ib_cq_clean(%struct.mlx4_ib_cq* %0, i32 %1, %struct.mlx4_ib_srq* %2) #0 {
  %4 = alloca %struct.mlx4_ib_cq*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_ib_srq*, align 8
  store %struct.mlx4_ib_cq* %0, %struct.mlx4_ib_cq** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.mlx4_ib_srq* %2, %struct.mlx4_ib_srq** %6, align 8
  %7 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %8 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %7, i32 0, i32 0
  %9 = call i32 @spin_lock_irq(i32* %8)
  %10 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.mlx4_ib_srq*, %struct.mlx4_ib_srq** %6, align 8
  %13 = call i32 @__mlx4_ib_cq_clean(%struct.mlx4_ib_cq* %10, i32 %11, %struct.mlx4_ib_srq* %12)
  %14 = load %struct.mlx4_ib_cq*, %struct.mlx4_ib_cq** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_ib_cq, %struct.mlx4_ib_cq* %14, i32 0, i32 0
  %16 = call i32 @spin_unlock_irq(i32* %15)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @__mlx4_ib_cq_clean(%struct.mlx4_ib_cq*, i32, %struct.mlx4_ib_srq*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
