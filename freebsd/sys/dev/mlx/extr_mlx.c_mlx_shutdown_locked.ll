; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_shutdown_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_shutdown_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { %struct.TYPE_2__*, i32, i32 (%struct.mlx_softc*, i32)*, i32 }
%struct.TYPE_2__ = type { i64 }

@MLX_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@MLX_INTACTION_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"flushing cache...\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"done\0A\00", align 1
@MLX_MAXDRIVES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*)* @mlx_shutdown_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_shutdown_locked(%struct.mlx_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %3, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %8 = call i32 @MLX_CONFIG_ASSERT_LOCKED(%struct.mlx_softc* %7)
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %10 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %9)
  %11 = load i32, i32* @MLX_STATE_SHUTDOWN, align 4
  %12 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %13 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %16, i32 0, i32 2
  %18 = load i32 (%struct.mlx_softc*, i32)*, i32 (%struct.mlx_softc*, i32)** %17, align 8
  %19 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %20 = load i32, i32* @MLX_INTACTION_DISABLE, align 4
  %21 = call i32 %18(%struct.mlx_softc* %19, i32 %20)
  %22 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %23 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %27 = call i64 @mlx_flush(%struct.mlx_softc* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %1
  %30 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  br label %33

31:                                               ; preds = %1
  %32 = call i32 @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %33

33:                                               ; preds = %31, %29
  %34 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %35 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %75, %33
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MLX_MAXDRIVES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %78

40:                                               ; preds = %36
  %41 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %42 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %40
  %51 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %52 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %55 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = load i32, i32* %4, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = call i32 @device_delete_child(i32 %53, i64 %61)
  store i32 %62, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %50
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %79

66:                                               ; preds = %50
  %67 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %68 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %67, i32 0, i32 0
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = load i32, i32* %4, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i64 %71
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  br label %74

74:                                               ; preds = %66, %40
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %4, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %4, align 4
  br label %36

78:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %64
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_CONFIG_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @mlx_flush(%struct.mlx_softc*) #1

declare dso_local i32 @printf(i8*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
