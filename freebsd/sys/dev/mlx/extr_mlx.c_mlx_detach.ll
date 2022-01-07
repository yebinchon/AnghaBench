; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mlxd_softc = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@MLX_STATE_OPEN = common dso_local global i32 0, align 4
@MLX_MAXDRIVES = common dso_local global i32 0, align 4
@MLXD_OPEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"still open, can't detach\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx_detach(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca %struct.mlxd_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %8 = load i64, i64* %3, align 8
  %9 = call i8* @device_get_softc(i64 %8)
  %10 = bitcast i8* %9 to %struct.mlx_softc*
  store %struct.mlx_softc* %10, %struct.mlx_softc** %4, align 8
  %11 = call i32 @debug_called(i32 1)
  %12 = load i32, i32* @EBUSY, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %14 = call i32 @MLX_CONFIG_LOCK(%struct.mlx_softc* %13)
  %15 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MLX_STATE_OPEN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %1
  br label %79

22:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %66, %22
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @MLX_MAXDRIVES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %69

27:                                               ; preds = %23
  %28 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %29 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %27
  %38 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %39 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %38, i32 0, i32 1
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i8* @device_get_softc(i64 %45)
  %47 = bitcast i8* %46 to %struct.mlxd_softc*
  store %struct.mlxd_softc* %47, %struct.mlxd_softc** %5, align 8
  %48 = load %struct.mlxd_softc*, %struct.mlxd_softc** %5, align 8
  %49 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MLXD_OPEN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %37
  %55 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %56 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load i32, i32* %6, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @device_printf(i64 %62, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %79

64:                                               ; preds = %37
  br label %65

65:                                               ; preds = %64, %27
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %23

69:                                               ; preds = %23
  %70 = load i64, i64* %3, align 8
  %71 = call i32 @mlx_shutdown(i64 %70)
  store i32 %71, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %79

74:                                               ; preds = %69
  %75 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %76 = call i32 @MLX_CONFIG_UNLOCK(%struct.mlx_softc* %75)
  %77 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %78 = call i32 @mlx_free(%struct.mlx_softc* %77)
  store i32 0, i32* %2, align 4
  br label %83

79:                                               ; preds = %73, %54, %21
  %80 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %81 = call i32 @MLX_CONFIG_UNLOCK(%struct.mlx_softc* %80)
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %79, %74
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i8* @device_get_softc(i64) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_CONFIG_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @device_printf(i64, i8*) #1

declare dso_local i32 @mlx_shutdown(i64) #1

declare dso_local i32 @MLX_CONFIG_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @mlx_free(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
