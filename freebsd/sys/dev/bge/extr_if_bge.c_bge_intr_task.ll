; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_intr_task.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bge/extr_if_bge.c_bge_intr_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bge_softc = type { i32, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@BGE_FLAG_TAGGED_STATUS = common dso_local global i32 0, align 4
@BGE_STATFLAG_LINKSTATE_CHANGED = common dso_local global i32 0, align 4
@BGE_MBX_IRQ0_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @bge_intr_task to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bge_intr_task(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bge_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.bge_softc*
  store %struct.bge_softc* %12, %struct.bge_softc** %5, align 8
  %13 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %14 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %17 = call i32 @BGE_LOCK(%struct.bge_softc* %16)
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @if_getdrvflags(i32 %18)
  %20 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %21 = and i32 %19, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %25 = call i32 @BGE_UNLOCK(%struct.bge_softc* %24)
  br label %146

26:                                               ; preds = %2
  %27 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %28 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %32 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %36 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @bus_dmamap_sync(i32 %30, i32 %34, i32 %37)
  %39 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %40 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %9, align 8
  %48 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %49 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 2
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  store i64 %56, i64* %10, align 8
  %57 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %58 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  store i32 %62, i32* %7, align 4
  %63 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %64 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = shl i32 %68, 24
  store i32 %69, i32* %8, align 4
  %70 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %71 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 0, i32* %74, align 8
  %75 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %76 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %80 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  %84 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @bus_dmamap_sync(i32 %78, i32 %82, i32 %85)
  %87 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %88 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @BGE_FLAG_TAGGED_STATUS, align 4
  %91 = and i32 %89, %90
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %26
  store i32 0, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %26
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @BGE_STATFLAG_LINKSTATE_CHANGED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %101 = call i32 @bge_link_upd(%struct.bge_softc* %100)
  br label %102

102:                                              ; preds = %99, %94
  %103 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %104 = load i32, i32* @BGE_MBX_IRQ0_LO, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @bge_writembx(%struct.bge_softc* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %6, align 4
  %108 = call i32 @if_getdrvflags(i32 %107)
  %109 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %102
  %113 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %114 = getelementptr inbounds %struct.bge_softc, %struct.bge_softc* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %9, align 8
  %117 = icmp ne i64 %115, %116
  br i1 %117, label %118, label %126

118:                                              ; preds = %112
  %119 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %120 = call i32 @BGE_UNLOCK(%struct.bge_softc* %119)
  %121 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %122 = load i64, i64* %9, align 8
  %123 = call i32 @bge_rxeof(%struct.bge_softc* %121, i64 %122, i32 0)
  %124 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %125 = call i32 @BGE_LOCK(%struct.bge_softc* %124)
  br label %126

126:                                              ; preds = %118, %112, %102
  %127 = load i32, i32* %6, align 4
  %128 = call i32 @if_getdrvflags(i32 %127)
  %129 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %126
  %133 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %134 = load i64, i64* %10, align 8
  %135 = call i32 @bge_txeof(%struct.bge_softc* %133, i64 %134)
  %136 = load i32, i32* %6, align 4
  %137 = call i32 @if_sendq_empty(i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %132
  %140 = load i32, i32* %6, align 4
  %141 = call i32 @bge_start_locked(i32 %140)
  br label %142

142:                                              ; preds = %139, %132
  br label %143

143:                                              ; preds = %142, %126
  %144 = load %struct.bge_softc*, %struct.bge_softc** %5, align 8
  %145 = call i32 @BGE_UNLOCK(%struct.bge_softc* %144)
  br label %146

146:                                              ; preds = %143, %23
  ret void
}

declare dso_local i32 @BGE_LOCK(%struct.bge_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @BGE_UNLOCK(%struct.bge_softc*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bge_link_upd(%struct.bge_softc*) #1

declare dso_local i32 @bge_writembx(%struct.bge_softc*, i32, i32) #1

declare dso_local i32 @bge_rxeof(%struct.bge_softc*, i64, i32) #1

declare dso_local i32 @bge_txeof(%struct.bge_softc*, i64) #1

declare dso_local i32 @if_sendq_empty(i32) #1

declare dso_local i32 @bge_start_locked(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
