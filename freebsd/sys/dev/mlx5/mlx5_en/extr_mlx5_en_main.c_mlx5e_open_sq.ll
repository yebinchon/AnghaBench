; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_sq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_sq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_sq_param = type { i32 }
%struct.mlx5e_sq = type { i32, i32 }

@MLX5_SQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_SQC_STATE_RDY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, i32, %struct.mlx5e_sq_param*, %struct.mlx5e_sq*)* @mlx5e_open_sq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_sq(%struct.mlx5e_channel* %0, i32 %1, %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5e_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_sq_param*, align 8
  %9 = alloca %struct.mlx5e_sq*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx5e_sq_param* %2, %struct.mlx5e_sq_param** %8, align 8
  store %struct.mlx5e_sq* %3, %struct.mlx5e_sq** %9, align 8
  %11 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %18 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %20 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %23, %4
  %27 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %8, align 8
  %30 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %31 = call i32 @mlx5e_create_sq(%struct.mlx5e_channel* %27, i32 %28, %struct.mlx5e_sq_param* %29, %struct.mlx5e_sq* %30)
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %5, align 4
  br label %72

36:                                               ; preds = %26
  %37 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %38 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %8, align 8
  %39 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mlx5e_enable_sq(%struct.mlx5e_sq* %37, %struct.mlx5e_sq_param* %38, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %36
  br label %68

52:                                               ; preds = %36
  %53 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %54 = load i32, i32* @MLX5_SQC_STATE_RST, align 4
  %55 = load i32, i32* @MLX5_SQC_STATE_RDY, align 4
  %56 = call i32 @mlx5e_modify_sq(%struct.mlx5e_sq* %53, i32 %54, i32 %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %65

60:                                               ; preds = %52
  %61 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %62 = getelementptr inbounds %struct.mlx5e_sq, %struct.mlx5e_sq* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @WRITE_ONCE(i32 %63, i32 1)
  store i32 0, i32* %5, align 4
  br label %72

65:                                               ; preds = %59
  %66 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %67 = call i32 @mlx5e_disable_sq(%struct.mlx5e_sq* %66)
  br label %68

68:                                               ; preds = %65, %51
  %69 = load %struct.mlx5e_sq*, %struct.mlx5e_sq** %9, align 8
  %70 = call i32 @mlx5e_destroy_sq(%struct.mlx5e_sq* %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %68, %60, %34
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local i32 @mlx5e_create_sq(%struct.mlx5e_channel*, i32, %struct.mlx5e_sq_param*, %struct.mlx5e_sq*) #1

declare dso_local i32 @mlx5e_enable_sq(%struct.mlx5e_sq*, %struct.mlx5e_sq_param*, i32) #1

declare dso_local i32 @mlx5e_modify_sq(%struct.mlx5e_sq*, i32, i32) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @mlx5e_disable_sq(%struct.mlx5e_sq*) #1

declare dso_local i32 @mlx5e_destroy_sq(%struct.mlx5e_sq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
