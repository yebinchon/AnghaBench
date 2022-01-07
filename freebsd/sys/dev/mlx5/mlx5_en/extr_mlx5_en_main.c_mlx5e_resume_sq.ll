; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_resume_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_resume_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_sq = type { i32, i32, i32, i64, i64 }

@MLX5_SQC_STATE_ERR = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"mlx5e_modify_sq() from ERR to RST failed: %d\0A\00", align 1
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"mlx5e_modify_sq() from RST to RDY failed: %d\0A\00", align 1
@MLX5E_CEV_STATE_INITIAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_resume_sq(%struct.mlx5e_sq* %0) #0 {
  %2 = alloca %struct.mlx5e_sq*, align 8
  %3 = alloca i32, align 4
  store %struct.mlx5e_sq* %0, %struct.mlx5e_sq** %2, align 8
  %4 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = call i64 @READ_ONCE(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %50

10:                                               ; preds = %1
  %11 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %12 = load i32, i32* @MLX5_SQC_STATE_ERR, align 4
  %13 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %14 = call i32 @mlx5e_modify_sq(%struct.mlx5e_sq* %11, i32 %12, i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %10
  %18 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @mlx5_en_err(i32 %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %17, %10
  %24 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %24, i32 0, i32 4
  store i64 0, i64* %25, align 8
  %26 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %27 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %26, i32 0, i32 3
  store i64 0, i64* %27, align 8
  %28 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %29 = call i32 @mlx5e_reset_sq_doorbell_record(%struct.mlx5e_sq* %28)
  %30 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %31 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %32 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  %33 = call i32 @mlx5e_modify_sq(%struct.mlx5e_sq* %30, i32 %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %38 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @mlx5_en_err(i32 %39, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %36, %23
  %43 = load i32, i32* @MLX5E_CEV_STATE_INITIAL, align 4
  %44 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %45 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @WRITE_ONCE(i32 %48, i32 1)
  br label %50

50:                                               ; preds = %42, %9
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i32 @mlx5e_modify_sq(%struct.mlx5e_sq*, i32, i32) #1

declare dso_local i32 @mlx5_en_err(i32, i8*, i32) #1

declare dso_local i32 @mlx5e_reset_sq_doorbell_record(%struct.mlx5e_sq*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
