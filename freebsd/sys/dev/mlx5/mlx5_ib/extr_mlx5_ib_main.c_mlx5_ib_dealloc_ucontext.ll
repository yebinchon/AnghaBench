; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_dealloc_ucontext.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_ib/extr_mlx5_ib_main.c_mlx5_ib_dealloc_ucontext.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ucontext = type { i32 }
%struct.mlx5_ib_ucontext = type { i32, i32, %struct.mlx5_uuar_info }
%struct.mlx5_uuar_info = type { i32, %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext* }
%struct.mlx5_ib_dev = type { i32 }

@log_max_transport_domain = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"failed to free UAR 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_ucontext*)* @mlx5_ib_dealloc_ucontext to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5_ib_dealloc_ucontext(%struct.ib_ucontext* %0) #0 {
  %2 = alloca %struct.ib_ucontext*, align 8
  %3 = alloca %struct.mlx5_ib_ucontext*, align 8
  %4 = alloca %struct.mlx5_ib_dev*, align 8
  %5 = alloca %struct.mlx5_uuar_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ib_ucontext* %0, %struct.ib_ucontext** %2, align 8
  %7 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %8 = call %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext* %7)
  store %struct.mlx5_ib_ucontext* %8, %struct.mlx5_ib_ucontext** %3, align 8
  %9 = load %struct.ib_ucontext*, %struct.ib_ucontext** %2, align 8
  %10 = getelementptr inbounds %struct.ib_ucontext, %struct.ib_ucontext* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.mlx5_ib_dev* @to_mdev(i32 %11)
  store %struct.mlx5_ib_dev* %12, %struct.mlx5_ib_dev** %4, align 8
  %13 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %14 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %13, i32 0, i32 2
  store %struct.mlx5_uuar_info* %14, %struct.mlx5_uuar_info** %5, align 8
  %15 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @log_max_transport_domain, align 4
  %19 = call i64 @MLX5_CAP_GEN(i32 %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlx5_dealloc_transport_domain(i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %21, %1
  store i32 0, i32* %6, align 4
  br label %30

30:                                               ; preds = %62, %29
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %33 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %65

36:                                               ; preds = %30
  %37 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %38 = getelementptr inbounds %struct.mlx5_ib_dev, %struct.mlx5_ib_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %40, i32 0, i32 1
  %42 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %42, i64 %44
  %46 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i64 @mlx5_cmd_free_uar(i32 %39, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %36
  %51 = load %struct.mlx5_ib_dev*, %struct.mlx5_ib_dev** %4, align 8
  %52 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %53 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %52, i32 0, i32 1
  %54 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %54, i64 %56
  %58 = getelementptr inbounds %struct.mlx5_ib_ucontext, %struct.mlx5_ib_ucontext* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mlx5_ib_warn(%struct.mlx5_ib_dev* %51, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %50, %36
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %6, align 4
  br label %30

65:                                               ; preds = %30
  %66 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %67 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %66, i32 0, i32 3
  %68 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %67, align 8
  %69 = call i32 @kfree(%struct.mlx5_ib_ucontext* %68)
  %70 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %71 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %70, i32 0, i32 2
  %72 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %71, align 8
  %73 = call i32 @kfree(%struct.mlx5_ib_ucontext* %72)
  %74 = load %struct.mlx5_uuar_info*, %struct.mlx5_uuar_info** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_uuar_info, %struct.mlx5_uuar_info* %74, i32 0, i32 1
  %76 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %75, align 8
  %77 = call i32 @kfree(%struct.mlx5_ib_ucontext* %76)
  %78 = load %struct.mlx5_ib_ucontext*, %struct.mlx5_ib_ucontext** %3, align 8
  %79 = call i32 @kfree(%struct.mlx5_ib_ucontext* %78)
  ret i32 0
}

declare dso_local %struct.mlx5_ib_ucontext* @to_mucontext(%struct.ib_ucontext*) #1

declare dso_local %struct.mlx5_ib_dev* @to_mdev(i32) #1

declare dso_local i64 @MLX5_CAP_GEN(i32, i32) #1

declare dso_local i32 @mlx5_dealloc_transport_domain(i32, i32) #1

declare dso_local i64 @mlx5_cmd_free_uar(i32, i32) #1

declare dso_local i32 @mlx5_ib_warn(%struct.mlx5_ib_dev*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.mlx5_ib_ucontext*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
