; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkfront/extr_blkfront.c_xbd_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbd_softc = type { i32, i32, i32, i32, %struct.xbd_command*, i32, i32 }
%struct.xbd_command = type { i32, i32*, i32*, %struct.xbd_command* }

@XBD_STATE_DISCONNECTED = common dso_local global i32 0, align 4
@M_XENBLOCKFRONT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@XBD_Q_FREE = common dso_local global i32 0, align 4
@XBD_Q_READY = common dso_local global i32 0, align 4
@XBD_Q_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xbd_softc*)* @xbd_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xbd_free(%struct.xbd_softc* %0) #0 {
  %2 = alloca %struct.xbd_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xbd_command*, align 8
  store %struct.xbd_softc* %0, %struct.xbd_softc** %2, align 8
  %5 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %6 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %5, i32 0, i32 5
  %7 = call i32 @mtx_lock(i32* %6)
  %8 = load i32, i32* @XBD_STATE_DISCONNECTED, align 4
  %9 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %10 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %9, i32 0, i32 6
  store i32 %8, i32* %10, align 4
  %11 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %12 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %11, i32 0, i32 5
  %13 = call i32 @mtx_unlock(i32* %12)
  %14 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %15 = call i32 @xbd_free_ring(%struct.xbd_softc* %14)
  %16 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %17 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %16, i32 0, i32 4
  %18 = load %struct.xbd_command*, %struct.xbd_command** %17, align 8
  %19 = icmp ne %struct.xbd_command* %18, null
  br i1 %19, label %20, label %104

20:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %80, %20
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %24 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %83

27:                                               ; preds = %21
  %28 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %29 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %28, i32 0, i32 4
  %30 = load %struct.xbd_command*, %struct.xbd_command** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %30, i64 %32
  store %struct.xbd_command* %33, %struct.xbd_command** %4, align 8
  %34 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %35 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %34, i32 0, i32 3
  %36 = load %struct.xbd_command*, %struct.xbd_command** %35, align 8
  %37 = icmp ne %struct.xbd_command* %36, null
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %40 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %39, i32 0, i32 3
  %41 = load %struct.xbd_command*, %struct.xbd_command** %40, align 8
  %42 = load i32, i32* @M_XENBLOCKFRONT, align 4
  %43 = call i32 @free(%struct.xbd_command* %41, i32 %42)
  %44 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %45 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %44, i32 0, i32 3
  store %struct.xbd_command* null, %struct.xbd_command** %45, align 8
  br label %46

46:                                               ; preds = %38, %27
  %47 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %48 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %72

51:                                               ; preds = %46
  %52 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %53 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %56 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %55, i32 0, i32 2
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @gnttab_end_foreign_access_references(i32 %54, i32* %58)
  %60 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %61 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* @PAGE_SIZE, align 4
  %64 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %65 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load i32, i32* @M_XENBLOCKFRONT, align 4
  %69 = call i32 @contigfree(i32* %62, i32 %67, i32 %68)
  %70 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %71 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %70, i32 0, i32 1
  store i32* null, i32** %71, align 8
  br label %72

72:                                               ; preds = %51, %46
  %73 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %74 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.xbd_command*, %struct.xbd_command** %4, align 8
  %77 = getelementptr inbounds %struct.xbd_command, %struct.xbd_command* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bus_dmamap_destroy(i32 %75, i32 %78)
  br label %80

80:                                               ; preds = %72
  %81 = load i32, i32* %3, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %3, align 4
  br label %21

83:                                               ; preds = %21
  %84 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %85 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %84, i32 0, i32 4
  %86 = load %struct.xbd_command*, %struct.xbd_command** %85, align 8
  %87 = load i32, i32* @M_XENBLOCKFRONT, align 4
  %88 = call i32 @free(%struct.xbd_command* %86, i32 %87)
  %89 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %90 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %89, i32 0, i32 4
  store %struct.xbd_command* null, %struct.xbd_command** %90, align 8
  %91 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %92 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @bus_dma_tag_destroy(i32 %93)
  %95 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %96 = load i32, i32* @XBD_Q_FREE, align 4
  %97 = call i32 @xbd_initq_cm(%struct.xbd_softc* %95, i32 %96)
  %98 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %99 = load i32, i32* @XBD_Q_READY, align 4
  %100 = call i32 @xbd_initq_cm(%struct.xbd_softc* %98, i32 %99)
  %101 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %102 = load i32, i32* @XBD_Q_COMPLETE, align 4
  %103 = call i32 @xbd_initq_cm(%struct.xbd_softc* %101, i32 %102)
  br label %104

104:                                              ; preds = %83, %1
  %105 = load %struct.xbd_softc*, %struct.xbd_softc** %2, align 8
  %106 = getelementptr inbounds %struct.xbd_softc, %struct.xbd_softc* %105, i32 0, i32 2
  %107 = call i32 @xen_intr_unbind(i32* %106)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @xbd_free_ring(%struct.xbd_softc*) #1

declare dso_local i32 @free(%struct.xbd_command*, i32) #1

declare dso_local i32 @gnttab_end_foreign_access_references(i32, i32*) #1

declare dso_local i32 @contigfree(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

declare dso_local i32 @xbd_initq_cm(%struct.xbd_softc*, i32) #1

declare dso_local i32 @xen_intr_unbind(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
