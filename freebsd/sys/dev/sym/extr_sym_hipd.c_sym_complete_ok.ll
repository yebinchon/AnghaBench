; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_complete_ok.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_complete_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_20__ = type { i32, %struct.TYPE_19__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64, i64, i64, i32, i32, %struct.TYPE_18__, i32, %struct.TYPE_16__* }
%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { %struct.ccb_scsiio }
%struct.ccb_scsiio = type { i32, i64 }
%union.ccb = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@HS_COMPLETE = common dso_local global i64 0, align 8
@SYM_CONF_RESIDUAL_SUPPORT = common dso_local global i32 0, align 4
@SYM_DMA_READ = common dso_local global i64 0, align 8
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@CAM_REQ_CMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_20__*, %struct.TYPE_21__*)* @sym_complete_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_complete_ok(%struct.TYPE_20__* %0, %struct.TYPE_21__* %1) #0 {
  %3 = alloca %struct.TYPE_20__*, align 8
  %4 = alloca %struct.TYPE_21__*, align 8
  %5 = alloca %struct.ccb_scsiio*, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %3, align 8
  store %struct.TYPE_21__* %1, %struct.TYPE_21__** %4, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @SYM_LOCK_ASSERT(i32 %8)
  %10 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %11 = icmp ne %struct.TYPE_21__* %10, null
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %13, i32 0, i32 7
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  %16 = icmp ne %struct.TYPE_16__* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %12, %2
  br label %120

18:                                               ; preds = %12
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @HS_COMPLETE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @assert(i32 %24)
  %26 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %26, i32 0, i32 7
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  store %struct.ccb_scsiio* %29, %struct.ccb_scsiio** %5, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %31, align 8
  %33 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i64 %35
  store %struct.TYPE_19__* %36, %struct.TYPE_19__** %6, align 8
  %37 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sym_lp(%struct.TYPE_19__* %37, i32 %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %18
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @sym_set_bit(i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %44, %18
  %53 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %54 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %53, i32 0, i32 1
  store i64 0, i64* %54, align 8
  %55 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %56 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %60, i32 0, i32 5
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %59, %64
  br i1 %65, label %66, label %72

66:                                               ; preds = %52
  %67 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %68 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %69 = call i64 @sym_compute_residual(%struct.TYPE_20__* %67, %struct.TYPE_21__* %68)
  %70 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %71 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %70, i32 0, i32 1
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %66, %52
  %73 = load i32, i32* @SYM_CONF_RESIDUAL_SUPPORT, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %72
  %76 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %77 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %76, i32 0, i32 1
  store i64 0, i64* %77, align 8
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %78
  %84 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @SYM_DMA_READ, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %83
  %96 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  br label %99

97:                                               ; preds = %83
  %98 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = call i32 @bus_dmamap_sync(i32 %86, i32 %89, i32 %100)
  br label %102

102:                                              ; preds = %99, %78
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %107 = getelementptr inbounds %struct.ccb_scsiio, %struct.ccb_scsiio* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %109 = bitcast %struct.ccb_scsiio* %108 to %union.ccb*
  %110 = load i32, i32* @CAM_REQ_CMP, align 4
  %111 = call i32 @sym_set_cam_status(%union.ccb* %109, i32 %110)
  %112 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %113 = load %struct.ccb_scsiio*, %struct.ccb_scsiio** %5, align 8
  %114 = bitcast %struct.ccb_scsiio* %113 to %union.ccb*
  %115 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %116 = call i32 @sym_xpt_done(%struct.TYPE_20__* %112, %union.ccb* %114, %struct.TYPE_21__* %115)
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %3, align 8
  %118 = load %struct.TYPE_21__*, %struct.TYPE_21__** %4, align 8
  %119 = call i32 @sym_free_ccb(%struct.TYPE_20__* %117, %struct.TYPE_21__* %118)
  br label %120

120:                                              ; preds = %102, %17
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sym_lp(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @sym_set_bit(i32, i32) #1

declare dso_local i64 @sym_compute_residual(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @sym_set_cam_status(%union.ccb*, i32) #1

declare dso_local i32 @sym_xpt_done(%struct.TYPE_20__*, %union.ccb*, %struct.TYPE_21__*) #1

declare dso_local i32 @sym_free_ccb(%struct.TYPE_20__*, %struct.TYPE_21__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
