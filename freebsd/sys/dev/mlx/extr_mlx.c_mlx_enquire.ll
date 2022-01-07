; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_enquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_enquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32 }
%struct.mlx_command = type { i32, i64, i32, {}*, i8*, i32, %struct.mlx_command* }

@M_DEVBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@MLX_CMD_PRIORITY = common dso_local global i32 0, align 4
@MLX_CMD_DATAOUT = common dso_local global i32 0, align 4
@mlx_enquire_cb = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.mlx_softc*, i32, i64, void (%struct.mlx_command*)*)* @mlx_enquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mlx_enquire(%struct.mlx_softc* %0, i32 %1, i64 %2, void (%struct.mlx_command*)* %3) #0 {
  %5 = alloca %struct.mlx_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca void (%struct.mlx_command*)*, align 8
  %9 = alloca %struct.mlx_command*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  store void (%struct.mlx_command*)* %3, void (%struct.mlx_command*)** %8, align 8
  %12 = call i32 @debug_called(i32 1)
  %13 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %14 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %13)
  store i32 1, i32* %11, align 4
  store i8* null, i8** %10, align 8
  %15 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %16 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %15)
  store %struct.mlx_command* %16, %struct.mlx_command** %9, align 8
  %17 = icmp eq %struct.mlx_command* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %4
  br label %75

19:                                               ; preds = %4
  %20 = load i64, i64* %7, align 8
  %21 = load i32, i32* @M_DEVBUF, align 4
  %22 = load i32, i32* @M_NOWAIT, align 4
  %23 = call i8* @malloc(i64 %20, i32 %21, i32 %22)
  store i8* %23, i8** %10, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %75

26:                                               ; preds = %19
  %27 = load i32, i32* @MLX_CMD_PRIORITY, align 4
  %28 = load i32, i32* @MLX_CMD_DATAOUT, align 4
  %29 = or i32 %27, %28
  %30 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %31 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 8
  %34 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %35 = call i64 @mlx_getslot(%struct.mlx_command* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %26
  br label %75

38:                                               ; preds = %26
  %39 = load i8*, i8** %10, align 8
  %40 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %41 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %44 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %47 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load void (%struct.mlx_command*)*, void (%struct.mlx_command*)** %8, align 8
  %49 = icmp ne void (%struct.mlx_command*)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %38
  %51 = load void (%struct.mlx_command*)*, void (%struct.mlx_command*)** %8, align 8
  %52 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %53 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %52, i32 0, i32 3
  %54 = bitcast {}** %53 to void (%struct.mlx_command*)**
  store void (%struct.mlx_command*)* %51, void (%struct.mlx_command*)** %54, align 8
  %55 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %56 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %57 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %56, i32 0, i32 6
  store %struct.mlx_command* %55, %struct.mlx_command** %57, align 8
  br label %58

58:                                               ; preds = %50, %38
  %59 = load %struct.mlx_softc*, %struct.mlx_softc** %5, align 8
  %60 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %63 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %66 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %65, i32 0, i32 4
  %67 = load i8*, i8** %66, align 8
  %68 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %69 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i32, i32* @mlx_enquire_cb, align 4
  %72 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %73 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %74 = call i32 @bus_dmamap_load(i32 %61, i32 %64, i8* %67, i64 %70, i32 %71, %struct.mlx_command* %72, i32 %73)
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %58, %37, %25, %18
  %76 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %77 = icmp ne %struct.mlx_command* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %75
  %79 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %80 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %79, i32 0, i32 3
  %81 = bitcast {}** %80 to void (%struct.mlx_command*)**
  %82 = load void (%struct.mlx_command*)*, void (%struct.mlx_command*)** %81, align 8
  %83 = icmp eq void (%struct.mlx_command*)* %82, null
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.mlx_command*, %struct.mlx_command** %9, align 8
  %86 = call i32 @mlx_releasecmd(%struct.mlx_command* %85)
  br label %87

87:                                               ; preds = %84, %78, %75
  %88 = load i32, i32* %11, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %87
  %91 = load i8*, i8** %10, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i8*, i8** %10, align 8
  %95 = load i32, i32* @M_DEVBUF, align 4
  %96 = call i32 @free(i8* %94, i32 %95)
  store i8* null, i8** %10, align 8
  br label %97

97:                                               ; preds = %93, %90, %87
  %98 = load i8*, i8** %10, align 8
  ret i8* %98
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i8* @malloc(i64, i32, i32) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i8*, i64, i32, %struct.mlx_command*, i32) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

declare dso_local i32 @free(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
