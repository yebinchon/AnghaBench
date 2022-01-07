; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic_eventlog_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_periodic_eventlog_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }
%struct.mlx_command = type { i32, i32*, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@mlx_eventlog_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_softc*)* @mlx_periodic_eventlog_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_periodic_eventlog_poll(%struct.mlx_softc* %0) #0 {
  %2 = alloca %struct.mlx_softc*, align 8
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %2, align 8
  store i8* null, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @debug_called(i32 1)
  %7 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %8 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %7)
  store i32 1, i32* %5, align 4
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %10 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %9)
  store %struct.mlx_command* %10, %struct.mlx_command** %3, align 8
  %11 = icmp eq %struct.mlx_command* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  %14 = load i32, i32* @M_DEVBUF, align 4
  %15 = load i32, i32* @M_NOWAIT, align 4
  %16 = call i8* @malloc(i32 1024, i32 %14, i32 %15)
  store i8* %16, i8** %4, align 8
  %17 = icmp eq i8* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %47

19:                                               ; preds = %13
  %20 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %21 = call i64 @mlx_getslot(%struct.mlx_command* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  br label %47

24:                                               ; preds = %19
  %25 = load i8*, i8** %4, align 8
  %26 = bitcast i8* %25 to i32*
  %27 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %28 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %30 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %29, i32 0, i32 0
  store i32 1024, i32* %30, align 8
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %35 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %38 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %41 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @mlx_eventlog_cb, align 4
  %44 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %45 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %46 = call i32 @bus_dmamap_load(i32 %33, i32 %36, i32* %39, i32 %42, i32 %43, %struct.mlx_command* %44, i32 %45)
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %24, %23, %18, %12
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %69

50:                                               ; preds = %47
  %51 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %52 = icmp ne %struct.mlx_command* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %55 = call i32 @mlx_releasecmd(%struct.mlx_command* %54)
  br label %56

56:                                               ; preds = %53, %50
  %57 = load i8*, i8** %4, align 8
  %58 = icmp ne i8* %57, null
  br i1 %58, label %59, label %68

59:                                               ; preds = %56
  %60 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %61 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load i8*, i8** %4, align 8
  %66 = load i32, i32* @M_DEVBUF, align 4
  %67 = call i32 @free(i8* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %59, %56
  br label %69

69:                                               ; preds = %68, %47
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32*, i32, i32, %struct.mlx_command*, i32) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
