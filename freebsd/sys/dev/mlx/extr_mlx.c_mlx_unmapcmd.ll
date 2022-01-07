; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_unmapcmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_unmapcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i32, i32, i32*, %struct.mlx_softc* }
%struct.mlx_softc = type { i32 }

@MLX_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@MLX_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_command*)* @mlx_unmapcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_unmapcmd(%struct.mlx_command* %0) #0 {
  %2 = alloca %struct.mlx_command*, align 8
  %3 = alloca %struct.mlx_softc*, align 8
  store %struct.mlx_command* %0, %struct.mlx_command** %2, align 8
  %4 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %5 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %4, i32 0, i32 3
  %6 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  store %struct.mlx_softc* %6, %struct.mlx_softc** %3, align 8
  %7 = call i32 @debug_called(i32 1)
  %8 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %9 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %8, i32 0, i32 2
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %52

12:                                               ; preds = %1
  %13 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %14 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MLX_CMD_DATAIN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %24 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %27 = call i32 @bus_dmamap_sync(i32 %22, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %19, %12
  %29 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %30 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @MLX_CMD_DATAOUT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %28
  %36 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %37 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %40 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %43 = call i32 @bus_dmamap_sync(i32 %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %35, %28
  %45 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %46 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  %49 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @bus_dmamap_unload(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %1
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
