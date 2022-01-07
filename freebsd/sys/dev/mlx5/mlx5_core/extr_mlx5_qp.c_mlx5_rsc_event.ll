; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_mlx5_rsc_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_core/extr_mlx5_qp.c_mlx5_rsc_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_core_rsc_common = type { i32 }
%struct.mlx5_core_qp = type { i32 (%struct.mlx5_core_qp*, i32)* }

@.str = private unnamed_addr constant [32 x i8] c"invalid resource type for 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_rsc_event(%struct.mlx5_core_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_core_rsc_common*, align 8
  %8 = alloca %struct.mlx5_core_qp*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call %struct.mlx5_core_rsc_common* @mlx5_get_rsc(%struct.mlx5_core_dev* %9, i32 %10)
  store %struct.mlx5_core_rsc_common* %11, %struct.mlx5_core_rsc_common** %7, align 8
  %12 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  %13 = icmp ne %struct.mlx5_core_rsc_common* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %35

15:                                               ; preds = %3
  %16 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_rsc_common, %struct.mlx5_core_rsc_common* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %28 [
    i32 128, label %19
  ]

19:                                               ; preds = %15
  %20 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  %21 = bitcast %struct.mlx5_core_rsc_common* %20 to %struct.mlx5_core_qp*
  store %struct.mlx5_core_qp* %21, %struct.mlx5_core_qp** %8, align 8
  %22 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %8, align 8
  %23 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %22, i32 0, i32 0
  %24 = load i32 (%struct.mlx5_core_qp*, i32)*, i32 (%struct.mlx5_core_qp*, i32)** %23, align 8
  %25 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %8, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 %24(%struct.mlx5_core_qp* %25, i32 %26)
  br label %32

28:                                               ; preds = %15
  %29 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @mlx5_core_warn(%struct.mlx5_core_dev* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %19
  %33 = load %struct.mlx5_core_rsc_common*, %struct.mlx5_core_rsc_common** %7, align 8
  %34 = call i32 @mlx5_core_put_rsc(%struct.mlx5_core_rsc_common* %33)
  br label %35

35:                                               ; preds = %32, %14
  ret void
}

declare dso_local %struct.mlx5_core_rsc_common* @mlx5_get_rsc(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_warn(%struct.mlx5_core_dev*, i8*, i32) #1

declare dso_local i32 @mlx5_core_put_rsc(%struct.mlx5_core_rsc_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
