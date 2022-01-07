; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_startio.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_startio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i32, i32, i32 }
%struct.mlx_command = type { i32, i32, i32, %struct.bio*, i32 }
%struct.bio = type { i32, i32 }

@MLX_STATE_QFROZEN = common dso_local global i32 0, align 4
@mlx_completeio = common dso_local global i32 0, align 4
@mlx_startio_cb = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_softc*)* @mlx_startio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_startio(%struct.mlx_softc* %0) #0 {
  %2 = alloca %struct.mlx_softc*, align 8
  %3 = alloca %struct.mlx_command*, align 8
  %4 = alloca %struct.bio*, align 8
  %5 = alloca i32, align 4
  store %struct.mlx_softc* %0, %struct.mlx_softc** %2, align 8
  %6 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %7 = call i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc* %6)
  br label %8

8:                                                ; preds = %83, %1
  %9 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %10 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MLX_STATE_QFROZEN, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %8
  br label %84

16:                                               ; preds = %8
  %17 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %18 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %17, i32 0, i32 3
  %19 = call %struct.bio* @bioq_first(i32* %18)
  store %struct.bio* %19, %struct.bio** %4, align 8
  %20 = icmp eq %struct.bio* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %84

22:                                               ; preds = %16
  %23 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %24 = call %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc* %23)
  store %struct.mlx_command* %24, %struct.mlx_command** %3, align 8
  %25 = icmp eq %struct.mlx_command* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %84

27:                                               ; preds = %22
  %28 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %29 = call i64 @mlx_getslot(%struct.mlx_command* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %33 = call i32 @mlx_releasecmd(%struct.mlx_command* %32)
  br label %84

34:                                               ; preds = %27
  %35 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %36 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %35, i32 0, i32 3
  %37 = load %struct.bio*, %struct.bio** %4, align 8
  %38 = call i32 @bioq_remove(i32* %36, %struct.bio* %37)
  %39 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %40 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %40, align 4
  %43 = load i32, i32* @mlx_completeio, align 4
  %44 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %45 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bio*, %struct.bio** %4, align 8
  %47 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %48 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %47, i32 0, i32 3
  store %struct.bio* %46, %struct.bio** %48, align 8
  %49 = load %struct.bio*, %struct.bio** %4, align 8
  %50 = getelementptr inbounds %struct.bio, %struct.bio* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %53 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.bio*, %struct.bio** %4, align 8
  %55 = getelementptr inbounds %struct.bio, %struct.bio* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %58 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %60 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %63 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %66 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %69 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @mlx_startio_cb, align 4
  %72 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %73 = call i32 @bus_dmamap_load(i32 %61, i32 %64, i32 %67, i32 %70, i32 %71, %struct.mlx_command* %72, i32 0)
  store i32 %73, i32* %5, align 4
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @EINPROGRESS, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %34
  %78 = load i32, i32* @MLX_STATE_QFROZEN, align 4
  %79 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %80 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %84

83:                                               ; preds = %34
  br label %8

84:                                               ; preds = %77, %31, %26, %21, %15
  ret void
}

declare dso_local i32 @MLX_IO_ASSERT_LOCKED(%struct.mlx_softc*) #1

declare dso_local %struct.bio* @bioq_first(i32*) #1

declare dso_local %struct.mlx_command* @mlx_alloccmd(%struct.mlx_softc*) #1

declare dso_local i64 @mlx_getslot(%struct.mlx_command*) #1

declare dso_local i32 @mlx_releasecmd(%struct.mlx_command*) #1

declare dso_local i32 @bioq_remove(i32*, %struct.bio*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.mlx_command*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
