; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_destroy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_qpair.c_nvme_qpair_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_qpair = type { i64, i64, i32, %struct.nvme_tracker*, i32, i32*, i64, %struct.TYPE_2__*, i32, i64 }
%struct.nvme_tracker = type { i32 }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_IRQ = common dso_local global i32 0, align 4
@M_NVME = common dso_local global i32 0, align 4
@tailq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_qpair*)* @nvme_qpair_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_qpair_destroy(%struct.nvme_qpair* %0) #0 {
  %2 = alloca %struct.nvme_qpair*, align 8
  %3 = alloca %struct.nvme_tracker*, align 8
  store %struct.nvme_qpair* %0, %struct.nvme_qpair** %2, align 8
  %4 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %5 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %4, i32 0, i32 9
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %21

8:                                                ; preds = %1
  %9 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %9, i32 0, i32 7
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %15 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %18 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %17, i32 0, i32 9
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @bus_teardown_intr(i32 %13, i64 %16, i64 %19)
  br label %21

21:                                               ; preds = %8, %1
  %22 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %23 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %22, i32 0, i32 8
  %24 = call i64 @mtx_initialized(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %28 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %27, i32 0, i32 8
  %29 = call i32 @mtx_destroy(i32* %28)
  br label %30

30:                                               ; preds = %26, %21
  %31 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %32 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %50

35:                                               ; preds = %30
  %36 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %37 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %36, i32 0, i32 7
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @SYS_RES_IRQ, align 4
  %42 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %43 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %42, i32 0, i32 6
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @rman_get_rid(i64 %44)
  %46 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %47 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %46, i32 0, i32 6
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @bus_release_resource(i32 %40, i32 %41, i32 %45, i64 %48)
  br label %50

50:                                               ; preds = %35, %30
  %51 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %52 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %51, i32 0, i32 5
  %53 = load i32*, i32** %52, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %73

55:                                               ; preds = %50
  %56 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %57 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %60 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @bus_dmamap_unload(i64 %58, i32 %61)
  %63 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %64 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %67 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %70 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @bus_dmamem_free(i64 %65, i32* %68, i32 %71)
  br label %73

73:                                               ; preds = %55, %50
  %74 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %75 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %74, i32 0, i32 3
  %76 = load %struct.nvme_tracker*, %struct.nvme_tracker** %75, align 8
  %77 = icmp ne %struct.nvme_tracker* %76, null
  br i1 %77, label %78, label %84

78:                                               ; preds = %73
  %79 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %80 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %79, i32 0, i32 3
  %81 = load %struct.nvme_tracker*, %struct.nvme_tracker** %80, align 8
  %82 = load i32, i32* @M_NVME, align 4
  %83 = call i32 @free_domain(%struct.nvme_tracker* %81, i32 %82)
  br label %84

84:                                               ; preds = %78, %73
  br label %85

85:                                               ; preds = %91, %84
  %86 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %87 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %86, i32 0, i32 2
  %88 = call i32 @TAILQ_EMPTY(i32* %87)
  %89 = icmp ne i32 %88, 0
  %90 = xor i1 %89, true
  br i1 %90, label %91, label %110

91:                                               ; preds = %85
  %92 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %93 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %92, i32 0, i32 2
  %94 = call %struct.nvme_tracker* @TAILQ_FIRST(i32* %93)
  store %struct.nvme_tracker* %94, %struct.nvme_tracker** %3, align 8
  %95 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %96 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %95, i32 0, i32 2
  %97 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %98 = load i32, i32* @tailq, align 4
  %99 = call i32 @TAILQ_REMOVE(i32* %96, %struct.nvme_tracker* %97, i32 %98)
  %100 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %101 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %104 = getelementptr inbounds %struct.nvme_tracker, %struct.nvme_tracker* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @bus_dmamap_destroy(i64 %102, i32 %105)
  %107 = load %struct.nvme_tracker*, %struct.nvme_tracker** %3, align 8
  %108 = load i32, i32* @M_NVME, align 4
  %109 = call i32 @free_domain(%struct.nvme_tracker* %107, i32 %108)
  br label %85

110:                                              ; preds = %85
  %111 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %112 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %120

115:                                              ; preds = %110
  %116 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %117 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @bus_dma_tag_destroy(i64 %118)
  br label %120

120:                                              ; preds = %115, %110
  %121 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %122 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %120
  %126 = load %struct.nvme_qpair*, %struct.nvme_qpair** %2, align 8
  %127 = getelementptr inbounds %struct.nvme_qpair, %struct.nvme_qpair* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = call i32 @bus_dma_tag_destroy(i64 %128)
  br label %130

130:                                              ; preds = %125, %120
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @rman_get_rid(i64) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i32*, i32) #1

declare dso_local i32 @free_domain(%struct.nvme_tracker*, i32) #1

declare dso_local i32 @TAILQ_EMPTY(i32*) #1

declare dso_local %struct.nvme_tracker* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.nvme_tracker*, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i64, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
