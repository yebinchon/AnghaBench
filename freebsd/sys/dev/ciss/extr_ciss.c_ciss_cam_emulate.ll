; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_emulate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ciss/extr_ciss.c_ciss_cam_emulate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ciss_softc = type { i32, %struct.TYPE_6__**, %struct.TYPE_5__** }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ccb_scsiio = type { i64, i32*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i64*, i64 }
%union.ccb = type { i32 }

@CAM_CDB_POINTER = common dso_local global i32 0, align 4
@CAM_SEL_TIMEOUT = common dso_local global i32 0, align 4
@CISS_LD_ONLINE = common dso_local global i64 0, align 8
@CISS_FLAG_FAKE_SYNCH = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE = common dso_local global i64 0, align 8
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@REPORT_LUNS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ciss_softc*, %struct.ccb_scsiio*)* @ciss_cam_emulate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ciss_cam_emulate(%struct.ciss_softc* %0, %struct.ccb_scsiio* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ciss_softc*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.ciss_softc* %0, %struct.ciss_softc** %4, align 8
  store %struct.ccb_scsiio* %1, %struct.ccb_scsiio** %5, align 8
  %9 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %10 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %7, align 4
  %13 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %14 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @xpt_path_sim(i32 %16)
  %18 = call i32 @cam_sim_bus(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %20 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @CAM_CDB_POINTER, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %2
  %27 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %28 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i64*
  %32 = load i64, i64* %31, align 8
  br label %40

33:                                               ; preds = %2
  %34 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %35 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  br label %40

40:                                               ; preds = %33, %26
  %41 = phi i64 [ %32, %26 ], [ %39, %33 ]
  store i64 %41, i64* %8, align 8
  %42 = load i32, i32* %6, align 4
  %43 = call i64 @CISS_IS_PHYSICAL(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %40
  %46 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %47 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %46, i32 0, i32 2
  %48 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i64 @CISS_CAM_TO_PBUS(i32 %49)
  %51 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %48, i64 %50
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 1
  br i1 %58, label %59, label %69

59:                                               ; preds = %45
  %60 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %61 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %62 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 8
  %66 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %67 = bitcast %struct.ccb_scsiio* %66 to %union.ccb*
  %68 = call i32 @xpt_done(%union.ccb* %67)
  store i32 1, i32* %3, align 4
  br label %165

69:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %165

70:                                               ; preds = %40
  %71 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %72 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @CISS_LD_ONLINE, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %70
  %86 = load i32, i32* @CAM_SEL_TIMEOUT, align 4
  %87 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %88 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %86
  store i32 %91, i32* %89, align 8
  %92 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %93 = bitcast %struct.ccb_scsiio* %92 to %union.ccb*
  %94 = call i32 @xpt_done(%union.ccb* %93)
  store i32 1, i32* %3, align 4
  br label %165

95:                                               ; preds = %70
  %96 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %97 = getelementptr inbounds %struct.ciss_softc, %struct.ciss_softc* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @CISS_FLAG_FAKE_SYNCH, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %141

102:                                              ; preds = %95
  %103 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %104 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %103, i32 0, i32 2
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CAM_CDB_POINTER, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %102
  %111 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %112 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = inttoptr i64 %114 to i64*
  %116 = load i64, i64* %115, align 8
  br label %124

117:                                              ; preds = %102
  %118 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %119 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %118, i32 0, i32 3
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  br label %124

124:                                              ; preds = %117, %110
  %125 = phi i64 [ %116, %110 ], [ %123, %117 ]
  %126 = load i64, i64* @SYNCHRONIZE_CACHE, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %140

128:                                              ; preds = %124
  %129 = load %struct.ciss_softc*, %struct.ciss_softc** %4, align 8
  %130 = call i32 @ciss_flush_adapter(%struct.ciss_softc* %129)
  %131 = load i32, i32* @CAM_REQ_CMP, align 4
  %132 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %133 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %132, i32 0, i32 2
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = or i32 %135, %131
  store i32 %136, i32* %134, align 8
  %137 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %138 = bitcast %struct.ccb_scsiio* %137 to %union.ccb*
  %139 = call i32 @xpt_done(%union.ccb* %138)
  store i32 1, i32* %3, align 4
  br label %165

140:                                              ; preds = %124
  br label %141

141:                                              ; preds = %140, %95
  %142 = load i64, i64* %8, align 8
  %143 = load i64, i64* @REPORT_LUNS, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %164

145:                                              ; preds = %141
  %146 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %147 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = icmp sgt i64 %148, 0
  br i1 %149, label %150, label %164

150:                                              ; preds = %145
  %151 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %152 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %151, i32 0, i32 1
  %153 = load i32*, i32** %152, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 3
  store i32 8, i32* %154, align 4
  %155 = load i32, i32* @CAM_REQ_CMP, align 4
  %156 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %157 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = or i32 %159, %155
  store i32 %160, i32* %158, align 8
  %161 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %162 = bitcast %struct.ccb_scsiio* %161 to %union.ccb*
  %163 = call i32 @xpt_done(%union.ccb* %162)
  store i32 1, i32* %3, align 4
  br label %165

164:                                              ; preds = %145, %141
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %150, %128, %85, %69, %59
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local i32 @cam_sim_bus(i32) #1

declare dso_local i32 @xpt_path_sim(i32) #1

declare dso_local i64 @CISS_IS_PHYSICAL(i32) #1

declare dso_local i64 @CISS_CAM_TO_PBUS(i32) #1

declare dso_local i32 @xpt_done(%union.ccb*) #1

declare dso_local i32 @ciss_flush_adapter(%struct.ciss_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
