; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_fmr_unmap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_mr.c_mlx4_fmr_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_fmr = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mlx4_cmd_mailbox = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c"mlx4_ib: mlx4_alloc_cmd_mailbox failed (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"mlx4_ib: mlx4_HW2SW_MPT failed (%d)\0A\00", align 1
@MLX4_MPT_EN_SW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_fmr_unmap(%struct.mlx4_dev* %0, %struct.mlx4_fmr* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.mlx4_dev*, align 8
  %6 = alloca %struct.mlx4_fmr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx4_cmd_mailbox*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %5, align 8
  store %struct.mlx4_fmr* %1, %struct.mlx4_fmr** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %11 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %12 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %4
  br label %56

16:                                               ; preds = %4
  %17 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %17, i32 0, i32 1
  store i64 0, i64* %18, align 8
  %19 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %20 = call %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev* %19)
  store %struct.mlx4_cmd_mailbox* %20, %struct.mlx4_cmd_mailbox** %9, align 8
  %21 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %22 = call i64 @IS_ERR(%struct.mlx4_cmd_mailbox* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %26 = call i32 @PTR_ERR(%struct.mlx4_cmd_mailbox* %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = call i32 @pr_warn(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %56

29:                                               ; preds = %16
  %30 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %31 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %32 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @key_to_hw_index(i32 %34)
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %37 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sub nsw i32 %39, 1
  %41 = and i32 %35, %40
  %42 = call i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev* %30, i32* null, i32 %41)
  store i32 %42, i32* %10, align 4
  %43 = load %struct.mlx4_dev*, %struct.mlx4_dev** %5, align 8
  %44 = load %struct.mlx4_cmd_mailbox*, %struct.mlx4_cmd_mailbox** %9, align 8
  %45 = call i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev* %43, %struct.mlx4_cmd_mailbox* %44)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %29
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @pr_warn(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %56

51:                                               ; preds = %29
  %52 = load i32, i32* @MLX4_MPT_EN_SW, align 4
  %53 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  br label %56

56:                                               ; preds = %51, %48, %24, %15
  ret void
}

declare dso_local %struct.mlx4_cmd_mailbox* @mlx4_alloc_cmd_mailbox(%struct.mlx4_dev*) #1

declare dso_local i64 @IS_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @PTR_ERR(%struct.mlx4_cmd_mailbox*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @mlx4_HW2SW_MPT(%struct.mlx4_dev*, i32*, i32) #1

declare dso_local i32 @key_to_hw_index(i32) #1

declare dso_local i32 @mlx4_free_cmd_mailbox(%struct.mlx4_dev*, %struct.mlx4_cmd_mailbox*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
