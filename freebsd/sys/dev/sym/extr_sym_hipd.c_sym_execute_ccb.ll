; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_execute_ccb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sym/extr_sym_hipd.c_sym_execute_ccb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32*, i64, i32, i32, %union.ccb*, i64 }
%union.ccb = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_18__ = type { i64, i32, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@CAM_REQ_INPROG = common dso_local global i64 0, align 8
@CAM_REQ_ABORTED = common dso_local global i32 0, align 4
@PCI_ID_SYM53C896 = common dso_local global i64 0, align 8
@CAM_REQ_TOO_BIG = common dso_local global i32 0, align 4
@SYM_DMA_READ = common dso_local global i64 0, align 8
@BUS_DMASYNC_PREREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@HS_NEGOTIATE = common dso_local global i32 0, align 4
@HS_BUSY = common dso_local global i32 0, align 4
@CAM_DIR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32, i32)* @sym_execute_ccb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_execute_ccb(i8* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_19__*, align 8
  %10 = alloca %struct.TYPE_18__*, align 8
  %11 = alloca %union.ccb*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %14, %struct.TYPE_19__** %9, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 5
  %17 = load %union.ccb*, %union.ccb** %16, align 8
  store %union.ccb* %17, %union.ccb** %11, align 8
  %18 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %21, %struct.TYPE_18__** %10, align 8
  %22 = load i32, i32* @MA_OWNED, align 4
  %23 = call i32 @SYM_LOCK_ASSERT(i32 %22)
  %24 = load %union.ccb*, %union.ccb** %11, align 8
  %25 = call i64 @sym_get_cam_status(%union.ccb* %24)
  %26 = load i64, i64* @CAM_REQ_INPROG, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %4
  br label %127

29:                                               ; preds = %4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %29
  %33 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 5
  %37 = load %union.ccb*, %union.ccb** %36, align 8
  %38 = load i32, i32* @CAM_REQ_ABORTED, align 4
  %39 = call i32 @sym_set_cam_status(%union.ccb* %37, i32 %38)
  br label %127

40:                                               ; preds = %29
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %40
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCI_ID_SYM53C896, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp sle i32 %52, 1
  br i1 %53, label %54, label %60

54:                                               ; preds = %49
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @sym_scatter_sg_physical(%struct.TYPE_18__* %55, %struct.TYPE_19__* %56, i32* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %66

60:                                               ; preds = %49, %43
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %63 = load i32*, i32** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @sym_fast_scatter_sg_physical(%struct.TYPE_18__* %61, %struct.TYPE_19__* %62, i32* %63, i32 %64)
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %60, %54
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %70, i32 0, i32 5
  %72 = load %union.ccb*, %union.ccb** %71, align 8
  %73 = load i32, i32* @CAM_REQ_TOO_BIG, align 4
  %74 = call i32 @sym_set_cam_status(%union.ccb* %72, i32 %73)
  br label %127

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %100

81:                                               ; preds = %76
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %89 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @SYM_DMA_READ, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %81
  %94 = load i32, i32* @BUS_DMASYNC_PREREAD, align 4
  br label %97

95:                                               ; preds = %81
  %96 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 @bus_dmamap_sync(i32 %84, i32 %87, i32 %98)
  br label %100

100:                                              ; preds = %97, %76
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %100
  %106 = load i32, i32* @HS_NEGOTIATE, align 4
  br label %109

107:                                              ; preds = %100
  %108 = load i32, i32* @HS_BUSY, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %111, i32 0, i32 3
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %114 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %115 = load %union.ccb*, %union.ccb** %11, align 8
  %116 = bitcast %union.ccb* %115 to %struct.TYPE_17__*
  %117 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @CAM_DIR_MASK, align 4
  %120 = and i32 %118, %119
  %121 = call i32 @sym_setup_data_pointers(%struct.TYPE_18__* %113, %struct.TYPE_19__* %114, i32 %120)
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %123 = call i32 @sym_enqueue_cam_ccb(%struct.TYPE_19__* %122)
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %125 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %126 = call i32 @sym_put_start_queue(%struct.TYPE_18__* %124, %struct.TYPE_19__* %125)
  br label %135

127:                                              ; preds = %69, %32, %28
  %128 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %129 = load %union.ccb*, %union.ccb** %11, align 8
  %130 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %131 = call i32 @sym_xpt_done(%struct.TYPE_18__* %128, %union.ccb* %129, %struct.TYPE_19__* %130)
  %132 = load %struct.TYPE_18__*, %struct.TYPE_18__** %10, align 8
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %9, align 8
  %134 = call i32 @sym_free_ccb(%struct.TYPE_18__* %132, %struct.TYPE_19__* %133)
  br label %135

135:                                              ; preds = %127, %109
  ret void
}

declare dso_local i32 @SYM_LOCK_ASSERT(i32) #1

declare dso_local i64 @sym_get_cam_status(%union.ccb*) #1

declare dso_local i32 @sym_set_cam_status(%union.ccb*, i32) #1

declare dso_local i32 @sym_scatter_sg_physical(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @sym_fast_scatter_sg_physical(%struct.TYPE_18__*, %struct.TYPE_19__*, i32*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @sym_setup_data_pointers(%struct.TYPE_18__*, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @sym_enqueue_cam_ccb(%struct.TYPE_19__*) #1

declare dso_local i32 @sym_put_start_queue(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

declare dso_local i32 @sym_xpt_done(%struct.TYPE_18__*, %union.ccb*, %struct.TYPE_19__*) #1

declare dso_local i32 @sym_free_ccb(%struct.TYPE_18__*, %struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
