; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_unmap_request.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twa/extr_tw_osl_freebsd.c_tw_osli_unmap_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw_osli_req_context = type { i32, i32, i32, i32*, i32*, i32, %struct.twa_softc* }
%struct.twa_softc = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"entered\00", align 1
@TW_OSLI_REQ_FLAGS_PASSTHRU = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_DATA_IN = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED = common dso_local global i32 0, align 4
@TW_OSLI_REQ_FLAGS_DATA_OUT = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@TW_OSLI_MALLOC_CLASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw_osli_unmap_request(%struct.tw_osli_req_context* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw_osli_req_context*, align 8
  %4 = alloca %struct.twa_softc*, align 8
  store %struct.tw_osli_req_context* %0, %struct.tw_osli_req_context** %3, align 8
  %5 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %6 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %5, i32 0, i32 6
  %7 = load %struct.twa_softc*, %struct.twa_softc** %6, align 8
  store %struct.twa_softc* %7, %struct.twa_softc** %4, align 8
  %8 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %9 = call i32 @tw_osli_dbg_dprintf(i32 10, %struct.twa_softc* %8, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %11 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %10, i32 0, i32 4
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %146

14:                                               ; preds = %1
  %15 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %16 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @TW_OSLI_REQ_FLAGS_PASSTHRU, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %87

21:                                               ; preds = %14
  %22 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %23 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @mtx_lock_spin(i32 %24)
  %26 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %27 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_IN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %59

32:                                               ; preds = %21
  %33 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %34 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %37 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %40 = call i32 @bus_dmamap_sync(i32 %35, i32 %38, i32 %39)
  %41 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %42 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %32
  %48 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %49 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %48, i32 0, i32 4
  %50 = load i32*, i32** %49, align 8
  %51 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %52 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %55 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @bcopy(i32* %50, i32* %53, i32 %56)
  br label %58

58:                                               ; preds = %47, %32
  br label %59

59:                                               ; preds = %58, %21
  %60 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %61 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_OUT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %59
  %67 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %68 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %71 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %74 = call i32 @bus_dmamap_sync(i32 %69, i32 %72, i32 %73)
  br label %75

75:                                               ; preds = %66, %59
  %76 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %77 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %80 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @bus_dmamap_unload(i32 %78, i32 %81)
  %83 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %84 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @mtx_unlock_spin(i32 %85)
  br label %145

87:                                               ; preds = %14
  %88 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %89 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_IN, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %121

94:                                               ; preds = %87
  %95 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %96 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %99 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %98, i32 0, i32 5
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %102 = call i32 @bus_dmamap_sync(i32 %97, i32 %100, i32 %101)
  %103 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %104 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %94
  %110 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %111 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %110, i32 0, i32 4
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %114 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %117 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @bcopy(i32* %112, i32* %115, i32 %118)
  br label %120

120:                                              ; preds = %109, %94
  br label %121

121:                                              ; preds = %120, %87
  %122 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %123 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_OUT, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %137

128:                                              ; preds = %121
  %129 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %130 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %133 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %132, i32 0, i32 5
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %136 = call i32 @bus_dmamap_sync(i32 %131, i32 %134, i32 %135)
  br label %137

137:                                              ; preds = %128, %121
  %138 = load %struct.twa_softc*, %struct.twa_softc** %4, align 8
  %139 = getelementptr inbounds %struct.twa_softc, %struct.twa_softc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %142 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @bus_dmamap_unload(i32 %140, i32 %143)
  br label %145

145:                                              ; preds = %137, %75
  br label %146

146:                                              ; preds = %145, %1
  %147 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %148 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @TW_OSLI_REQ_FLAGS_DATA_COPY_NEEDED, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %146
  %154 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %155 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %154, i32 0, i32 4
  %156 = load i32*, i32** %155, align 8
  %157 = load i32, i32* @TW_OSLI_MALLOC_CLASS, align 4
  %158 = call i32 @free(i32* %156, i32 %157)
  %159 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %160 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %159, i32 0, i32 3
  %161 = load i32*, i32** %160, align 8
  %162 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %163 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %162, i32 0, i32 4
  store i32* %161, i32** %163, align 8
  %164 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %165 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = load %struct.tw_osli_req_context*, %struct.tw_osli_req_context** %3, align 8
  %168 = getelementptr inbounds %struct.tw_osli_req_context, %struct.tw_osli_req_context* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  br label %169

169:                                              ; preds = %153, %146
  %170 = load i32, i32* %2, align 4
  ret i32 %170
}

declare dso_local i32 @tw_osli_dbg_dprintf(i32, %struct.twa_softc*, i8*) #1

declare dso_local i32 @mtx_lock_spin(i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bcopy(i32*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32) #1

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
