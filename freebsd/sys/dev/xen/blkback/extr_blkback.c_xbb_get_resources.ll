; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_resources.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/blkback/extr_blkback.c_xbb_get_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xbb_softc = type { i32, i64, i32, i32, i32, i32 }
%struct.xbb_xen_reqlist = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__, i32, i32, i32, %struct.xbb_xen_reqlist*, i32 }
%struct.TYPE_5__ = type { i64, i32, i32, i32 }
%struct.xbb_xen_req = type { i32, i32, i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__, i32, i32, i32, %struct.xbb_xen_req*, i32 }

@XBBF_SHUTDOWN = common dso_local global i32 0, align 4
@links = common dso_local global i32 0, align 4
@BLKIF_PROTOCOL_NATIVE = common dso_local global i64 0, align 8
@XBBF_RESOURCE_SHORTAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xbb_softc*, %struct.xbb_xen_reqlist**, %struct.TYPE_5__*, i32)* @xbb_get_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xbb_get_resources(%struct.xbb_softc* %0, %struct.xbb_xen_reqlist** %1, %struct.TYPE_5__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.xbb_softc*, align 8
  %7 = alloca %struct.xbb_xen_reqlist**, align 8
  %8 = alloca %struct.TYPE_5__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.xbb_xen_reqlist*, align 8
  %11 = alloca %struct.xbb_xen_req*, align 8
  store %struct.xbb_softc* %0, %struct.xbb_softc** %6, align 8
  store %struct.xbb_xen_reqlist** %1, %struct.xbb_xen_reqlist*** %7, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.xbb_xen_reqlist* null, %struct.xbb_xen_reqlist** %10, align 8
  store %struct.xbb_xen_req* null, %struct.xbb_xen_req** %11, align 8
  %12 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %13 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %12, i32 0, i32 2
  %14 = call i32 @mtx_lock(i32* %13)
  %15 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %16 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @XBBF_SHUTDOWN, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %4
  %22 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %23 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %22, i32 0, i32 2
  %24 = call i32 @mtx_unlock(i32* %23)
  store i32 1, i32* %5, align 4
  br label %165

25:                                               ; preds = %4
  %26 = load %struct.xbb_xen_reqlist**, %struct.xbb_xen_reqlist*** %7, align 8
  %27 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %26, align 8
  %28 = icmp eq %struct.xbb_xen_reqlist* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %31 = call %struct.xbb_xen_reqlist* @xbb_get_reqlist(%struct.xbb_softc* %30)
  store %struct.xbb_xen_reqlist* %31, %struct.xbb_xen_reqlist** %10, align 8
  %32 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %33 = icmp eq %struct.xbb_xen_reqlist* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %137

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %38 = call %struct.xbb_xen_reqlist* @xbb_get_req(%struct.xbb_softc* %37)
  %39 = bitcast %struct.xbb_xen_reqlist* %38 to %struct.xbb_xen_req*
  store %struct.xbb_xen_req* %39, %struct.xbb_xen_req** %11, align 8
  %40 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %41 = icmp eq %struct.xbb_xen_req* %40, null
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %137

43:                                               ; preds = %36
  %44 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %45 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %44, i32 0, i32 2
  %46 = call i32 @mtx_unlock(i32* %45)
  %47 = load %struct.xbb_xen_reqlist**, %struct.xbb_xen_reqlist*** %7, align 8
  %48 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %47, align 8
  %49 = icmp eq %struct.xbb_xen_reqlist* %48, null
  br i1 %49, label %50, label %68

50:                                               ; preds = %43
  %51 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %52 = load %struct.xbb_xen_reqlist**, %struct.xbb_xen_reqlist*** %7, align 8
  store %struct.xbb_xen_reqlist* %51, %struct.xbb_xen_reqlist** %52, align 8
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %57 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 8
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %62 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %64 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %63, i32 0, i32 5
  %65 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %66 = load i32, i32* @links, align 4
  %67 = call i32 @STAILQ_INSERT_TAIL(i32* %64, %struct.xbb_xen_reqlist* %65, i32 %66)
  br label %68

68:                                               ; preds = %50, %43
  %69 = load %struct.xbb_xen_reqlist**, %struct.xbb_xen_reqlist*** %7, align 8
  %70 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %69, align 8
  %71 = bitcast %struct.xbb_xen_reqlist* %70 to %struct.xbb_xen_req*
  %72 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %73 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %72, i32 0, i32 9
  store %struct.xbb_xen_req* %71, %struct.xbb_xen_req** %73, align 8
  %74 = load i32, i32* %9, align 4
  %75 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %76 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %75, i32 0, i32 8
  store i32 %74, i32* %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %81 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %80, i32 0, i32 7
  store i32 %79, i32* %81, align 4
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %86 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 8
  %87 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %88 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BLKIF_PROTOCOL_NATIVE, align 8
  %91 = icmp ne i64 %89, %90
  br i1 %91, label %92, label %101

92:                                               ; preds = %68
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %94 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %95 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %94, i32 0, i32 5
  %96 = call i32 @bcopy(%struct.TYPE_5__* %93, %struct.TYPE_5__* %95, i32 24)
  %97 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %98 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %97, i32 0, i32 5
  %99 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %100 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %99, i32 0, i32 4
  store %struct.TYPE_5__* %98, %struct.TYPE_5__** %100, align 8
  br label %105

101:                                              ; preds = %68
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %103 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %104 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %103, i32 0, i32 4
  store %struct.TYPE_5__* %102, %struct.TYPE_5__** %104, align 8
  br label %105

105:                                              ; preds = %101, %92
  %106 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %107 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %106, i32 0, i32 3
  %108 = call i32 @binuptime(i32* %107)
  %109 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %110 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %109, i32 0, i32 4
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %113 = getelementptr inbounds %struct.xbb_xen_req, %struct.xbb_xen_req* %112, i32 0, i32 3
  %114 = call i32 @devstat_start_transaction(i32 %111, i32* %113)
  %115 = load %struct.xbb_xen_reqlist**, %struct.xbb_xen_reqlist*** %7, align 8
  %116 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %115, align 8
  %117 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %116, i32 0, i32 2
  %118 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %119 = bitcast %struct.xbb_xen_req* %118 to %struct.xbb_xen_reqlist*
  %120 = load i32, i32* @links, align 4
  %121 = call i32 @STAILQ_INSERT_TAIL(i32* %117, %struct.xbb_xen_reqlist* %119, i32 %120)
  %122 = load %struct.xbb_xen_reqlist**, %struct.xbb_xen_reqlist*** %7, align 8
  %123 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %122, align 8
  %124 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.xbb_xen_reqlist**, %struct.xbb_xen_reqlist*** %7, align 8
  %131 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %130, align 8
  %132 = getelementptr inbounds %struct.xbb_xen_reqlist, %struct.xbb_xen_reqlist* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = add nsw i64 %134, %129
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %132, align 8
  store i32 0, i32* %5, align 4
  br label %165

137:                                              ; preds = %42, %34
  %138 = load i32, i32* @XBBF_RESOURCE_SHORTAGE, align 4
  %139 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %140 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = or i32 %141, %138
  store i32 %142, i32* %140, align 8
  %143 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %144 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %143, i32 0, i32 3
  %145 = load i32, i32* %144, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %144, align 4
  %147 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %148 = icmp ne %struct.xbb_xen_req* %147, null
  br i1 %148, label %149, label %154

149:                                              ; preds = %137
  %150 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %151 = load %struct.xbb_xen_req*, %struct.xbb_xen_req** %11, align 8
  %152 = bitcast %struct.xbb_xen_req* %151 to %struct.xbb_xen_reqlist*
  %153 = call i32 @xbb_release_req(%struct.xbb_softc* %150, %struct.xbb_xen_reqlist* %152)
  br label %154

154:                                              ; preds = %149, %137
  %155 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %156 = icmp ne %struct.xbb_xen_reqlist* %155, null
  br i1 %156, label %157, label %161

157:                                              ; preds = %154
  %158 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %159 = load %struct.xbb_xen_reqlist*, %struct.xbb_xen_reqlist** %10, align 8
  %160 = call i32 @xbb_release_reqlist(%struct.xbb_softc* %158, %struct.xbb_xen_reqlist* %159, i32 0)
  br label %161

161:                                              ; preds = %157, %154
  %162 = load %struct.xbb_softc*, %struct.xbb_softc** %6, align 8
  %163 = getelementptr inbounds %struct.xbb_softc, %struct.xbb_softc* %162, i32 0, i32 2
  %164 = call i32 @mtx_unlock(i32* %163)
  store i32 1, i32* %5, align 4
  br label %165

165:                                              ; preds = %161, %105, %21
  %166 = load i32, i32* %5, align 4
  ret i32 %166
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local %struct.xbb_xen_reqlist* @xbb_get_reqlist(%struct.xbb_softc*) #1

declare dso_local %struct.xbb_xen_reqlist* @xbb_get_req(%struct.xbb_softc*) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.xbb_xen_reqlist*, i32) #1

declare dso_local i32 @bcopy(%struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @binuptime(i32*) #1

declare dso_local i32 @devstat_start_transaction(i32, i32*) #1

declare dso_local i32 @xbb_release_req(%struct.xbb_softc*, %struct.xbb_xen_reqlist*) #1

declare dso_local i32 @xbb_release_reqlist(%struct.xbb_softc*, %struct.xbb_xen_reqlist*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
