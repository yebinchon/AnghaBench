; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32, i32, %struct.cdev*, i32*, i32, i64, i32*, i64, i64, i64, i32, i32*, i32, i32*, i64 }
%struct.cdev = type { i32 }
%struct.twe_request = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@TWE_IO_CONFIG_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.twe_softc*)* @twe_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @twe_free(%struct.twe_softc* %0) #0 {
  %2 = alloca %struct.twe_softc*, align 8
  %3 = alloca %struct.twe_request*, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %2, align 8
  %4 = call i32 @debug_called(i32 4)
  br label %5

5:                                                ; preds = %9, %1
  %6 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %7 = call %struct.twe_request* @twe_dequeue_free(%struct.twe_softc* %6)
  store %struct.twe_request* %7, %struct.twe_request** %3, align 8
  %8 = icmp ne %struct.twe_request* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %5
  %10 = load %struct.twe_request*, %struct.twe_request** %3, align 8
  %11 = call i32 @twe_free_request(%struct.twe_request* %10)
  br label %5

12:                                               ; preds = %5
  %13 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %14 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %13, i32 0, i32 13
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %19 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %18, i32 0, i32 14
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %22 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %21, i32 0, i32 12
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bus_dmamap_unload(i64 %20, i32 %23)
  %25 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %26 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %25, i32 0, i32 14
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %29 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %28, i32 0, i32 13
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %32 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_dmamem_free(i64 %27, i32* %30, i32 %33)
  br label %35

35:                                               ; preds = %17, %12
  %36 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %37 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %36, i32 0, i32 11
  %38 = load i32*, i32** %37, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %40, label %58

40:                                               ; preds = %35
  %41 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %42 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %41, i32 0, i32 9
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %45 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @bus_dmamap_unload(i64 %43, i32 %46)
  %48 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %49 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %48, i32 0, i32 9
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %52 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %51, i32 0, i32 11
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %55 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %54, i32 0, i32 10
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @bus_dmamem_free(i64 %50, i32* %53, i32 %56)
  br label %58

58:                                               ; preds = %40, %35
  %59 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %60 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %59, i32 0, i32 9
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %65 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %64, i32 0, i32 9
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @bus_dma_tag_destroy(i64 %66)
  br label %68

68:                                               ; preds = %63, %58
  %69 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %70 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %69, i32 0, i32 8
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %75 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %74, i32 0, i32 8
  %76 = load i64, i64* %75, align 8
  %77 = call i32 @bus_dma_tag_destroy(i64 %76)
  br label %78

78:                                               ; preds = %73, %68
  %79 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %80 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %79, i32 0, i32 7
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %94

83:                                               ; preds = %78
  %84 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %85 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %88 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %91 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @bus_teardown_intr(i32 %86, i32* %89, i64 %92)
  br label %94

94:                                               ; preds = %83, %78
  %95 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %96 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %108

99:                                               ; preds = %94
  %100 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %101 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @SYS_RES_IRQ, align 4
  %104 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %105 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %104, i32 0, i32 6
  %106 = load i32*, i32** %105, align 8
  %107 = call i32 @bus_release_resource(i32 %102, i32 %103, i32 0, i32* %106)
  br label %108

108:                                              ; preds = %99, %94
  %109 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %110 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %118

113:                                              ; preds = %108
  %114 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %115 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @bus_dma_tag_destroy(i64 %116)
  br label %118

118:                                              ; preds = %113, %108
  %119 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %120 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = icmp ne i32* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %118
  %124 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %125 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @SYS_RES_IOPORT, align 4
  %128 = load i32, i32* @TWE_IO_CONFIG_REG, align 4
  %129 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %130 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @bus_release_resource(i32 %126, i32 %127, i32 %128, i32* %131)
  br label %133

133:                                              ; preds = %123, %118
  %134 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %135 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %134, i32 0, i32 2
  %136 = load %struct.cdev*, %struct.cdev** %135, align 8
  %137 = icmp ne %struct.cdev* %136, null
  br i1 %137, label %138, label %143

138:                                              ; preds = %133
  %139 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %140 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %139, i32 0, i32 2
  %141 = load %struct.cdev*, %struct.cdev** %140, align 8
  %142 = call i32 @destroy_dev(%struct.cdev* %141)
  br label %143

143:                                              ; preds = %138, %133
  %144 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %145 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %144, i32 0, i32 1
  %146 = call i32 @sx_destroy(i32* %145)
  %147 = load %struct.twe_softc*, %struct.twe_softc** %2, align 8
  %148 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %147, i32 0, i32 0
  %149 = call i32 @mtx_destroy(i32* %148)
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local %struct.twe_request* @twe_dequeue_free(%struct.twe_softc*) #1

declare dso_local i32 @twe_free_request(%struct.twe_request*) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @destroy_dev(%struct.cdev*) #1

declare dso_local i32 @sx_destroy(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
