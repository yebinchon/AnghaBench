; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_alloccmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_alloccmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i32, %struct.mlx_softc* }
%struct.mlx_softc = type { i32, i32 }

@mc_link = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx_command* (%struct.mlx_softc*)* @mlx_alloccmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %0) #0 {
  %2 = alloca %struct.mlx_command*, align 8
  %3 = alloca %struct.mlx_softc*, align 8
  %4 = alloca %struct.mlx_command*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %3, align 8
  %6 = call i32 @debug_called(i32 1)
  %7 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %8 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %7)
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %10 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %9, i32 0, i32 1
  %11 = call %struct.mlx_command* @TAILQ_FIRST(i32* %10)
  store %struct.mlx_command* %11, %struct.mlx_command** %4, align 8
  %12 = icmp ne %struct.mlx_command* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %15 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %14, i32 0, i32 1
  %16 = load %struct.mlx_command*, %struct.mlx_command** %4, align 8
  %17 = load i32, i32* @mc_link, align 4
  %18 = call i32 @TAILQ_REMOVE(i32* %15, %struct.mlx_command* %16, i32 %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.mlx_command*, %struct.mlx_command** %4, align 8
  %21 = icmp eq %struct.mlx_command* %20, null
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = load i32, i32* @M_DEVBUF, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @malloc(i32 16, i32 %23, i32 %26)
  %28 = inttoptr i64 %27 to %struct.mlx_command*
  store %struct.mlx_command* %28, %struct.mlx_command** %4, align 8
  %29 = load %struct.mlx_command*, %struct.mlx_command** %4, align 8
  %30 = icmp ne %struct.mlx_command* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %22
  %32 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %33 = load %struct.mlx_command*, %struct.mlx_command** %4, align 8
  %34 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %33, i32 0, i32 1
  store %struct.mlx_softc* %32, %struct.mlx_softc** %34, align 8
  %35 = load %struct.mlx_softc*, %struct.mlx_softc** %3, align 8
  %36 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx_command*, %struct.mlx_command** %4, align 8
  %39 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %38, i32 0, i32 0
  %40 = call i32 @bus_dmamap_create(i32 %37, i32 0, i32* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %31
  %44 = load %struct.mlx_command*, %struct.mlx_command** %4, align 8
  %45 = load i32, i32* @M_DEVBUF, align 4
  %46 = call i32 @free(%struct.mlx_command* %44, i32 %45)
  store %struct.mlx_command* null, %struct.mlx_command** %2, align 8
  br label %51

47:                                               ; preds = %31
  br label %48

48:                                               ; preds = %47, %22
  br label %49

49:                                               ; preds = %48, %19
  %50 = load %struct.mlx_command*, %struct.mlx_command** %4, align 8
  store %struct.mlx_command* %50, %struct.mlx_command** %2, align 8
  br label %51

51:                                               ; preds = %49, %43
  %52 = load %struct.mlx_command*, %struct.mlx_command** %2, align 8
  ret %struct.mlx_command* %52
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mlx_command*, i32) #1

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @free(%struct.mlx_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
