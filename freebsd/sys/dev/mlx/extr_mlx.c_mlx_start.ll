; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i64*, i64, i32, i64, %struct.mlx_softc* }
%struct.mlx_softc = type { i32, i32**, i32, i64 (%struct.mlx_softc*, %struct.mlx_command.0*)* }
%struct.mlx_command.0 = type opaque

@MLX_STATUS_BUSY = common dso_local global i32 0, align 4
@time_second = common dso_local global i64 0, align 8
@mc_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"controller wedged (not taking commands)\0A\00", align 1
@MLX_STATUS_WEDGED = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx_command*)* @mlx_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx_start(%struct.mlx_command* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca %struct.mlx_softc*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx_command* %0, %struct.mlx_command** %3, align 8
  %6 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %7 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %6, i32 0, i32 4
  %8 = load %struct.mlx_softc*, %struct.mlx_softc** %7, align 8
  store %struct.mlx_softc* %8, %struct.mlx_softc** %4, align 8
  %9 = call i32 @debug_called(i32 1)
  %10 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %11 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %14 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 1
  store i64 %12, i64* %16, align 8
  %17 = load i32, i32* @MLX_STATUS_BUSY, align 4
  %18 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %19 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load i64, i64* @time_second, align 8
  %21 = add nsw i64 %20, 60
  %22 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %23 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %22, i32 0, i32 3
  store i64 %21, i64* %23, align 8
  store i32 100000, i32* %5, align 4
  br label %24

24:                                               ; preds = %50, %1
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %24
  %28 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %29 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %28, i32 0, i32 3
  %30 = load i64 (%struct.mlx_softc*, %struct.mlx_command.0*)*, i64 (%struct.mlx_softc*, %struct.mlx_command.0*)** %29, align 8
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %32 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %33 = bitcast %struct.mlx_command* %32 to %struct.mlx_command.0*
  %34 = call i64 %30(%struct.mlx_softc* %31, %struct.mlx_command.0* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %38 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %37, i32 0, i32 2
  %39 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %40 = load i32, i32* @mc_link, align 4
  %41 = call i32 @TAILQ_INSERT_TAIL(i32* %38, %struct.mlx_command* %39, i32 %40)
  store i32 0, i32* %2, align 4
  br label %71

42:                                               ; preds = %27
  %43 = load i32, i32* %5, align 4
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %45, label %48

45:                                               ; preds = %42
  %46 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %47 = call i32 @mlx_done(%struct.mlx_softc* %46, i32 0)
  br label %48

48:                                               ; preds = %45, %42
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, -1
  store i32 %52, i32* %5, align 4
  br label %24

53:                                               ; preds = %24
  %54 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %55 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %54, i32 0, i32 1
  %56 = load i32**, i32*** %55, align 8
  %57 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %58 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds i32*, i32** %56, i64 %59
  store i32* null, i32** %60, align 8
  %61 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %62 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @device_printf(i32 %63, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @MLX_STATUS_WEDGED, align 4
  %66 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %67 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 8
  %68 = load %struct.mlx_softc*, %struct.mlx_softc** %4, align 8
  %69 = call i32 @mlx_complete(%struct.mlx_softc* %68)
  %70 = load i32, i32* @EIO, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %53, %36
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.mlx_command*, i32) #1

declare dso_local i32 @mlx_done(%struct.mlx_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @mlx_complete(%struct.mlx_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
