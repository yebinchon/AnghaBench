; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dc/extr_if_dc.c_dc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_softc = type { i32, %struct.dc_mediainfo*, %struct.dc_mediainfo*, %struct.dc_mediainfo*, i64, i64, i64, i64, i32, i32, %struct.ifnet* }
%struct.dc_mediainfo = type { %struct.dc_mediainfo* }
%struct.ifnet = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"dc mutex not initialized\00", align 1
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@DC_RES = common dso_local global i32 0, align 4
@DC_RID = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4
@IFCAP_POLLING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dc_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca %struct.dc_mediainfo*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.dc_softc* @device_get_softc(i32 %6)
  store %struct.dc_softc* %7, %struct.dc_softc** %3, align 8
  %8 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %8, i32 0, i32 0
  %10 = call i32 @mtx_initialized(i32* %9)
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %12, i32 0, i32 10
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load i32, i32* %2, align 4
  %16 = call i64 @device_is_attached(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %20 = call i32 @DC_LOCK(%struct.dc_softc* %19)
  %21 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %22 = call i32 @dc_stop(%struct.dc_softc* %21)
  %23 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %24 = call i32 @DC_UNLOCK(%struct.dc_softc* %23)
  %25 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %25, i32 0, i32 9
  %27 = call i32 @callout_drain(i32* %26)
  %28 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %28, i32 0, i32 8
  %30 = call i32 @callout_drain(i32* %29)
  %31 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %32 = call i32 @ether_ifdetach(%struct.ifnet* %31)
  br label %33

33:                                               ; preds = %18, %1
  %34 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %35 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %34, i32 0, i32 7
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load i32, i32* %2, align 4
  %40 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %41 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %40, i32 0, i32 7
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @device_delete_child(i32 %39, i64 %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load i32, i32* %2, align 4
  %46 = call i32 @bus_generic_detach(i32 %45)
  %47 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %48 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %44
  %52 = load i32, i32* %2, align 4
  %53 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %54 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %56, i32 0, i32 6
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @bus_teardown_intr(i32 %52, i64 %55, i64 %58)
  br label %60

60:                                               ; preds = %51, %44
  %61 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %62 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %61, i32 0, i32 5
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load i32, i32* %2, align 4
  %67 = load i32, i32* @SYS_RES_IRQ, align 4
  %68 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @bus_release_resource(i32 %66, i32 %67, i32 0, i64 %70)
  br label %72

72:                                               ; preds = %65, %60
  %73 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %74 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %72
  %78 = load i32, i32* %2, align 4
  %79 = load i32, i32* @DC_RES, align 4
  %80 = load i32, i32* @DC_RID, align 4
  %81 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @bus_release_resource(i32 %78, i32 %79, i32 %80, i64 %83)
  br label %85

85:                                               ; preds = %77, %72
  %86 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %87 = icmp ne %struct.ifnet* %86, null
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %90 = call i32 @if_free(%struct.ifnet* %89)
  br label %91

91:                                               ; preds = %88, %85
  %92 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %93 = call i32 @dc_dma_free(%struct.dc_softc* %92)
  %94 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %95 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %94, i32 0, i32 3
  %96 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %95, align 8
  %97 = load i32, i32* @M_DEVBUF, align 4
  %98 = call i32 @free(%struct.dc_mediainfo* %96, i32 %97)
  br label %99

99:                                               ; preds = %104, %91
  %100 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %101 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %100, i32 0, i32 2
  %102 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %101, align 8
  %103 = icmp ne %struct.dc_mediainfo* %102, null
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %106 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %105, i32 0, i32 2
  %107 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %106, align 8
  %108 = getelementptr inbounds %struct.dc_mediainfo, %struct.dc_mediainfo* %107, i32 0, i32 0
  %109 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %108, align 8
  store %struct.dc_mediainfo* %109, %struct.dc_mediainfo** %5, align 8
  %110 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %111 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %110, i32 0, i32 2
  %112 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %111, align 8
  %113 = load i32, i32* @M_DEVBUF, align 4
  %114 = call i32 @free(%struct.dc_mediainfo* %112, i32 %113)
  %115 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %5, align 8
  %116 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %117 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %116, i32 0, i32 2
  store %struct.dc_mediainfo* %115, %struct.dc_mediainfo** %117, align 8
  br label %99

118:                                              ; preds = %99
  %119 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %120 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %119, i32 0, i32 1
  %121 = load %struct.dc_mediainfo*, %struct.dc_mediainfo** %120, align 8
  %122 = load i32, i32* @M_DEVBUF, align 4
  %123 = call i32 @free(%struct.dc_mediainfo* %121, i32 %122)
  %124 = load %struct.dc_softc*, %struct.dc_softc** %3, align 8
  %125 = getelementptr inbounds %struct.dc_softc, %struct.dc_softc* %124, i32 0, i32 0
  %126 = call i32 @mtx_destroy(i32* %125)
  ret i32 0
}

declare dso_local %struct.dc_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @mtx_initialized(i32*) #1

declare dso_local i64 @device_is_attached(i32) #1

declare dso_local i32 @DC_LOCK(%struct.dc_softc*) #1

declare dso_local i32 @dc_stop(%struct.dc_softc*) #1

declare dso_local i32 @DC_UNLOCK(%struct.dc_softc*) #1

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @ether_ifdetach(%struct.ifnet*) #1

declare dso_local i32 @device_delete_child(i32, i64) #1

declare dso_local i32 @bus_generic_detach(i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i64, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i64) #1

declare dso_local i32 @if_free(%struct.ifnet*) #1

declare dso_local i32 @dc_dma_free(%struct.dc_softc*) #1

declare dso_local i32 @free(%struct.dc_mediainfo*, i32) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
