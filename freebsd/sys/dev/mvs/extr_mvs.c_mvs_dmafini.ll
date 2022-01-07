; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_dmafini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mvs/extr_mvs.c_mvs_dmafini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvs_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i64, i32, i32*, i32*, i64, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mvs_dmafini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_dmafini(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvs_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.mvs_channel* @device_get_softc(i32 %4)
  store %struct.mvs_channel* %5, %struct.mvs_channel** %3, align 8
  %6 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %7 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 8
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %13 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 8
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_dma_tag_destroy(i32* %15)
  %17 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %18 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 8
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %22 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %55

26:                                               ; preds = %20
  %27 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %28 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %32 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @bus_dmamap_unload(i32* %30, i32 %34)
  %36 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %37 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 4
  %39 = load i32*, i32** %38, align 8
  %40 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %41 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 5
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %45 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @bus_dmamem_free(i32* %39, i32* %43, i32 %47)
  %49 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %50 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %53 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 5
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %26, %20
  %56 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %57 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %70

61:                                               ; preds = %55
  %62 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %63 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 4
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bus_dma_tag_destroy(i32* %65)
  %67 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %68 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 4
  store i32* null, i32** %69, align 8
  br label %70

70:                                               ; preds = %61, %55
  %71 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %72 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %105

76:                                               ; preds = %70
  %77 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %78 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %82 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @bus_dmamap_unload(i32* %80, i32 %84)
  %86 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %87 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %91 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %95 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @bus_dmamem_free(i32* %89, i32* %93, i32 %97)
  %99 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %100 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %103 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 1
  store i32* null, i32** %104, align 8
  br label %105

105:                                              ; preds = %76, %70
  %106 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %107 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %120

111:                                              ; preds = %105
  %112 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %113 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i32 @bus_dma_tag_destroy(i32* %115)
  %117 = load %struct.mvs_channel*, %struct.mvs_channel** %3, align 8
  %118 = getelementptr inbounds %struct.mvs_channel, %struct.mvs_channel* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %111, %105
  ret void
}

declare dso_local %struct.mvs_channel* @device_get_softc(i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
