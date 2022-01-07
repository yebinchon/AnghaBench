; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 (%struct.mlx_softc*, i32)*, i32, i32 }

@MLX_STATE_SUSPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"flushing cache...\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"failed\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"done\00", align 1
@MLX_INTACTION_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx_suspend(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mlx_softc* @device_get_softc(i32 %4)
  store %struct.mlx_softc* %5, %struct.mlx_softc** %3, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %8 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %7)
  %9 = load i32, i32* @MLX_STATE_SUSPEND, align 4
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %11 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @device_printf(i32 %16, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %19 = call i64 @mlx_flush(%struct.mlx_softc* %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)
  %23 = call i32 @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  %24 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %25 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %24, i32 0, i32 0
  %26 = load i32 (%struct.mlx_softc*, i32)*, i32 (%struct.mlx_softc*, i32)** %25, align 8
  %27 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %28 = load i32, i32* @MLX_INTACTION_DISABLE, align 4
  %29 = call i32 %26(%struct.mlx_softc* %27, i32 %28)
  %30 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %31 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %30)
  ret i32 0
}

declare dso_local %struct.mlx_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i64 @mlx_flush(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
