; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ida/extr_ida.c_ida_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ida_softc = type { i32, i32*, i32, i32, i32, i32*, i32*, i32, %struct.TYPE_2__*, i32*, i32, i64, i64, i32*, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@IDA_QCB_MAX = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ida_free(%struct.ida_softc* %0) #0 {
  %2 = alloca %struct.ida_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.ida_softc* %0, %struct.ida_softc** %2, align 8
  %4 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %5 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %4, i32 0, i32 15
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %1
  %9 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %10 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %13 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %12, i32 0, i32 6
  %14 = load i32*, i32** %13, align 8
  %15 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %16 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %15, i32 0, i32 15
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @bus_teardown_intr(i32 %11, i32* %14, i32* %17)
  br label %19

19:                                               ; preds = %8, %1
  %20 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %21 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %20, i32 0, i32 0
  %22 = call i32 @mtx_lock(i32* %21)
  %23 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %24 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %23, i32 0, i32 14
  %25 = call i32 @callout_stop(i32* %24)
  %26 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %27 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %26, i32 0, i32 0
  %28 = call i32 @mtx_unlock(i32* %27)
  %29 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %30 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %29, i32 0, i32 14
  %31 = call i32 @callout_drain(i32* %30)
  %32 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %33 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %32, i32 0, i32 13
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, null
  br i1 %35, label %36, label %62

36:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %54, %36
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* @IDA_QCB_MAX, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %37
  %42 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %43 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %42, i32 0, i32 13
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %46 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %45, i32 0, i32 8
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @bus_dmamap_destroy(i32* %44, i32 %52)
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %3, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %3, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %59 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %58, i32 0, i32 13
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @bus_dma_tag_destroy(i32* %60)
  br label %62

62:                                               ; preds = %57, %19
  %63 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %64 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %63, i32 0, i32 9
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %101

67:                                               ; preds = %62
  %68 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %69 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %68, i32 0, i32 12
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %67
  %73 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %74 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %73, i32 0, i32 9
  %75 = load i32*, i32** %74, align 8
  %76 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %77 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %76, i32 0, i32 10
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @bus_dmamap_unload(i32* %75, i32 %78)
  br label %80

80:                                               ; preds = %72, %67
  %81 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %82 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %81, i32 0, i32 11
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %96

85:                                               ; preds = %80
  %86 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %87 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %86, i32 0, i32 9
  %88 = load i32*, i32** %87, align 8
  %89 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %90 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %89, i32 0, i32 11
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %93 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bus_dmamem_free(i32* %88, i64 %91, i32 %94)
  br label %96

96:                                               ; preds = %85, %80
  %97 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %98 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %97, i32 0, i32 9
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @bus_dma_tag_destroy(i32* %99)
  br label %101

101:                                              ; preds = %96, %62
  %102 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %103 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %102, i32 0, i32 8
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = icmp ne %struct.TYPE_2__* %104, null
  br i1 %105, label %106, label %112

106:                                              ; preds = %101
  %107 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %108 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %107, i32 0, i32 8
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = load i32, i32* @M_DEVBUF, align 4
  %111 = call i32 @free(%struct.TYPE_2__* %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %101
  %113 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %114 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %113, i32 0, i32 6
  %115 = load i32*, i32** %114, align 8
  %116 = icmp ne i32* %115, null
  br i1 %116, label %117, label %128

117:                                              ; preds = %112
  %118 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %119 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %118, i32 0, i32 4
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %122 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %121, i32 0, i32 7
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %125 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %124, i32 0, i32 6
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @bus_release_resource(i32 %120, i32 %123, i32 0, i32* %126)
  br label %128

128:                                              ; preds = %117, %112
  %129 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %130 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %129, i32 0, i32 5
  %131 = load i32*, i32** %130, align 8
  %132 = icmp ne i32* %131, null
  br i1 %132, label %133, label %138

133:                                              ; preds = %128
  %134 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %135 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %134, i32 0, i32 5
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @bus_dma_tag_destroy(i32* %136)
  br label %138

138:                                              ; preds = %133, %128
  %139 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %140 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %139, i32 0, i32 1
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %157

143:                                              ; preds = %138
  %144 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %145 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %148 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %151 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %154 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = call i32 @bus_release_resource(i32 %146, i32 %149, i32 %152, i32* %155)
  br label %157

157:                                              ; preds = %143, %138
  %158 = load %struct.ida_softc*, %struct.ida_softc** %2, align 8
  %159 = getelementptr inbounds %struct.ida_softc, %struct.ida_softc* %158, i32 0, i32 0
  %160 = call i32 @mtx_destroy(i32* %159)
  ret void
}

declare dso_local i32 @bus_teardown_intr(i32, i32*, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @bus_dmamap_destroy(i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i64, i32) #1

declare dso_local i32 @free(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
