; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_setup_dmamap.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_setup_dmamap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_command = type { i32, i32, i32, i32, i32, i64, %struct.mlx_softc* }
%struct.mlx_softc = type { i32, i64, %struct.mlx_sgentry*, %struct.TYPE_4__* }
%struct.mlx_sgentry = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"MLX: too many s/g segments (%d, max %d)\00", align 1
@MLX_NSEG = common dso_local global i32 0, align 4
@MLX_CMD_DATAIN = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@MLX_CMD_DATAOUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx_command*, %struct.TYPE_5__*, i32, i32)* @mlx_setup_dmamap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx_setup_dmamap(%struct.mlx_command* %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mlx_command*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mlx_softc*, align 8
  %10 = alloca %struct.mlx_sgentry*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx_command* %0, %struct.mlx_command** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %13 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %12, i32 0, i32 6
  %14 = load %struct.mlx_softc*, %struct.mlx_softc** %13, align 8
  store %struct.mlx_softc* %14, %struct.mlx_softc** %9, align 8
  %15 = call i32 @debug_called(i32 1)
  %16 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %17 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = icmp ne %struct.TYPE_4__* %18, null
  br i1 %19, label %20, label %36

20:                                               ; preds = %4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %23 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %22, i32 0, i32 3
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp sgt i32 %21, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %31 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %30, i32 0, i32 3
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %34)
  br label %36

36:                                               ; preds = %28, %20, %4
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %38 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %37, i32 0, i32 2
  %39 = load %struct.mlx_sgentry*, %struct.mlx_sgentry** %38, align 8
  %40 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %41 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MLX_NSEG, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.mlx_sgentry, %struct.mlx_sgentry* %39, i64 %45
  store %struct.mlx_sgentry* %46, %struct.mlx_sgentry** %10, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %49 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %51 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %54 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @MLX_NSEG, align 4
  %57 = mul nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = mul i64 %58, 8
  %60 = add i64 %52, %59
  %61 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %62 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %61, i32 0, i32 5
  store i64 %60, i64* %62, align 8
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %68 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %67, i32 0, i32 4
  store i32 %66, i32* %68, align 8
  store i32 0, i32* %11, align 4
  br label %69

69:                                               ; preds = %90, %36
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %69
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.mlx_sgentry*, %struct.mlx_sgentry** %10, align 8
  %81 = getelementptr inbounds %struct.mlx_sgentry, %struct.mlx_sgentry* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.mlx_sgentry*, %struct.mlx_sgentry** %10, align 8
  %89 = getelementptr inbounds %struct.mlx_sgentry, %struct.mlx_sgentry* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %73
  %91 = load i32, i32* %11, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %11, align 4
  %93 = load %struct.mlx_sgentry*, %struct.mlx_sgentry** %10, align 8
  %94 = getelementptr inbounds %struct.mlx_sgentry, %struct.mlx_sgentry* %93, i32 1
  store %struct.mlx_sgentry* %94, %struct.mlx_sgentry** %10, align 8
  br label %69

95:                                               ; preds = %69
  %96 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %97 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @MLX_CMD_DATAIN, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %104 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %107 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %110 = call i32 @bus_dmamap_sync(i32 %105, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %102, %95
  %112 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %113 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MLX_CMD_DATAOUT, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %111
  %119 = load %struct.mlx_softc*, %struct.mlx_softc** %9, align 8
  %120 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.mlx_command*, %struct.mlx_command** %5, align 8
  %123 = getelementptr inbounds %struct.mlx_command, %struct.mlx_command* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %126 = call i32 @bus_dmamap_sync(i32 %121, i32 %124, i32 %125)
  br label %127

127:                                              ; preds = %118, %111
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
