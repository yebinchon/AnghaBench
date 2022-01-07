; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64 }
%struct.mlxd_softc = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@MLXD_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @mlxd_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxd_close(%struct.disk* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.disk*, align 8
  %4 = alloca %struct.mlxd_softc*, align 8
  store %struct.disk* %0, %struct.disk** %3, align 8
  %5 = load %struct.disk*, %struct.disk** %3, align 8
  %6 = getelementptr inbounds %struct.disk, %struct.disk* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.mlxd_softc*
  store %struct.mlxd_softc* %8, %struct.mlxd_softc** %4, align 8
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %11 = icmp eq %struct.mlxd_softc* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @ENXIO, align 4
  store i32 %13, i32* %2, align 4
  br label %37

14:                                               ; preds = %1
  %15 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @MLX_CONFIG_LOCK(i32 %17)
  %19 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @MLX_IO_LOCK(i32 %21)
  %23 = load i32, i32* @MLXD_OPEN, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %26 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %30 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MLX_IO_UNLOCK(i32 %31)
  %33 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %34 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @MLX_CONFIG_UNLOCK(i32 %35)
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %14, %12
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_CONFIG_LOCK(i32) #1

declare dso_local i32 @MLX_IO_LOCK(i32) #1

declare dso_local i32 @MLX_IO_UNLOCK(i32) #1

declare dso_local i32 @MLX_CONFIG_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
