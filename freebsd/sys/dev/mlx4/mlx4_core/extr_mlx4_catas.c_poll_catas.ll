; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_catas.c_poll_catas.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_core/extr_mlx4_catas.c_poll_catas.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.mlx4_priv = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"Internal error detected on the communication channel\0A\00", align 1
@MLX4_DEVICE_STATE_INTERNAL_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Internal error mark was detected on device\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@MLX4_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8
@mlx4_internal_err_reset = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @poll_catas to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @poll_catas(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mlx4_dev*, align 8
  %4 = alloca %struct.mlx4_priv*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.mlx4_dev*
  store %struct.mlx4_dev* %7, %struct.mlx4_dev** %3, align 8
  %8 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %9 = call %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev* %8)
  store %struct.mlx4_priv* %9, %struct.mlx4_priv** %4, align 8
  %10 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %11 = call i64 @mlx4_is_slave(%struct.mlx4_dev* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %1
  %14 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = call i64 @readl(i32* %18)
  %20 = call i32 @swab32(i64 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i64 @mlx4_comm_internal_err(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %26 = call i32 @mlx4_warn(%struct.mlx4_dev* %25, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  br label %60

27:                                               ; preds = %13
  br label %39

28:                                               ; preds = %1
  %29 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %30 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i64 @readl(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %28
  %36 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %37 = call i32 @dump_err_buf(%struct.mlx4_dev* %36)
  br label %60

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %27
  %40 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %41 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %40, i32 0, i32 0
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MLX4_DEVICE_STATE_INTERNAL_ERROR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %50 = call i32 @mlx4_warn(%struct.mlx4_dev* %49, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0))
  br label %60

51:                                               ; preds = %39
  %52 = load %struct.mlx4_priv*, %struct.mlx4_priv** %4, align 8
  %53 = getelementptr inbounds %struct.mlx4_priv, %struct.mlx4_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i64, i64* @jiffies, align 8
  %56 = load i64, i64* @MLX4_CATAS_POLL_INTERVAL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @round_jiffies(i64 %57)
  %59 = call i32 @mod_timer(i32* %54, i32 %58)
  br label %74

60:                                               ; preds = %48, %35, %24
  %61 = load i64, i64* @mlx4_internal_err_reset, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %65 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.mlx4_dev*, %struct.mlx4_dev** %3, align 8
  %70 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = call i32 @queue_work(i32 %68, i32* %72)
  br label %74

74:                                               ; preds = %51, %63, %60
  ret void
}

declare dso_local %struct.mlx4_priv* @mlx4_priv(%struct.mlx4_dev*) #1

declare dso_local i64 @mlx4_is_slave(%struct.mlx4_dev*) #1

declare dso_local i32 @swab32(i64) #1

declare dso_local i64 @readl(i32*) #1

declare dso_local i64 @mlx4_comm_internal_err(i32) #1

declare dso_local i32 @mlx4_warn(%struct.mlx4_dev*, i8*) #1

declare dso_local i32 @dump_err_buf(%struct.mlx4_dev*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @round_jiffies(i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
