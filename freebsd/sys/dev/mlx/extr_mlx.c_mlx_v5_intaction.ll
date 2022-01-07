; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v5_intaction.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v5_intaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }

@MLX_V5_IER_DISINT = common dso_local global i32 0, align 4
@MLX_STATE_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_softc*, i32)* @mlx_v5_intaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_v5_intaction(%struct.mlx_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = call i32 @debug_called(i32 1)
  %6 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %7 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %31 [
    i32 129, label %9
    i32 128, label %20
  ]

9:                                                ; preds = %2
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %11 = load i32, i32* @MLX_V5_IER_DISINT, align 4
  %12 = and i32 255, %11
  %13 = call i32 @MLX_V5_PUT_IER(%struct.mlx_softc* %10, i32 %12)
  %14 = load i32, i32* @MLX_STATE_INTEN, align 4
  %15 = xor i32 %14, -1
  %16 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 4
  br label %31

20:                                               ; preds = %2
  %21 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %22 = load i32, i32* @MLX_V5_IER_DISINT, align 4
  %23 = xor i32 %22, -1
  %24 = and i32 255, %23
  %25 = call i32 @MLX_V5_PUT_IER(%struct.mlx_softc* %21, i32 %24)
  %26 = load i32, i32* @MLX_STATE_INTEN, align 4
  %27 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %28 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %2, %20, %9
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V5_PUT_IER(%struct.mlx_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
