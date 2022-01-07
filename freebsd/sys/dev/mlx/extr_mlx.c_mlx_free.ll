; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx/extr_mlx.c_mlx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx_softc = type { i32, i32, i32*, i32*, i32, i32, i32, i64, i32*, i64, i32, i64, i64, i64, i32, i32, i64, i32* }
%struct.mlx_command = type { i32 }

@mc_link = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx_free(%struct.mlx_softc* %0) #0 {
  %2 = alloca %struct.mlx_softc*, align 8
  %3 = alloca %struct.mlx_command*, align 8
  store %struct.mlx_softc* %0, %struct.mlx_softc** %2, align 8
  %4 = call i32 @debug_called(i32 1)
  %5 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %6 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %5, i32 0, i32 17
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %14

9:                                                ; preds = %1
  %10 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %11 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %10, i32 0, i32 17
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @destroy_dev(i32* %12)
  br label %14

14:                                               ; preds = %9, %1
  %15 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %16 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %15, i32 0, i32 16
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %14
  %20 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %21 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %20, i32 0, i32 6
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %24 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %23, i32 0, i32 8
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %27 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %26, i32 0, i32 16
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @bus_teardown_intr(i32 %22, i32* %25, i64 %28)
  br label %30

30:                                               ; preds = %19, %14
  %31 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %32 = call i32 @MLX_IO_LOCK(%struct.mlx_softc* %31)
  %33 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %34 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %33, i32 0, i32 14
  %35 = call i32 @callout_stop(i32* %34)
  br label %36

36:                                               ; preds = %41, %30
  %37 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %38 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %37, i32 0, i32 15
  %39 = call %struct.mlx_command* @TAILQ_FIRST(i32* %38)
  store %struct.mlx_command* %39, %struct.mlx_command** %3, align 8
  %40 = icmp ne %struct.mlx_command* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %42, i32 0, i32 15
  %44 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %45 = load i32, i32* @mc_link, align 4
  %46 = call i32 @TAILQ_REMOVE(i32* %43, %struct.mlx_command* %44, i32 %45)
  %47 = load %struct.mlx_command*, %struct.mlx_command** %3, align 8
  %48 = call i32 @mlx_freecmd(%struct.mlx_command* %47)
  br label %36

49:                                               ; preds = %36
  %50 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %51 = call i32 @MLX_IO_UNLOCK(%struct.mlx_softc* %50)
  %52 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %53 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %52, i32 0, i32 14
  %54 = call i32 @callout_drain(i32* %53)
  %55 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %56 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %55, i32 0, i32 13
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %64

59:                                               ; preds = %49
  %60 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %61 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %60, i32 0, i32 13
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @bus_dma_tag_destroy(i64 %62)
  br label %64

64:                                               ; preds = %59, %49
  %65 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %66 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %65, i32 0, i32 12
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %71 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %70, i32 0, i32 9
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %74 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %73, i32 0, i32 10
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @bus_dmamap_unload(i64 %72, i32 %75)
  br label %77

77:                                               ; preds = %69, %64
  %78 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %79 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %78, i32 0, i32 11
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %77
  %83 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %84 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %83, i32 0, i32 9
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %86, i32 0, i32 11
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %90 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %89, i32 0, i32 10
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @bus_dmamem_free(i64 %85, i64 %88, i32 %91)
  br label %93

93:                                               ; preds = %82, %77
  %94 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %95 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %94, i32 0, i32 9
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %100 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %99, i32 0, i32 9
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @bus_dma_tag_destroy(i64 %101)
  br label %103

103:                                              ; preds = %98, %93
  %104 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %105 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %104, i32 0, i32 8
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %117

108:                                              ; preds = %103
  %109 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %110 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @SYS_RES_IRQ, align 4
  %113 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %114 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %113, i32 0, i32 8
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @bus_release_resource(i32 %111, i32 %112, i32 0, i32* %115)
  br label %117

117:                                              ; preds = %108, %103
  %118 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %119 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %118, i32 0, i32 7
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %117
  %123 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %124 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %123, i32 0, i32 7
  %125 = load i64, i64* %124, align 8
  %126 = call i32 @bus_dma_tag_destroy(i64 %125)
  br label %127

127:                                              ; preds = %122, %117
  %128 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %129 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %128, i32 0, i32 3
  %130 = load i32*, i32** %129, align 8
  %131 = icmp ne i32* %130, null
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %134 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %133, i32 0, i32 6
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %137 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %136, i32 0, i32 5
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %140 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %143 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @bus_release_resource(i32 %135, i32 %138, i32 %141, i32* %144)
  br label %146

146:                                              ; preds = %132, %127
  %147 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %148 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %147, i32 0, i32 2
  %149 = load i32*, i32** %148, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %153 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %152, i32 0, i32 2
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* @M_DEVBUF, align 4
  %156 = call i32 @free(i32* %154, i32 %155)
  br label %157

157:                                              ; preds = %151, %146
  %158 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %159 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %158, i32 0, i32 1
  %160 = call i32 @sx_destroy(i32* %159)
  %161 = load %struct.mlx_softc*, %struct.mlx_softc** %2, align 8
  %162 = getelementptr inbounds %struct.mlx_softc, %struct.mlx_softc* %161, i32 0, i32 0
  %163 = call i32 @mtx_destroy(i32* %162)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @MLX_IO_LOCK(%struct.mlx_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local %struct.mlx_command* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.mlx_command*, i32) #1

declare dso_local i32 @mlx_freecmd(%struct.mlx_command*) #1

declare dso_local i32 @MLX_IO_UNLOCK(%struct.mlx_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
