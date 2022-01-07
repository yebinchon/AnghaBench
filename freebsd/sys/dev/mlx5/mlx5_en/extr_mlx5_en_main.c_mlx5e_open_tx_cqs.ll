; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_tx_cqs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx5/mlx5_en/extr_mlx5_en_main.c_mlx5e_open_tx_cqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_channel_param = type { i32 }

@mlx5e_tx_cq_comp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_channel_param*)* @mlx5e_open_tx_cqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_open_tx_cqs(%struct.mlx5e_channel* %0, %struct.mlx5e_channel_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_channel*, align 8
  %5 = alloca %struct.mlx5e_channel_param*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %4, align 8
  store %struct.mlx5e_channel_param* %1, %struct.mlx5e_channel_param** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %37, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %9, %14
  br i1 %15, label %16, label %40

16:                                               ; preds = %8
  %17 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %18 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %20, i32 0, i32 0
  %22 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %22, i32 0, i32 0
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @mlx5e_open_cq(%struct.TYPE_4__* %19, i32* %21, i32* %28, i32* @mlx5e_tx_cq_comp, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %16
  br label %41

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %7, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %7, align 4
  br label %8

40:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %61

41:                                               ; preds = %35
  %42 = load i32, i32* %7, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %56, %41
  %45 = load i32, i32* %7, align 4
  %46 = icmp sge i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %44
  %48 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %4, align 8
  %49 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = call i32 @mlx5e_close_cq(i32* %54)
  br label %56

56:                                               ; preds = %47
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %7, align 4
  br label %44

59:                                               ; preds = %44
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %59, %40
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mlx5e_open_cq(%struct.TYPE_4__*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @mlx5e_close_cq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
