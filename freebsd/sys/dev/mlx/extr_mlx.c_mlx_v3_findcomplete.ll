; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v3_findcomplete.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_v3_findcomplete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }

@MLX_V3_ODB_SAVAIL = common dso_local global i32 0, align 4
@MLX_V3_IDB_SACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_softc*, i32*, i32*)* @mlx_v3_findcomplete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_v3_findcomplete(%struct.mlx_softc* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx_softc*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.mlx_softc* %0, %struct.mlx_softc** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = call i32 @debug_called(i32 2)
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %10 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %9)
  %11 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %12 = call i32 @MLX_V3_GET_ODBR(%struct.mlx_softc* %11)
  %13 = load i32, i32* @MLX_V3_ODB_SAVAIL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %29

16:                                               ; preds = %3
  %17 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %18 = call i32 @MLX_V3_GET_STATUS_IDENT(%struct.mlx_softc* %17)
  %19 = load i32*, i32** %6, align 8
  store i32 %18, i32* %19, align 4
  %20 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %21 = call i32 @MLX_V3_GET_STATUS(%struct.mlx_softc* %20)
  %22 = load i32*, i32** %7, align 8
  store i32 %21, i32* %22, align 4
  %23 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %24 = load i32, i32* @MLX_V3_ODB_SAVAIL, align 4
  %25 = call i32 @MLX_V3_PUT_ODBR(%struct.mlx_softc* %23, i32 %24)
  %26 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %27 = load i32, i32* @MLX_V3_IDB_SACK, align 4
  %28 = call i32 @MLX_V3_PUT_IDBR(%struct.mlx_softc* %26, i32 %27)
  store i32 1, i32* %4, align 4
  br label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V3_GET_ODBR(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V3_GET_STATUS_IDENT(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V3_GET_STATUS(%struct.mlx_softc*) #1

declare dso_local i32 @MLX_V3_PUT_ODBR(%struct.mlx_softc*, i32) #1

declare dso_local i32 @MLX_V3_PUT_IDBR(%struct.mlx_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
