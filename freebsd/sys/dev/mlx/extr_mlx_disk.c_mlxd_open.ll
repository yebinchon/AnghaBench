; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_open.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx_disk.c_mlxd_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.disk = type { i64 }
%struct.mlxd_softc = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@MLX_STATE_SHUTDOWN = common dso_local global i32 0, align 4
@MLXD_OPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.disk*)* @mlxd_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxd_open(%struct.disk* %0) #0 {
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
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %16 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = call i32 @MLX_CONFIG_LOCK(%struct.TYPE_5__* %17)
  %19 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %20 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %19, i32 0, i32 0
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = call i32 @MLX_IO_LOCK(%struct.TYPE_5__* %21)
  %23 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %24 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MLX_STATE_SHUTDOWN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %14
  %32 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %33 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %32, i32 0, i32 0
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = call i32 @MLX_IO_UNLOCK(%struct.TYPE_5__* %34)
  %36 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %37 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = call i32 @MLX_CONFIG_UNLOCK(%struct.TYPE_5__* %38)
  %40 = load i32, i32* @ENXIO, align 4
  store i32 %40, i32* %2, align 4
  br label %55

41:                                               ; preds = %14
  %42 = load i32, i32* @MLXD_OPEN, align 4
  %43 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %44 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %48 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %47, i32 0, i32 0
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = call i32 @MLX_IO_UNLOCK(%struct.TYPE_5__* %49)
  %51 = load %struct.mlxd_softc*, %struct.mlxd_softc** %4, align 8
  %52 = getelementptr inbounds %struct.mlxd_softc, %struct.mlxd_softc* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = call i32 @MLX_CONFIG_UNLOCK(%struct.TYPE_5__* %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %41, %31, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_CONFIG_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.TYPE_5__*) #1

declare dso_local i32 @MLX_CONFIG_UNLOCK(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
