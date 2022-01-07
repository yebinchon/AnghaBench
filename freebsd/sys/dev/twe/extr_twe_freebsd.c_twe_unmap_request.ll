; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_unmap_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe_freebsd.c_twe_unmap_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_request = type { i32, i32*, i32*, i32, i32, %struct.twe_softc* }
%struct.twe_softc = type { i32, i32, i32, i32, i32 }

@dumping = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TWE_CMD_DATAIN = common dso_local global i32 0, align 4
@TWE_CMD_IMMEDIATE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@TWE_CMD_ALIGNBUF = common dso_local global i32 0, align 4
@TWE_CMD_DATAOUT = common dso_local global i32 0, align 4
@TWE_MALLOC_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @twe_unmap_request(%struct.twe_request* %0) #0 {
  %2 = alloca %struct.twe_request*, align 8
  %3 = alloca %struct.twe_softc*, align 8
  store %struct.twe_request* %0, %struct.twe_request** %2, align 8
  %4 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %5 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %4, i32 0, i32 5
  %6 = load %struct.twe_softc*, %struct.twe_softc** %5, align 8
  store %struct.twe_softc* %6, %struct.twe_softc** %3, align 8
  %7 = call i32 @debug_called(i32 4)
  %8 = load i32, i32* @dumping, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %12 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %15 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %18 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %21 = call i32 @bus_dmamap_sync(i32 %16, i32 %19, i32 %20)
  %22 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %23 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %134

26:                                               ; preds = %13
  %27 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %28 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @TWE_CMD_DATAIN, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %77

33:                                               ; preds = %26
  %34 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %35 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TWE_CMD_IMMEDIATE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %33
  %41 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %42 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %45 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %48 = call i32 @bus_dmamap_sync(i32 %43, i32 %46, i32 %47)
  br label %58

49:                                               ; preds = %33
  %50 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %51 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %54 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %57 = call i32 @bus_dmamap_sync(i32 %52, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %40
  %59 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %60 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @TWE_CMD_ALIGNBUF, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %76

65:                                               ; preds = %58
  %66 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %67 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %70 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %73 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @bcopy(i32* %68, i32* %71, i32 %74)
  br label %76

76:                                               ; preds = %65, %58
  br label %77

77:                                               ; preds = %76, %26
  %78 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %79 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @TWE_CMD_DATAOUT, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %110

84:                                               ; preds = %77
  %85 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %86 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @TWE_CMD_IMMEDIATE, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %100

91:                                               ; preds = %84
  %92 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %93 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %96 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %99 = call i32 @bus_dmamap_sync(i32 %94, i32 %97, i32 %98)
  br label %109

100:                                              ; preds = %84
  %101 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %102 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %105 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %108 = call i32 @bus_dmamap_sync(i32 %103, i32 %106, i32 %107)
  br label %109

109:                                              ; preds = %100, %91
  br label %110

110:                                              ; preds = %109, %77
  %111 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %112 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @TWE_CMD_IMMEDIATE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %110
  %118 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %119 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %122 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @bus_dmamap_unload(i32 %120, i32 %123)
  br label %133

125:                                              ; preds = %110
  %126 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %127 = getelementptr inbounds %struct.twe_softc, %struct.twe_softc* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %130 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @bus_dmamap_unload(i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %125, %117
  br label %134

134:                                              ; preds = %133, %13
  %135 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %136 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @TWE_CMD_ALIGNBUF, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %152

141:                                              ; preds = %134
  %142 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %143 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* @TWE_MALLOC_CLASS, align 4
  %146 = call i32 @free(i32* %144, i32 %145)
  %147 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %148 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %147, i32 0, i32 1
  %149 = load i32*, i32** %148, align 8
  %150 = load %struct.twe_request*, %struct.twe_request** %2, align 8
  %151 = getelementptr inbounds %struct.twe_request, %struct.twe_request* %150, i32 0, i32 2
  store i32* %149, i32** %151, align 8
  br label %152

152:                                              ; preds = %141, %134
  ret void
}

declare dso_local i32 @debug_called(i32) #1

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
