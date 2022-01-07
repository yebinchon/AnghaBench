; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 (%struct.mlx_softc*, i32)*, i32 }

@MLX_STATE_SUSPEND = common dso_local global i32 0, align 4
@MLX_INTACTION_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx_resume(i32 %0) #0 {
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
  %10 = xor i32 %9, -1
  %11 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %12 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 8
  %15 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %16 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %15, i32 0, i32 0
  %17 = load i32 (%struct.mlx_softc*, i32)*, i32 (%struct.mlx_softc*, i32)** %16, align 8
  %18 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %19 = load i32, i32* @MLX_INTACTION_ENABLE, align 4
  %20 = call i32 %17(%struct.mlx_softc* %18, i32 %19)
  %21 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %22 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %21)
  ret i32 0
}

declare dso_local %struct.mlx_softc* @device_get_softc(i32) #1

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
