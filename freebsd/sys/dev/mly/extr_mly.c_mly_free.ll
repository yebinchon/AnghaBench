; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mly/extr_mly.c_mly_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mly_softc = type { i32, i32*, i32, i32, i64, i32*, i32, i64, i32, i64, i64, i32, i64, i64, i32*, i32*, i32, i32, i64, i32 }

@M_DEVBUF = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mly_softc*)* @mly_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mly_free(%struct.mly_softc* %0) #0 {
  %2 = alloca %struct.mly_softc*, align 8
  store %struct.mly_softc* %0, %struct.mly_softc** %2, align 8
  %3 = call i32 @debug_called(i32 1)
  %4 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %5 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %4, i32 0, i32 19
  %6 = load i32, i32* %5, align 8
  %7 = call i32 @destroy_dev(i32 %6)
  %8 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %9 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %8, i32 0, i32 18
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %1
  %13 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %14 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %17 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %16, i32 0, i32 5
  %18 = load i32*, i32** %17, align 8
  %19 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %20 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %19, i32 0, i32 18
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @bus_teardown_intr(i32 %15, i32* %18, i64 %21)
  br label %23

23:                                               ; preds = %12, %1
  %24 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %25 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %24, i32 0, i32 17
  %26 = call i32 @callout_drain(i32* %25)
  %27 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %28 = call i32 @mly_cam_detach(%struct.mly_softc* %27)
  %29 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %30 = call i32 @mly_release_commands(%struct.mly_softc* %29)
  %31 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %32 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %31, i32 0, i32 15
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %41

35:                                               ; preds = %23
  %36 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %37 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %36, i32 0, i32 15
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* @M_DEVBUF, align 4
  %40 = call i32 @free(i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %35, %23
  %42 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %43 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %42, i32 0, i32 14
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %41
  %47 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %48 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %47, i32 0, i32 14
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* @M_DEVBUF, align 4
  %51 = call i32 @free(i32* %49, i32 %50)
  br label %52

52:                                               ; preds = %46, %41
  %53 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %54 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %53, i32 0, i32 13
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %59 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %58, i32 0, i32 13
  %60 = load i64, i64* %59, align 8
  %61 = call i32 @bus_dma_tag_destroy(i64 %60)
  br label %62

62:                                               ; preds = %57, %52
  %63 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %64 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %63, i32 0, i32 12
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %85

67:                                               ; preds = %62
  %68 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %69 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %68, i32 0, i32 10
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %72 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %71, i32 0, i32 11
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @bus_dmamap_unload(i64 %70, i32 %73)
  %75 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %76 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %75, i32 0, i32 10
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %79 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %78, i32 0, i32 12
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %82 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @bus_dmamem_free(i64 %77, i64 %80, i32 %83)
  br label %85

85:                                               ; preds = %67, %62
  %86 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %87 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %86, i32 0, i32 10
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %85
  %91 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %92 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %91, i32 0, i32 10
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @bus_dma_tag_destroy(i64 %93)
  br label %95

95:                                               ; preds = %90, %85
  %96 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %97 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %96, i32 0, i32 9
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %118

100:                                              ; preds = %95
  %101 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %102 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %101, i32 0, i32 7
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %105 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %104, i32 0, i32 8
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @bus_dmamap_unload(i64 %103, i32 %106)
  %108 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %109 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %112 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %111, i32 0, i32 9
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %115 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %114, i32 0, i32 8
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @bus_dmamem_free(i64 %110, i64 %113, i32 %116)
  br label %118

118:                                              ; preds = %100, %95
  %119 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %120 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %119, i32 0, i32 7
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %125 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %124, i32 0, i32 7
  %126 = load i64, i64* %125, align 8
  %127 = call i32 @bus_dma_tag_destroy(i64 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %130 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %145

133:                                              ; preds = %128
  %134 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %135 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %134, i32 0, i32 3
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* @SYS_RES_IRQ, align 4
  %138 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %139 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %138, i32 0, i32 6
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %142 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %141, i32 0, i32 5
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @bus_release_resource(i32 %136, i32 %137, i32 %140, i32* %143)
  br label %145

145:                                              ; preds = %133, %128
  %146 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %147 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %152 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = call i32 @bus_dma_tag_destroy(i64 %153)
  br label %155

155:                                              ; preds = %150, %145
  %156 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %157 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = icmp ne i32* %158, null
  br i1 %159, label %160, label %172

160:                                              ; preds = %155
  %161 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %162 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SYS_RES_MEMORY, align 4
  %165 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %166 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %169 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %168, i32 0, i32 1
  %170 = load i32*, i32** %169, align 8
  %171 = call i32 @bus_release_resource(i32 %163, i32 %164, i32 %167, i32* %170)
  br label %172

172:                                              ; preds = %160, %155
  %173 = load %struct.mly_softc*, %struct.mly_softc** %2, align 8
  %174 = getelementptr inbounds %struct.mly_softc, %struct.mly_softc* %173, i32 0, i32 0
  %175 = call i32 @mtx_destroy(i32* %174)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @destroy_dev(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @mly_cam_detach(%struct.mly_softc*) #1

declare dso_local i32 @mly_release_commands(%struct.mly_softc*) #1

declare dso_local i32 @free(i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
