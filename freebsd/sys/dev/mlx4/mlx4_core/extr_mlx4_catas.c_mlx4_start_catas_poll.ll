; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_catas.c_mlx4_start_catas_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_catas.c_mlx4_start_catas_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx4_priv = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__, i32*, i32 }
%struct.TYPE_9__ = type { i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [47 x i8] c"Failed to map internal error buffer at 0x%llx\0A\00", align 1
@poll_catas = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MLX4_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_start_catas_poll(%struct.mlx4_dev* %0) #0 {
  %2 = alloca %struct.mlx4_dev*, align 8
  %3 = alloca %struct.mlx4_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %2, align 8
  %5 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %6 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %5)
  store %struct.mlx4_priv* %6, %struct.mlx4_priv** %3, align 8
  %7 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 2
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 0
  %14 = call i32 @init_timer(%struct.TYPE_9__* %13)
  %15 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 1
  store i32* null, i32** %17, align 8
  %18 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %19 = call i32 @mlx4_is_slave(%struct.mlx4_dev* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %57, label %21

21:                                               ; preds = %1
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %23 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %28 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @pci_resource_start(i32 %26, i32 %30)
  %32 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %33 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = add nsw i64 %31, %35
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %39 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 4
  %43 = call i32* @ioremap(i64 %37, i32 %42)
  %44 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  store i32* %43, i32** %46, align 8
  %47 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %48 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %56, label %52

52:                                               ; preds = %21
  %53 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @mlx4_warn(%struct.mlx4_dev* %53, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %54)
  br label %81

56:                                               ; preds = %21
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.mlx4_dev*, %struct.mlx4_dev** %2, align 8
  %59 = ptrtoint %struct.mlx4_dev* %58 to i64
  %60 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %61 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  %64 = load i32, i32* @poll_catas, align 4
  %65 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %66 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store i32 %64, i32* %68, align 4
  %69 = load i64, i64* @jiffies, align 8
  %70 = load i64, i64* @MLX4_CATAS_POLL_INTERVAL, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @round_jiffies(i64 %71)
  %73 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %74 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 8
  %77 = load %struct.mlx4_priv*, %struct.mlx4_priv** %3, align 8
  %78 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 @add_timer(%struct.TYPE_9__* %79)
  br label %81

81:                                               ; preds = %57, %52
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @init_timer(%struct.TYPE_9__*) #1

declare dso_local i32 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*, i64) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @add_timer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
