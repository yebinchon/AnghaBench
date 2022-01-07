; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v4_fw_handshake.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v4_fw_handshake.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }

@MLX_V4_IDB_SACK = common dso_local global i32 0, align 4
@MLX_V4_IDB_INIT_BUSY = common dso_local global i32 0, align 4
@MLX_V4_FWERROR_PEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, i32*, i32*, i32*, i32)* @mlx_v4_fw_handshake to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_v4_fw_handshake(%struct.mlx_softc* %0, i32* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx_softc*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = call i32 @debug_called(i32 2)
  %14 = load i32, i32* %11, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %5
  %17 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  %18 = load i32, i32* @MLX_V4_IDB_SACK, align 4
  %19 = call i32 @MLX_V4_PUT_IDBR(%struct.mlx_softc* %17, i32 %18)
  %20 = call i32 @DELAY(i32 1000)
  br label %21

21:                                               ; preds = %16, %5
  %22 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  %23 = call i32 @MLX_V4_GET_IDBR(%struct.mlx_softc* %22)
  %24 = load i32, i32* @MLX_V4_IDB_INIT_BUSY, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  br label %50

28:                                               ; preds = %21
  %29 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  %30 = call i32 @MLX_V4_GET_FWERROR(%struct.mlx_softc* %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @MLX_V4_FWERROR_PEND, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %28
  store i32 1, i32* %6, align 4
  br label %50

36:                                               ; preds = %28
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @MLX_V4_FWERROR_PEND, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32*, i32** %8, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  %43 = call i32 @MLX_V4_GET_FWERROR_PARAM1(%struct.mlx_softc* %42)
  %44 = load i32*, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  %45 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  %46 = call i32 @MLX_V4_GET_FWERROR_PARAM2(%struct.mlx_softc* %45)
  %47 = load i32*, i32** %10, align 8
  store i32 %46, i32* %47, align 4
  %48 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  %49 = call i32 @MLX_V4_PUT_FWERROR(%struct.mlx_softc* %48, i32 0)
  store i32 2, i32* %6, align 4
  br label %50

50:                                               ; preds = %36, %35, %27
  %51 = load i32, i32* %6, align 4
  ret i32 %51
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_V4_PUT_IDBR(%struct.mlx_softc*, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @MLX_V4_GET_IDBR(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V4_GET_FWERROR(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V4_GET_FWERROR_PARAM1(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V4_GET_FWERROR_PARAM2(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V4_PUT_FWERROR(%struct.mlx_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
