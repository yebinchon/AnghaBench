; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_release_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_release_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i32*, i32*, i32*, i32*, i32*, i32*, i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bge_softc*)* @bge_release_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_release_resources(%struct.bge_softc* %0) #0 {
  %2 = alloca %struct.bge_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bge_softc* %0, %struct.bge_softc** %2, align 8
  %4 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %5 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %4, i32 0, i32 7
  %6 = load i32, i32* %5, align 8
  store i32 %6, i32* %3, align 4
  %7 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %7, i32 0, i32 6
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %13 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @taskqueue_free(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %17, i32 0, i32 5
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %24 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %27 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %26, i32 0, i32 5
  %28 = load i32*, i32** %27, align 8
  %29 = call i32 @bus_teardown_intr(i32 %22, i32* %25, i32* %28)
  br label %30

30:                                               ; preds = %21, %16
  %31 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %32 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %48

35:                                               ; preds = %30
  %36 = load i32, i32* %3, align 4
  %37 = load i32, i32* @SYS_RES_IRQ, align 4
  %38 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %39 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @rman_get_rid(i32* %40)
  %42 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %43 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %42, i32 0, i32 4
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @bus_release_resource(i32 %36, i32 %37, i32 %41, i32* %44)
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @pci_release_msi(i32 %46)
  br label %48

48:                                               ; preds = %35, %30
  %49 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %50 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @SYS_RES_MEMORY, align 4
  %56 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %57 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @rman_get_rid(i32* %58)
  %60 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %61 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %60, i32 0, i32 3
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @bus_release_resource(i32 %54, i32 %55, i32 %59, i32* %62)
  br label %64

64:                                               ; preds = %53, %48
  %65 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %66 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  %68 = icmp ne i32* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* %3, align 4
  %71 = load i32, i32* @SYS_RES_MEMORY, align 4
  %72 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %73 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = call i32 @rman_get_rid(i32* %74)
  %76 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %77 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  %79 = call i32 @bus_release_resource(i32 %70, i32 %71, i32 %75, i32* %78)
  br label %80

80:                                               ; preds = %69, %64
  %81 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %82 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %90

85:                                               ; preds = %80
  %86 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %87 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @if_free(i32* %88)
  br label %90

90:                                               ; preds = %85, %80
  %91 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %92 = call i32 @bge_dma_free(%struct.bge_softc* %91)
  %93 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %94 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %93, i32 0, i32 0
  %95 = call i64 @mtx_initialized(i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %90
  %98 = load %struct.bge_softc*, %struct.bge_softc** %2, align 8
  %99 = call i32 @BGE_LOCK_DESTROY(%struct.bge_softc* %98)
  br label %100

100:                                              ; preds = %97, %90
  ret void
}

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

declare dso_local i32 @if_free(i32*) #1

declare dso_local i32 @bge_dma_free(%struct.bge_softc*) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @BGE_LOCK_DESTROY(%struct.bge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
